package com.google.android.gms.internal.measurement;

import org.apache.commons.math3.geometry.VectorFormat;

public final class Y extends AbstractC12059f0 {

    public final String f62173c;

    public final int f62174d;

    public final int f62175e;

    public Y(String str, boolean z10, int i10, V v10, W w10, int i11, byte[] bArr) {
        this.f62173c = str;
        this.f62174d = i10;
        this.f62175e = i11;
    }

    @Override
    public final String a() {
        return this.f62173c;
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final V c() {
        return null;
    }

    @Override
    public final W d() {
        return null;
    }

    @Override
    public final int e() {
        return this.f62174d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC12059f0) {
            AbstractC12059f0 abstractC12059f0 = (AbstractC12059f0) obj;
            if (this.f62173c.equals(abstractC12059f0.a())) {
                abstractC12059f0.b();
                int i10 = this.f62174d;
                int e10 = abstractC12059f0.e();
                if (i10 == 0) {
                    throw null;
                }
                if (i10 == e10) {
                    abstractC12059f0.c();
                    abstractC12059f0.d();
                    int i11 = this.f62175e;
                    int f10 = abstractC12059f0.f();
                    if (i11 == 0) {
                        throw null;
                    }
                    if (f10 == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public final int f() {
        return this.f62175e;
    }

    public final int hashCode() {
        int hashCode = this.f62173c.hashCode() ^ 1000003;
        int i10 = this.f62174d;
        if (i10 == 0) {
            throw null;
        }
        int i11 = (((hashCode * 1000003) ^ 1237) * 1000003) ^ i10;
        if (this.f62175e != 0) {
            return (i11 * 583896283) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        int i10 = this.f62174d;
        String str = i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? "null" : "NO_CHECKS" : "SKIP_SECURITY_CHECK" : "SKIP_COMPLIANCE_CHECK" : "ALL_CHECKS";
        String str2 = this.f62175e == 1 ? "READ_AND_WRITE" : "null";
        String str3 = this.f62173c;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 73 + str.length() + 91 + str2.length() + 1);
        sb2.append("FileComplianceOptions{fileOwner=");
        sb2.append(str3);
        sb2.append(", hasDifferentDmaOwner=false, fileChecks=");
        sb2.append(str);
        sb2.append(", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=");
        sb2.append(str2);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }
}
