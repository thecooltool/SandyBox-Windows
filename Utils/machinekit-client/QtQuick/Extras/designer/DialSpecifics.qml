/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the Qt Quick Extras module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL3$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPLv3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or later as published by the Free
** Software Foundation and appearing in the file LICENSE.GPL included in
** the packaging of this file. Please review the following information to
** ensure the GNU General Public License version 2.0 requirements will be
** met: http://www.gnu.org/licenses/gpl-2.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.1
import HelperWidgets 2.0
import QtQuick.Layouts 1.0

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Dial")

        SectionLayout {
            Label {
                text: qsTr("Value")
                tooltip: qsTr("Value")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.value
                    minimumValue: backendValues.minimumValue.value
                    maximumValue: backendValues.maximumValue.value
                    stepSize: 0.01
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Minimum Value")
                tooltip: qsTr("Minimum Value")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.minimumValue
                    minimumValue: -1000
                    maximumValue: backendValues.maximumValue.value
                    stepSize: 0.01
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Maximum Value")
                tooltip: qsTr("Maximum Value")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.maximumValue
                    minimumValue: backendValues.minimumValue.value
                    maximumValue: 1000
                    stepSize: 0.01
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Step Size")
                tooltip: qsTr("Step Size")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.stepSize
                    minimumValue: 0
                    maximumValue: backendValues.maximumValue.value
                    stepSize: 0.01
                    decimals: 2
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Tickmarks Visible")
                tooltip: qsTr("Tickmarks Visible")
            }
            SecondColumnLayout {
                CheckBox {
                    backendValue: backendValues.tickmarksVisible
                }
                ExpandingSpacer {
                }
            }
        }
    }
}
