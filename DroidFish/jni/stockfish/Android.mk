LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := stockfish
LOCAL_SRC_FILES := \
	evaluate.cpp  move.cpp      search.cpp \
	benchmark.cpp    movegen.cpp   tt.cpp \
	bitbase.cpp      main.cpp      movepick.cpp  uci.cpp \
	bitboard.cpp     pawns.cpp     ucioption.cpp \
	book.cpp         material.cpp  position.cpp \
	endgame.cpp      misc.cpp      timeman.cpp   thread.cpp

LOCAL_CFLAGS    := -DNO_PREFETCH=1

LOCAL_STATIC_LIBRARIES := stlport

include $(BUILD_EXECUTABLE)
