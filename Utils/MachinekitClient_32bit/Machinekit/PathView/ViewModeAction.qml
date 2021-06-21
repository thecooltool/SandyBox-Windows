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
    property var view: null
    property string viewMode: "Perspective"
    readonly property bool visible: status.synced ? !status.config.lathe : true

    id: root
    shortcut: "V"
    enabled: (view !== null) && (core !== null)
    checkable: true
    checked: (view !== null) && (view.viewMode === viewMode)
    text: {
        switch (viewMode) {
        case "Front":
            return qsTr("Front");
        case "Top":
            return qsTr("Top");
        case "RotatedTop":
            return qsTr("Rotated Top");
        case "Side":
            return qsTr("Side");
        case "Perspective":
            return qsTr("Perspective");
        default:
            return qsTr("Error");
        }
    }

    tooltip: {
        switch (viewMode) {
        case "Front":
            return qsTr("Front view");
        case "Top":
            return qsTr("Top view");
        case "RotatedTop":
            return qsTr("Rotated top view");
        case "Side":
            return qsTr("Side view");
        case "Perspective":
            return qsTr("Perspective");
        default:
            return qsTr("Error");
        }
    }

    iconSource: {
        switch (viewMode) {
        case "Front":
            return "qrc:Machinekit/PathView/icons/view-mode-front";
        case "Top":
            return "qrc:Machinekit/PathView/icons/view-mode-top";
        case "RotatedTop":
            return "qrc:Machinekit/PathView/icons/view-mode-rotated-top";
        case "Side":
            return "qrc:Machinekit/PathView/icons/view-mode-side";
        case "Perspective":
            return "qrc:Machinekit/PathView/icons/view-mode-perspective";
        default:
            return ""
        }
    }

    onTriggered: {
        if (view.viewMode !== viewMode) {
            view.viewMode = viewMode;
        }
    }
}
