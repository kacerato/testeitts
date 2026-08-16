package com.github.javaparser;

import java.io.IOException;

public class StringProvider implements Provider {
    private final int m_nLen;
    private int m_nPos = 0;
    private String m_sStr;

    public StringProvider(final String sStr) {
        this.m_sStr = sStr;
        this.m_nLen = sStr.length();
    }

    @Override
    public void close() {
        this.m_sStr = null;
    }

    @Override
    public int read(final char[] aDest, final int nOfs, final int nLen) throws IOException {
        int i10 = this.m_nLen;
        int i11 = this.m_nPos;
        int i12 = i10 - i11;
        if (i12 <= 0) {
            return -1;
        }
        int length = aDest.length - nOfs;
        if (nLen >= length) {
            nLen = length;
        }
        if (i12 >= nLen) {
            i12 = nLen;
        }
        this.m_sStr.getChars(i11, i11 + i12, aDest, nOfs);
        this.m_nPos += i12;
        return i12;
    }
}
