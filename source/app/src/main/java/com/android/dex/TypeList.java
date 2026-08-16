package com.android.dex;

import com.android.dex.util.Unsigned;

public final class TypeList implements Comparable<TypeList> {
    public static final TypeList EMPTY = new TypeList(null, Dex.EMPTY_SHORT_ARRAY);
    private final Dex dex;
    private final short[] types;

    public TypeList(Dex dex, short[] sArr) {
        this.dex = dex;
        this.types = sArr;
    }

    public short[] getTypes() {
        return this.types;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        int length = this.types.length;
        for (int i10 = 0; i10 < length; i10++) {
            Dex dex = this.dex;
            sb2.append(dex != null ? dex.typeNames().get(this.types[i10]) : Short.valueOf(this.types[i10]));
        }
        sb2.append(")");
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
    
        return com.android.dex.util.Unsigned.compare(r1.length, r5.types.length);
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int compareTo(TypeList typeList) {
        int i10 = 0;
        while (true) {
            short[] sArr = this.types;
            if (i10 >= sArr.length) {
                break;
            }
            short[] sArr2 = typeList.types;
            if (i10 >= sArr2.length) {
                break;
            }
            short s10 = sArr[i10];
            short s11 = sArr2[i10];
            if (s10 != s11) {
                return Unsigned.compare(s10, s11);
            }
            i10++;
        }
    }
}
