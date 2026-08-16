package com.android.tools.r8.internal;

public final class IP extends JP {

    public final String f41078a;

    public final int f41079b;

    public final String f41080c;

    public IP(int i10, String str) {
        GJ.c(str, "className");
        this.f41078a = str;
        this.f41079b = i10;
        if (i10 <= 0) {
            throw new IllegalArgumentException("ArrayKClassValue must have at least one dimension. For regular X::class argument, use KClassValue.");
        }
        StringBuilder sb2 = new StringBuilder("ArrayKClassValue(");
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("kotlin/Array<");
        }
        sb2.append(this.f41078a);
        int i12 = this.f41079b;
        for (int i13 = 0; i13 < i12; i13++) {
            sb2.append(">");
        }
        sb2.append(")");
        this.f41080c = sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IP)) {
            return false;
        }
        IP ip = (IP) obj;
        return GJ.a((Object) this.f41078a, (Object) ip.f41078a) && this.f41079b == ip.f41079b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f41079b) + (this.f41078a.hashCode() * 31);
    }

    @Override
    public final String toString() {
        return this.f41080c;
    }
}
