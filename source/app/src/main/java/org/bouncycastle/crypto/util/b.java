package org.bouncycastle.crypto.util;

import Bi.InterfaceC2369a;
import java.util.HashMap;
import java.util.Map;

public class b implements InterfaceC2369a {

    public Map<Character, Integer> f101046a;

    public Map<Integer, Character> f101047b;

    public b(String str) {
        this(str.toCharArray());
    }

    @Override
    public byte[] a(char[] cArr) {
        byte[] bArr;
        int i10 = 0;
        if (this.f101046a.size() <= 256) {
            bArr = new byte[cArr.length];
            while (i10 != cArr.length) {
                bArr[i10] = this.f101046a.get(Character.valueOf(cArr[i10])).byteValue();
                i10++;
            }
        } else {
            bArr = new byte[cArr.length * 2];
            while (i10 != cArr.length) {
                int intValue = this.f101046a.get(Character.valueOf(cArr[i10])).intValue();
                int i11 = i10 * 2;
                bArr[i11] = (byte) ((intValue >> 8) & 255);
                bArr[i11 + 1] = (byte) (intValue & 255);
                i10++;
            }
        }
        return bArr;
    }

    @Override
    public int b() {
        return this.f101046a.size();
    }

    @Override
    public char[] c(byte[] bArr) {
        char[] cArr;
        int i10 = 0;
        if (this.f101047b.size() <= 256) {
            cArr = new char[bArr.length];
            while (i10 != bArr.length) {
                cArr[i10] = this.f101047b.get(Integer.valueOf(bArr[i10] & 255)).charValue();
                i10++;
            }
        } else {
            if ((bArr.length & 1) != 0) {
                throw new IllegalArgumentException("two byte radix and input string odd length");
            }
            cArr = new char[bArr.length / 2];
            while (i10 != bArr.length) {
                cArr[i10 / 2] = this.f101047b.get(Integer.valueOf(((bArr[i10] << 8) & 65280) | (bArr[i10 + 1] & 255))).charValue();
                i10 += 2;
            }
        }
        return cArr;
    }

    public b(char[] cArr) {
        this.f101046a = new HashMap();
        this.f101047b = new HashMap();
        for (int i10 = 0; i10 != cArr.length; i10++) {
            if (this.f101046a.containsKey(Character.valueOf(cArr[i10]))) {
                throw new IllegalArgumentException("duplicate key detected in alphabet: " + cArr[i10]);
            }
            this.f101046a.put(Character.valueOf(cArr[i10]), Integer.valueOf(i10));
            this.f101047b.put(Integer.valueOf(i10), Character.valueOf(cArr[i10]));
        }
    }
}
