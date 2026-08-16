package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\b\u00a8\u0006\u0013"}, d2 = {"Lkotlin/metadata/KmPackage;", "Lkotlin/metadata/KmDeclarationContainer;", ConstantDescs.INIT_NAME, "()V", "functions", "", "Lkotlin/metadata/KmFunction;", "getFunctions", "()Ljava/util/List;", "properties", "Lkotlin/metadata/KmProperty;", "getProperties", "typeAliases", "Lkotlin/metadata/KmTypeAlias;", "getTypeAliases", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmPackageExtension;", "getExtensions$kotlin_metadata", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C9418sQ implements InterfaceC7584hQ {

    public final ArrayList f52354a = new ArrayList();

    public final ArrayList f52355b = new ArrayList();

    public final ArrayList f52356c = new ArrayList(0);

    public final ArrayList f52357d;

    public C9418sQ() {
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            arrayList.add(new WL());
        }
        this.f52357d = arrayList;
    }

    @Override
    public final List a() {
        return this.f52354a;
    }

    @Override
    public final List b() {
        return this.f52355b;
    }

    @Override
    public final List c() {
        return this.f52356c;
    }
}
