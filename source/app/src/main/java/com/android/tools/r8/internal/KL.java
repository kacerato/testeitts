package com.android.tools.r8.internal;

import java.util.Arrays;

public final class KL implements InterfaceC9597tW {

    public final int f41639a;

    public final int[] f41640b;

    public final int[] f41641c;

    public final String[] f41642d;

    public final String[] f41643e;

    public final String f41644f;

    public final String f41645g;

    public final int f41646h;

    public KL(int i10, int[] iArr, int[] iArr2, String[] strArr, String[] strArr2, String str, String str2, int i11) {
        this.f41639a = i10;
        this.f41640b = iArr;
        this.f41641c = iArr2;
        this.f41642d = strArr;
        this.f41643e = strArr2;
        this.f41644f = str;
        this.f41645g = str2;
        this.f41646h = i11;
    }

    @Override
    public final Class annotationType() {
        return InterfaceC9597tW.class;
    }

    @Override
    public final int[] bv() {
        return this.f41641c;
    }

    @Override
    public final String[] d1() {
        return this.f41642d;
    }

    @Override
    public final String[] d2() {
        return this.f41643e;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC9597tW)) {
            return false;
        }
        InterfaceC9597tW interfaceC9597tW = (InterfaceC9597tW) obj;
        return this.f41639a == interfaceC9597tW.k() && Arrays.equals(this.f41640b, interfaceC9597tW.mv()) && Arrays.equals(this.f41641c, interfaceC9597tW.bv()) && Arrays.equals(this.f41642d, interfaceC9597tW.d1()) && Arrays.equals(this.f41643e, interfaceC9597tW.d2()) && GJ.a((Object) this.f41644f, (Object) interfaceC9597tW.xs()) && GJ.a((Object) this.f41645g, (Object) interfaceC9597tW.pn()) && this.f41646h == interfaceC9597tW.xi();
    }

    @Override
    public final int hashCode() {
        return (Integer.hashCode(this.f41639a) ^ 418090604) + (Arrays.hashCode(this.f41640b) ^ (-1975239209)) + (Arrays.hashCode(this.f41641c) ^ (-2059602595)) + (Arrays.hashCode(this.f41642d) ^ (-774644295)) + (Arrays.hashCode(this.f41643e) ^ (-774644168)) + (this.f41644f.hashCode() ^ 1642302527) + (this.f41645g.hashCode() ^ (-551720817)) + (Integer.hashCode(this.f41646h) ^ (-2147447359));
    }

    @Override
    public final int k() {
        return this.f41639a;
    }

    @Override
    public final int[] mv() {
        return this.f41640b;
    }

    @Override
    public final String pn() {
        return this.f41645g;
    }

    @Override
    public final String toString() {
        return "@kotlin.Metadata(kind=" + this.f41639a + ", metadataVersion=" + Arrays.toString(this.f41640b) + ", bytecodeVersion=" + Arrays.toString(this.f41641c) + ", data1=" + Arrays.toString(this.f41642d) + ", data2=" + Arrays.toString(this.f41643e) + ", extraString=" + this.f41644f + ", packageName=" + this.f41645g + ", extraInt=" + this.f41646h + ')';
    }

    @Override
    public final int xi() {
        return this.f41646h;
    }

    @Override
    public final String xs() {
        return this.f41644f;
    }
}
