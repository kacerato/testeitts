package com.jme3.shader;

import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import w2.C15883c;

public final class DefineList {
    static final boolean $assertionsDisabled = false;
    private final BitSet isSet;
    private final int[] values;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$shader$VarType;

        static {
            int[] iArr = new int[VarType.values().length];
            $SwitchMap$com$jme3$shader$VarType = iArr;
            try {
                iArr[VarType.Int.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Float.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Boolean.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DefineList(int i10) {
        if (i10 >= 0) {
            this.values = new int[i10];
            this.isSet = new BitSet(i10);
            return;
        }
        throw new IllegalArgumentException("numValues must be >= 0");
    }

    private void rangeCheck(int i10) {
    }

    public void clear() {
        this.isSet.clear();
        Arrays.fill(this.values, 0);
    }

    public DefineList deepClone() {
        return new DefineList(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != DefineList.class) {
            return false;
        }
        DefineList defineList = (DefineList) obj;
        if (this.values.length != defineList.values.length || !this.isSet.equals(defineList.isSet)) {
            return false;
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.values;
            if (i10 >= iArr.length) {
                return true;
            }
            if (iArr[i10] != defineList.values[i10]) {
                return false;
            }
            i10++;
        }
    }

    public void generateSource(StringBuilder sb2, List<String> list, List<VarType> list2) {
        for (int i10 = 0; i10 < this.values.length; i10++) {
            if (isSet(i10)) {
                sb2.append("#define ");
                sb2.append(list.get(i10));
                sb2.append(C15883c.f126249O);
                if (list2 != null && list2.get(i10) == VarType.Float) {
                    float intBitsToFloat = Float.intBitsToFloat(this.values[i10]);
                    if (!Float.isInfinite(intBitsToFloat) && !Float.isNaN(intBitsToFloat)) {
                        sb2.append(intBitsToFloat);
                    } else {
                        throw new IllegalArgumentException("GLSL does not support NaN or Infinite float literals");
                    }
                } else {
                    sb2.append(this.values[i10]);
                }
                sb2.append('\n');
            }
        }
    }

    public boolean getBoolean(int i10) {
        return this.values[i10] != 0;
    }

    public float getFloat(int i10) {
        return Float.intBitsToFloat(this.values[i10]);
    }

    public int getInt(int i10) {
        return this.values[i10];
    }

    public int hashCode() {
        return this.isSet.hashCode();
    }

    public boolean isSet(int i10) {
        rangeCheck(i10);
        return this.isSet.get(i10);
    }

    public void set(int i10, int i11) {
        rangeCheck(i10);
        this.isSet.set(i10, true);
        this.values[i10] = i11;
    }

    public void setAll(DefineList defineList) {
        for (int i10 = 0; i10 < defineList.values.length; i10++) {
            if (defineList.isSet(i10)) {
                set(i10, defineList.getInt(i10));
            }
        }
    }

    public void unset(int i10) {
        rangeCheck(i10);
        this.isSet.clear(i10);
        this.values[i10] = 0;
    }

    public void set(int i10, float f10) {
        set(i10, Float.floatToIntBits(f10));
    }

    private DefineList(DefineList defineList) {
        this.isSet = (BitSet) defineList.isSet.clone();
        int[] iArr = new int[defineList.values.length];
        this.values = iArr;
        System.arraycopy(defineList.values, 0, iArr, 0, iArr.length);
    }

    public void set(int i10, boolean z10) {
        if (z10) {
            set(i10, 1);
        } else {
            unset(i10);
        }
    }

    public void set(int i10, VarType varType, Object obj) {
        if (obj != null) {
            int i11 = AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[varType.ordinal()];
            if (i11 == 1) {
                set(i10, ((Integer) obj).intValue());
                return;
            }
            if (i11 == 2) {
                set(i10, ((Float) obj).floatValue());
                return;
            } else if (i11 != 3) {
                set(i10, 1);
                return;
            } else {
                set(i10, ((Boolean) obj).booleanValue());
                return;
            }
        }
        unset(i10);
    }

    public String generateSource(List<String> list, List<VarType> list2) {
        StringBuilder sb2 = new StringBuilder();
        generateSource(sb2, list, list2);
        return sb2.toString();
    }
}
