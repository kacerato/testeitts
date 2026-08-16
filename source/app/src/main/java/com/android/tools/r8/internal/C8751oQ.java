package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

@InterfaceC9597tW(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f\u00a8\u0006\u001a"}, d2 = {"Lkotlin/metadata/KmFlexibleTypeUpperBound;", "", "type", "Lkotlin/metadata/KmType;", "typeFlexibilityId", "", ConstantDescs.INIT_NAME, "(Lkotlin/metadata/KmType;Ljava/lang/String;)V", "getType", "()Lkotlin/metadata/KmType;", "setType", "(Lkotlin/metadata/KmType;)V", "getTypeFlexibilityId", "()Ljava/lang/String;", "setTypeFlexibilityId", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C8751oQ {

    public final C10420yQ f51242a;

    public final String f51243b;

    public C8751oQ(C10420yQ c10420yQ, String str) {
        GJ.c(c10420yQ, "type");
        this.f51242a = c10420yQ;
        this.f51243b = str;
    }

    public final C10420yQ a() {
        return this.f51242a;
    }

    public final String b() {
        return this.f51243b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8751oQ)) {
            return false;
        }
        C8751oQ c8751oQ = (C8751oQ) obj;
        return GJ.a(this.f51242a, c8751oQ.f51242a) && GJ.a((Object) this.f51243b, (Object) c8751oQ.f51243b);
    }

    public final int hashCode() {
        int hashCode = this.f51242a.hashCode() * 31;
        String str = this.f51243b;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "KmFlexibleTypeUpperBound(type=" + ((Object) this.f51242a) + ", typeFlexibilityId=" + this.f51243b + ')';
    }
}
