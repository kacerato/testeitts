package com.android.tools.r8.internal;

import com.android.tools.r8.ResourceShrinker;
import com.android.tools.r8.references.MethodReference;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class C9023q2 implements ResourceShrinker.ReferenceChecker {

    public final C5344Io f51700a;

    public C9023q2(C5344Io c5344Io) {
        this.f51700a = c5344Io;
    }

    @Override
    public final void endMethodVisit(MethodReference methodReference) {
        GJ.c(methodReference, "methodReference");
        C5344Io c5344Io = this.f51700a;
        c5344Io.getClass();
        CX cx = c5344Io.f41216d;
        cx.f39261a = false;
        cx.f39262b = null;
    }

    @Override
    public final void referencedInt(int i10) {
        C5344Io c5344Io = this.f51700a;
        if (c5344Io.a()) {
            return;
        }
        C8623ng0 c8623ng0 = (C8623ng0) c5344Io.f41214b.f44525b.f49014d.get(Integer.valueOf(i10));
        if (AbstractC8957pg0.a(c8623ng0)) {
            c5344Io.f41214b.f44524a.a(new C5286Ho(c8623ng0, c5344Io));
        }
    }

    @Override
    public final void referencedMethod(String str, String str2, String str3) {
        GJ.c(str, "internalName");
        GJ.c(str2, "methodName");
        GJ.c(str3, "methodDescriptor");
        C5344Io c5344Io = this.f51700a;
        c5344Io.getClass();
        if (c5344Io.f41215c) {
            CX cx = c5344Io.f41216d;
            if (cx.f39261a && GJ.a((Object) cx.f39262b, (Object) ConstantDescs.CLASS_INIT_NAME)) {
                return;
            }
        }
        if (str.equals("android/content/res/Resources") && str2.equals("getIdentifier") && str3.equals("(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I")) {
            LinkedHashSet linkedHashSet = AbstractC6525b3.f46688a;
            String a10 = AbstractC5349Iq0.a(str, '/', '.');
            V10 v10 = c5344Io.f41214b.f44526c;
            GJ.b(v10, "model.obfuscatedClasses");
            String str4 = (String) v10.f44940a.get(a10);
            if (str4 != null) {
                a10 = str4;
            }
            if (linkedHashSet.contains(a10)) {
                return;
            } else {
                c5344Io.f41214b.f44528e = true;
            }
        }
        if (str.equals("android/webkit/WebView") && AbstractC5349Iq0.b(str2, "load")) {
            c5344Io.f41214b.f44529f = true;
        }
    }

    @Override
    public final void referencedStaticField(String str, String str2) {
        GJ.c(str, "internalName");
        GJ.c(str2, "fieldName");
        C5344Io c5344Io = this.f51700a;
        c5344Io.getClass();
        if (c5344Io.a()) {
            return;
        }
        V10 v10 = c5344Io.f41214b.f44526c;
        C4968Cc c4968Cc = new C4968Cc(AbstractC5349Iq0.a(str, '/', '.'), str2);
        v10.getClass();
        Object obj = v10.f44941b.get(c4968Cc);
        if (obj == null) {
            String str3 = (String) v10.f44940a.get(c4968Cc.f39270a);
            if (str3 == null) {
                str3 = c4968Cc.f39270a;
            }
            GJ.b(str3, "obfuscatedClasses[obfusc\u2026bfuscatedMethod.className");
            obj = new C4968Cc(str3, c4968Cc.f39271b);
        }
        C4968Cc c4968Cc2 = (C4968Cc) obj;
        if (AbstractC5349Iq0.b(AbstractC5349Iq0.b(c4968Cc2.f39270a, '.'), "R$")) {
            EnumC8289lg0 enumC8289lg0 = (EnumC8289lg0) EnumC8289lg0.f50040I.get(AbstractC5349Iq0.b(c4968Cc2.f39270a, '$'));
            if (enumC8289lg0 != null) {
                Iterator<E> it = c5344Io.f41214b.f44525b.a(enumC8289lg0, c4968Cc2.f39271b).iterator();
                while (it.hasNext()) {
                    AbstractC8957pg0.a((C8623ng0) it.next());
                }
            }
        }
    }

    @Override
    public final void referencedString(String str) {
        GJ.c(str, "value");
        C5344Io c5344Io = this.f51700a;
        c5344Io.getClass();
        if (c5344Io.a() || str.length() == 0 || str.length() > 80) {
            return;
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (!Character.isJavaIdentifierPart(charAt) && charAt != '.' && charAt != ':' && charAt != '/' && charAt != '%') {
                return;
            }
        }
        for (int i11 = 0; i11 < str.length(); i11++) {
            if (Character.isJavaIdentifierPart(str.charAt(i11))) {
                c5344Io.f41214b.f44527d.add(str);
                C10277xb0 c10277xb0 = c5344Io.f41214b;
                c10277xb0.f44529f = c10277xb0.f44529f || AbstractC5349Iq0.a(str, "android_res/");
                return;
            }
        }
    }

    @Override
    public final boolean shouldProcess(String str) {
        boolean z10;
        GJ.c(str, "internalName");
        C5344Io c5344Io = this.f51700a;
        c5344Io.getClass();
        V10 v10 = c5344Io.f41214b.f44526c;
        String a10 = AbstractC5349Iq0.a(str, '/', '.');
        v10.getClass();
        String str2 = (String) v10.f44940a.get(a10);
        if (str2 != null) {
            a10 = str2;
        }
        String b10 = AbstractC5349Iq0.b(a10, '.');
        if (AbstractC5349Iq0.b(b10, "R$")) {
            String substring = b10.substring(2);
            GJ.b(substring, "substring(...)");
            if (((EnumC8289lg0) EnumC8289lg0.f50040I.get(substring)) != null) {
                z10 = true;
                c5344Io.f41215c = z10;
                return true;
            }
        }
        z10 = false;
        c5344Io.f41215c = z10;
        return true;
    }

    @Override
    public final void startMethodVisit(MethodReference methodReference) {
        GJ.c(methodReference, "methodReference");
        C5344Io c5344Io = this.f51700a;
        c5344Io.getClass();
        CX cx = c5344Io.f41216d;
        cx.f39261a = true;
        cx.f39262b = methodReference.getMethodName();
    }
}
