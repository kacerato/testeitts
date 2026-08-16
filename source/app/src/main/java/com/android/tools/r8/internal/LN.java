package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.ArrayList;
import java.util.Objects;

public final class LN extends IN {

    public static final boolean f41943g = true;

    public final String f41944c;

    public final String f41945d;

    public final String f41946e;

    public final ArrayList f41947f;

    public LN(String str, String str2, String str3, ArrayList arrayList) {
        boolean z10 = f41943g;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && str2 == null) {
            throw new AssertionError();
        }
        this.f41944c = str;
        this.f41945d = str2;
        this.f41946e = str3;
        this.f41947f = arrayList;
    }

    @Override
    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f41944c);
        sb2.append(this.f41945d);
        sb2.append('(');
        ArrayList arrayList = this.f41947f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            sb2.append((String) obj);
        }
        sb2.append(')');
        sb2.append(this.f41946e);
        return sb2.toString();
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LN)) {
            return false;
        }
        LN ln2 = (LN) obj;
        return this.f41944c.equals(ln2.f41944c) && this.f41945d.equals(ln2.f41945d) && this.f41946e.equals(ln2.f41946e) && this.f41947f.equals(ln2.f41947f);
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f41944c, this.f41945d, this.f41946e, this.f41947f);
    }

    @Override
    public final KeepSpecProtos.Context.Builder a(KeepSpecProtos.Context.Builder builder) {
        KeepSpecProtos.MethodDesc.Builder returnType = KeepSpecProtos.MethodDesc.newBuilder().setHolder(KeepSpecProtos.TypeDesc.newBuilder().setDesc(this.f41944c).build()).setName(this.f41945d).setReturnType(KeepSpecProtos.TypeDesc.newBuilder().setDesc(this.f41946e).build());
        ArrayList arrayList = this.f41947f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            returnType.addParameterTypes(KeepSpecProtos.TypeDesc.newBuilder().setDesc((String) obj).build());
        }
        return builder.setMethodDesc(returnType.build());
    }
}
