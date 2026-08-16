package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

@InterfaceC9597tW(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f\u00a8\u0006\u001b"}, d2 = {"Lkotlin/metadata/KmTypeProjection;", "", "variance", "Lkotlin/metadata/KmVariance;", "type", "Lkotlin/metadata/KmType;", ConstantDescs.INIT_NAME, "(Lkotlin/metadata/KmVariance;Lkotlin/metadata/KmType;)V", "getVariance", "()Lkotlin/metadata/KmVariance;", "setVariance", "(Lkotlin/metadata/KmVariance;)V", "getType", "()Lkotlin/metadata/KmType;", "setType", "(Lkotlin/metadata/KmType;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DQ {

    public static final DQ f39511c = new DQ(null, null);

    public final FQ f39512a;

    public final C10420yQ f39513b;

    public DQ(FQ fq, C10420yQ c10420yQ) {
        this.f39512a = fq;
        this.f39513b = c10420yQ;
    }

    public final C10420yQ a() {
        return this.f39513b;
    }

    public final FQ b() {
        return this.f39512a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DQ)) {
            return false;
        }
        DQ dq = (DQ) obj;
        return this.f39512a == dq.f39512a && GJ.a(this.f39513b, dq.f39513b);
    }

    public final int hashCode() {
        FQ fq = this.f39512a;
        int hashCode = (fq == null ? 0 : fq.hashCode()) * 31;
        C10420yQ c10420yQ = this.f39513b;
        return hashCode + (c10420yQ != null ? c10420yQ.hashCode() : 0);
    }

    public final String toString() {
        return "KmTypeProjection(variance=" + ((Object) this.f39512a) + ", type=" + ((Object) this.f39513b) + ')';
    }
}
