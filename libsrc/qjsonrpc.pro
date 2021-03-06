################################################################################
#   Targoman: A robust Machine Translation framework
#
#   Copyright 2014-2018 by ITRC <http://itrc.ac.ir>
#
#   This file is part of Targoman.
#
#   Targoman is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Lesser General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   Targoman is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Lesser General Public License for more details.
#
#   You should have received a copy of the GNU Lesser General Public License
#   along with Targoman. If not, see <http://www.gnu.org/licenses/>.
################################################################################

# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-#
HEADERS += \
    libQJsonRPC/Private/qjsonrpcservice_p.h \
    libQJsonRPC/Private/qjsonrpcsocket_p.h \
    libQJsonRPC/Private/qjsonrpcabstractserver_p.h \
    libQJsonRPC/Private/qjsonrpcservicereply_p.h \
    libQJsonRPC/Private/qjsonrpchttpserver_p.h \
    libQJsonRPC/Private/http-parser/http_parser.h \
    libQJsonRPC/qjsonrpcmessage.h \
    libQJsonRPC/qjsonrpcservice.h \
    libQJsonRPC/qjsonrpcsocket.h \
    libQJsonRPC/qjsonrpcserviceprovider.h \
    libQJsonRPC/qjsonrpcabstractserver.h \
    libQJsonRPC/qjsonrpclocalserver.h \
    libQJsonRPC/qjsonrpctcpserver.h \
    libQJsonRPC/qjsonrpcglobal.h \
    libQJsonRPC/qjsonrpcservicereply.h \
    libQJsonRPC/qjsonrpchttpclient.h \
    libQJsonRPC/qjsonrpchttpserver.h \
    libQJsonRPC/qjsonrpchttpservermultithreaded.h \
    libQJsonRPC/Private/qjsonrpchttpservermultithreaded_p.h


# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-#
SOURCES += \
    libQJsonRPC/qjsonrpcmessage.cpp \
    libQJsonRPC/qjsonrpcservice.cpp \
    libQJsonRPC/qjsonrpcsocket.cpp \
    libQJsonRPC/qjsonrpcserviceprovider.cpp \
    libQJsonRPC/qjsonrpcabstractserver.cpp \
    libQJsonRPC/qjsonrpclocalserver.cpp \
    libQJsonRPC/qjsonrpctcpserver.cpp \
    libQJsonRPC/qjsonrpcservicereply.cpp \
    libQJsonRPC/qjsonrpchttpclient.cpp \
    libQJsonRPC/qjsonrpchttpserver.cpp \
    libQJsonRPC/Private/http-parser/http_parser.c \
    libQJsonRPC/qjsonrpchttpservermultithreaded.cpp

QT += core network
TEMPLATE = lib
CONFIG += staticlib private-headers
CONFIG(debug, debug|release): DEFINES += QJSONRPC_DEBUG=1

INCLUDEPATH += libQJsonRPC

