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
    property bool _ready: status.synced && command.connected && file.ready

    id: openAction
    text: qsTr("Reopen File")
    //iconName: "document-open"
    iconSource: "qrc:Machinekit/Application/Controls/icons/view-refresh"
    shortcut: "Ctrl+R"
    tooltip: qsTr("Reopen current file [%1]").arg(shortcut)
    onTriggered: core.reloadProgram()
    enabled: _ready
             && (status.task.file !== "")
             && !status.running
}
