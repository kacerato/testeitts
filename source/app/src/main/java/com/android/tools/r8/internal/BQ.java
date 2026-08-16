package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B)\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u00a2\u0006\u0004\b\t\u0010\nB!\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u00a2\u0006\u0004\b\t\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001e\u00a8\u0006#"}, d2 = {"Lkotlin/metadata/KmTypeParameter;", "", "flags", "", "name", "", "id", "variance", "Lkotlin/metadata/KmVariance;", ConstantDescs.INIT_NAME, "(ILjava/lang/String;ILkotlin/metadata/KmVariance;)V", "(Ljava/lang/String;ILkotlin/metadata/KmVariance;)V", "getFlags$kotlin_metadata", "()I", "setFlags$kotlin_metadata", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getId", "setId", "getVariance", "()Lkotlin/metadata/KmVariance;", "setVariance", "(Lkotlin/metadata/KmVariance;)V", "upperBounds", "", "Lkotlin/metadata/KmType;", "getUpperBounds", "()Ljava/util/List;", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmTypeParameterExtension;", "getExtensions$kotlin_metadata", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BQ {

    public int f38895a;

    public final String f38896b;

    public final int f38897c;

    public final FQ f38898d;

    public final ArrayList f38899e;

    public final ArrayList f38900f;

    public BQ(int i10, String str, int i11, FQ fq) {
        GJ.c(fq, "variance");
        this.f38895a = i10;
        this.f38896b = str;
        this.f38897c = i11;
        this.f38898d = fq;
        this.f38899e = new ArrayList(1);
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            arrayList.add(new C9577tM());
        }
        this.f38900f = arrayList;
    }

    public final int a() {
        return this.f38897c;
    }

    public final String b() {
        return this.f38896b;
    }

    public final List<C10420yQ> c() {
        return this.f38899e;
    }

    public final FQ d() {
        return this.f38898d;
    }
}
