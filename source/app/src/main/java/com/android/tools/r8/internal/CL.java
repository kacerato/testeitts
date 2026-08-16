package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

@InterfaceC9597tW(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\n\u001a\u00020\u0003H\u0016J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\f\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b\u00a8\u0006\u0014"}, d2 = {"Lkotlin/metadata/jvm/JvmFieldSignature;", "Lkotlin/metadata/jvm/JvmMemberSignature;", "name", "", "descriptor", ConstantDescs.INIT_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getDescriptor", "toString", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CL extends HL {

    public final String f39190a;

    public final String f39191b;

    public CL(String str, String str2) {
        GJ.c(str, "name");
        GJ.c(str2, "descriptor");
        this.f39190a = str;
        this.f39191b = str2;
    }

    public String a() {
        return this.f39190a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CL)) {
            return false;
        }
        CL cl2 = (CL) obj;
        return GJ.a((Object) this.f39190a, (Object) cl2.f39190a) && GJ.a((Object) this.f39191b, (Object) cl2.f39191b);
    }

    public final int hashCode() {
        return this.f39191b.hashCode() + (this.f39190a.hashCode() * 31);
    }

    public String toString() {
        return a() + ':' + this.f39191b;
    }
}
