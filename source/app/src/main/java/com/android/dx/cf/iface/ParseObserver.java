package com.android.dx.cf.iface;

import com.android.dx.util.ByteArray;

public interface ParseObserver {
    void changeIndent(int i10);

    void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member);

    void parsed(ByteArray byteArray, int i10, int i11, String str);

    void startParsingMember(ByteArray byteArray, int i10, String str, String str2);
}
