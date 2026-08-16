package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

@InterfaceC9597tW(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\n\u001a\u00020\u0003H\u0016J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\f\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b\u00a8\u0006\u0014"}, d2 = {"Lkotlin/metadata/jvm/JvmMethodSignature;", "Lkotlin/metadata/jvm/JvmMemberSignature;", "name", "", "descriptor", ConstantDescs.INIT_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getDescriptor", "toString", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OL extends HL {

    public final String f42857a;

    public final String f42858b;

    public OL(String str, String str2) {
        GJ.c(str, "name");
        GJ.c(str2, "descriptor");
        this.f42857a = str;
        this.f42858b = str2;
    }

    public String a() {
        return this.f42857a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OL)) {
            return false;
        }
        OL ol2 = (OL) obj;
        return GJ.a((Object) this.f42857a, (Object) ol2.f42857a) && GJ.a((Object) this.f42858b, (Object) ol2.f42858b);
    }

    public final int hashCode() {
        return this.f42858b.hashCode() + (this.f42857a.hashCode() * 31);
    }

    public String toString() {
        return a() + this.f42858b;
    }
}
