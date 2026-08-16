package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.IJavaModelMarker;

@InterfaceC9597tW(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016\u00a2\u0006\u0004\b\u0004\u0010\u0006J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010*\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$X\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0014\u00a8\u0006+"}, d2 = {"Lkotlin/metadata/KmType;", "", "flags", "", ConstantDescs.INIT_NAME, "(I)V", "()V", "getFlags$kotlin_metadata", "()I", "setFlags$kotlin_metadata", "classifier", "Lkotlin/metadata/KmClassifier;", "getClassifier", "()Lkotlin/metadata/KmClassifier;", "setClassifier", "(Lkotlin/metadata/KmClassifier;)V", IJavaModelMarker.ARGUMENTS, "", "Lkotlin/metadata/KmTypeProjection;", "getArguments", "()Ljava/util/List;", "abbreviatedType", "getAbbreviatedType", "()Lkotlin/metadata/KmType;", "setAbbreviatedType", "(Lkotlin/metadata/KmType;)V", "outerType", "getOuterType", "setOuterType", "flexibleTypeUpperBound", "Lkotlin/metadata/KmFlexibleTypeUpperBound;", "getFlexibleTypeUpperBound", "()Lkotlin/metadata/KmFlexibleTypeUpperBound;", "setFlexibleTypeUpperBound", "(Lkotlin/metadata/KmFlexibleTypeUpperBound;)V", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmTypeExtension;", "getExtensions$kotlin_metadata", "equals", "", "other", "hashCode", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C10420yQ {

    public int f54008a;

    public AbstractC6750cQ f54009b;

    public final ArrayList f54010c = new ArrayList(0);

    public C10420yQ f54011d;

    public C10420yQ f54012e;

    public C8751oQ f54013f;

    public final ArrayList f54014g;

    public C10420yQ(int i10) {
        this.f54008a = i10;
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            arrayList.add(new C9410sM());
        }
        this.f54014g = arrayList;
    }

    public final C10420yQ a() {
        return this.f54011d;
    }

    public final List<DQ> b() {
        return this.f54010c;
    }

    public final AbstractC6750cQ c() {
        AbstractC6750cQ abstractC6750cQ = this.f54009b;
        if (abstractC6750cQ != null) {
            return abstractC6750cQ;
        }
        GJ.a("classifier");
        throw null;
    }

    public final C8751oQ d() {
        return this.f54013f;
    }

    public final C10420yQ e() {
        return this.f54012e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!C10420yQ.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        GJ.a(obj, "null cannot be cast to non-null type kotlin.metadata.KmType");
        C10420yQ c10420yQ = (C10420yQ) obj;
        return this.f54008a == c10420yQ.f54008a && GJ.a(c(), c10420yQ.c()) && GJ.a(this.f54010c, c10420yQ.f54010c) && GJ.a(this.f54012e, c10420yQ.f54012e) && GJ.a(this.f54011d, c10420yQ.f54011d) && GJ.a(this.f54013f, c10420yQ.f54013f) && GJ.a(this.f54014g, c10420yQ.f54014g);
    }

    public final int hashCode() {
        return this.f54010c.hashCode() + ((c().hashCode() + (this.f54008a * 31)) * 31);
    }

    public final void a(C10420yQ c10420yQ) {
        this.f54011d = c10420yQ;
    }

    public final void b(C10420yQ c10420yQ) {
        this.f54012e = c10420yQ;
    }

    public final void a(C8751oQ c8751oQ) {
        this.f54013f = c8751oQ;
    }
}
