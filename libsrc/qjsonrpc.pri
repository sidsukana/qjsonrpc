!isEmpty(QJSONRPC_LIB):error("qjsonrpc.pri already included")
QJSONRPC_LIB = 1

#DEPENDS
CONFIG(release, debug|release): {
    QJSONRPC_LIB_OUTPUT_DIR="$$PWD/release"
} else {
    QJSONRPC_LIB_OUTPUT_DIR="$$PWD/debug"
}

lessThan (QT_MINOR_VERSION, 14): {
    unix: LIBS += -L$$QJSONRPC_LIB_OUTPUT_DIR -lqjsonrpc
    win32: LIBS += -L$$QJSONRPC_LIB_OUTPUT_DIR -lqjsonrpc
} else {
    LIBTENP = -L$$QJSONRPC_LIB_OUTPUT_DIR -lqjsonrpc
    win32: LIBTENP= -L$$QJSONRPC_LIB_OUTPUT_DIR -lqjsonrpc

    LIBS += $$LIBTENP
}

INCLUDEPATH += $$PWD
