package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\bR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b \u0010\u0014R\u0017\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0014R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%X\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0014\u00a8\u0006("}, d2 = {"Lkotlin/metadata/KmTypeAlias;", "", "flags", "", "name", "", ConstantDescs.INIT_NAME, "(ILjava/lang/String;)V", "(Ljava/lang/String;)V", "getFlags$kotlin_metadata", "()I", "setFlags$kotlin_metadata", "(I)V", "getName", "()Ljava/lang/String;", "setName", "typeParameters", "", "Lkotlin/metadata/KmTypeParameter;", "getTypeParameters", "()Ljava/util/List;", "underlyingType", "Lkotlin/metadata/KmType;", "getUnderlyingType", "()Lkotlin/metadata/KmType;", "setUnderlyingType", "(Lkotlin/metadata/KmType;)V", "expandedType", "getExpandedType", "setExpandedType", "annotations", "Lkotlin/metadata/KmAnnotation;", "getAnnotations", "versionRequirements", "Lkotlin/metadata/KmVersionRequirement;", "getVersionRequirements", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmTypeAliasExtension;", "getExtensions$kotlin_metadata", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C10587zQ {

    public int f54374a;

    public final String f54375b;

    public C10420yQ f54377d;

    public C10420yQ f54378e;

    public final ArrayList f54376c = new ArrayList(0);

    public final ArrayList f54379f = new ArrayList(0);

    public final ArrayList f54380g = new ArrayList(0);

    public C10587zQ(int i10, String str) {
        this.f54374a = i10;
        this.f54375b = str;
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        new ArrayList();
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC10432yW) it.next()).getClass();
        }
    }

    public final void a(C10420yQ c10420yQ) {
        GJ.c(c10420yQ, "<set-?>");
        this.f54378e = c10420yQ;
    }

    public final String b() {
        return this.f54375b;
    }

    public final List<BQ> c() {
        return this.f54376c;
    }

    public final List<GP> a() {
        return this.f54379f;
    }

    public final void b(C10420yQ c10420yQ) {
        GJ.c(c10420yQ, "<set-?>");
        this.f54377d = c10420yQ;
    }
}
