/****************************************************************************
**
** Copyright (C) 2014 Alexander Rössler
** License: LGPL version 2.1
**
** This file is part of QtQuickVcp.
**
** All rights reserved. This program and the accompanying materials
** are made available under the terms of the GNU Lesser General Public License
** (LGPL) version 2.1 which accompanies this distribution, and is available at
** http://www.gnu.org/licenses/lgpl-2.1.html
**
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
** Lesser General Public License for more details.
**
** Contributors:
** Alexander Rössler @ The Cool Tool GmbH <mail DOT aroessler AT gmail DOT com>
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.Controls 1.2
import Machinekit.Application 1.0

ApplicationAction {
    property int axis: 0

    property bool _ready: status.synced && command.connected

    id: root
    text: qsTr("Unhome")
    shortcut: "Ctrl+Shift+Home"
    tooltip: qsTr("Unhome axis %1 [%2]").arg(axis).arg(shortcut)
    enabled: _ready
             && (status.task.taskState === ApplicationStatus.TaskStateOn)
             && !status.running

    onTriggered: {
        if (status.task.taskMode !== ApplicationStatus.TaskModeManual) {
            command.setTaskMode('execute', ApplicationCommand.TaskModeManual);
        }

        if (axis > -1) {
            command.unhomeAxis(axis);
        }
        else {
            for (var i = 0; i < status.config.axes; ++i) {
                if (status.motion.axis[i].homed) {
                    command.unhomeAxis(i);
                }
            }
        }
    }
}
