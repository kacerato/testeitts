package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016\u00a2\u0006\u0004\b\u0004\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000b\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e\u00a8\u0006\u0016"}, d2 = {"Lkotlin/metadata/KmConstructor;", "", "flags", "", ConstantDescs.INIT_NAME, "(I)V", "()V", "getFlags$kotlin_metadata", "()I", "setFlags$kotlin_metadata", "valueParameters", "", "Lkotlin/metadata/KmValueParameter;", "getValueParameters", "()Ljava/util/List;", "versionRequirements", "Lkotlin/metadata/KmVersionRequirement;", "getVersionRequirements", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmConstructorExtension;", "getExtensions$kotlin_metadata", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C7083eQ {

    public int f47674a;

    public final ArrayList f47675b = new ArrayList();

    public final ArrayList f47676c = new ArrayList(0);

    public final ArrayList f47677d;

    public C7083eQ(int i10) {
        this.f47674a = i10;
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            arrayList.add(new C10577zL());
        }
        this.f47677d = arrayList;
    }

    public final List<EQ> a() {
        return this.f47675b;
    }
}
