package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00060\u000bj\u0002`\fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0012X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0012X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u0012X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0015R\u001c\u0010%\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u000e\"\u0004\b'\u0010\u0010R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0015R\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0015R\u001b\u0010,\u001a\f\u0012\b\u0012\u00060\u000bj\u0002`\f0\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b-\u0010\u0015R\u001c\u0010.\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u000e\"\u0004\b0\u0010\u0010R\u001c\u00101\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00106\u001a\b\u0012\u0004\u0012\u00020\u00170\u00128\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\b7\u0010\u0003\u001a\u0004\b8\u0010\u0015R\u0017\u00109\u001a\b\u0012\u0004\u0012\u00020:0\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b;\u0010\u0015R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020>0=X\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b?\u0010\u0015\u00a8\u0006@"}, d2 = {"Lkotlin/metadata/KmClass;", "Lkotlin/metadata/KmDeclarationContainer;", ConstantDescs.INIT_NAME, "()V", "flags", "", "getFlags$kotlin_metadata", "()I", "setFlags$kotlin_metadata", "(I)V", "name", "", "Lkotlin/metadata/ClassName;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "typeParameters", "", "Lkotlin/metadata/KmTypeParameter;", "getTypeParameters", "()Ljava/util/List;", "supertypes", "Lkotlin/metadata/KmType;", "getSupertypes", "functions", "Lkotlin/metadata/KmFunction;", "getFunctions", "properties", "Lkotlin/metadata/KmProperty;", "getProperties", "typeAliases", "Lkotlin/metadata/KmTypeAlias;", "getTypeAliases", "constructors", "Lkotlin/metadata/KmConstructor;", "getConstructors", "companionObject", "getCompanionObject", "setCompanionObject", "nestedClasses", "getNestedClasses", "enumEntries", "getEnumEntries", "sealedSubclasses", "getSealedSubclasses", "inlineClassUnderlyingPropertyName", "getInlineClassUnderlyingPropertyName", "setInlineClassUnderlyingPropertyName", "inlineClassUnderlyingType", "getInlineClassUnderlyingType", "()Lkotlin/metadata/KmType;", "setInlineClassUnderlyingType", "(Lkotlin/metadata/KmType;)V", "contextReceiverTypes", "getContextReceiverTypes$annotations", "getContextReceiverTypes", "versionRequirements", "Lkotlin/metadata/KmVersionRequirement;", "getVersionRequirements", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmClassExtension;", "getExtensions$kotlin_metadata", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C6417aQ implements InterfaceC7584hQ {

    public int f46513a;

    public String f46514b;

    public String f46521i;

    public String f46525m;

    public C10420yQ f46526n;

    public final ArrayList f46529q;

    public final ArrayList f46515c = new ArrayList(0);

    public final ArrayList f46516d = new ArrayList(1);

    public final ArrayList f46517e = new ArrayList();

    public final ArrayList f46518f = new ArrayList();

    public final ArrayList f46519g = new ArrayList(0);

    public final ArrayList f46520h = new ArrayList(1);

    public final ArrayList f46522j = new ArrayList(0);

    public final ArrayList f46523k = new ArrayList(0);

    public final ArrayList f46524l = new ArrayList(0);

    public final ArrayList f46527o = new ArrayList(0);

    public final ArrayList f46528p = new ArrayList(0);

    public C6417aQ() {
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            arrayList.add(new C10243xL());
        }
        this.f46529q = arrayList;
    }

    @Override
    public final List a() {
        return this.f46517e;
    }

    @Override
    public final List b() {
        return this.f46518f;
    }

    @Override
    public final List c() {
        return this.f46519g;
    }

    public final String d() {
        return this.f46521i;
    }

    public final List<C7083eQ> e() {
        return this.f46520h;
    }

    public final List<String> f() {
        return this.f46523k;
    }

    public final String g() {
        String str = this.f46514b;
        if (str != null) {
            return str;
        }
        GJ.a("name");
        throw null;
    }

    public final List<String> h() {
        return this.f46522j;
    }

    public final List<String> i() {
        return this.f46524l;
    }

    public final List<C10420yQ> j() {
        return this.f46516d;
    }

    public final List<BQ> k() {
        return this.f46515c;
    }

    public final void a(C10420yQ c10420yQ) {
        this.f46526n = c10420yQ;
    }
}
