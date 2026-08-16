package com.android.tools.r8.synthesis;

import com.android.tools.r8.Version;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC8181l;
import com.android.tools.r8.internal.AbstractC8713oA;
import com.android.tools.r8.internal.AbstractC8880pA;
import com.android.tools.r8.internal.C40;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C7429gW;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.InterfaceC8212lA;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import java.lang.classfile.Attributes;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;

public class S {

    public static final boolean f58147a0 = true;

    public final b f58148A;

    public final b f58149B;

    public final b f58150C;

    public final b f58151D;

    public final b f58152E;

    public final b f58153F;

    public final b f58154G;

    public final b f58155H;

    public final b f58156I;

    public final b f58157J;

    public final b f58158K;

    public final b f58159L;

    public final b f58160M;

    public final b f58161N;

    public final b f58162O;

    public final b f58163P;

    public final b f58164Q;

    public final b f58165R;

    public final b f58166S;

    public final b f58167T;

    public final b f58168U;

    public final b f58169V;

    public final b f58170W;

    public final b f58171X;

    public final ArrayList f58172Y;

    public String f58173Z;

    public final b f58174a;

    public final b f58175b;

    public final b f58176c;

    public final b f58177d;

    public final b f58178e;

    public final b f58179f;

    public final b f58180g;

    public final b f58181h;

    public final b f58182i;

    public final b f58183j;

    public final b f58184k;

    public final b f58185l;

    public final b f58186m;

    public final b f58187n;

    public final b f58188o;

    public final b f58189p;

    public final b f58190q;

    public final b f58191r;

    public final b f58192s;

    public final b f58193t;

    public final b f58194u;

    public final b f58195v;

    public final b f58196w;

    public final b f58197x;

    public final b f58198y;

    public final b f58199z;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        public static final a f58200b = new a(0, "INTERNAL");

        public static final a f58201c = new a(1, "EXTERNAL");

        public a(int i10, String str) {
        }
    }

    public static abstract class b implements C40<b> {

        public final int f58202b;

        public final String f58203c;

        public b(int i10, String str) {
            this.f58202b = i10;
            this.f58203c = str;
        }

        public V a() {
            return null;
        }

        public abstract void a(InterfaceC8212lA interfaceC8212lA);

        public String b() {
            return this.f58203c;
        }

        public abstract boolean c();

        public abstract boolean d();

        public abstract boolean e();

        public final boolean equals(Object obj) {
            return InterfaceC7166ev.a(this, obj);
        }

        public abstract boolean f();

        public abstract boolean g();

        public final int hashCode() {
            return this.f58202b;
        }

        @Override
        public final int compareTo(b bVar) {
            return Integer.compare(this.f58202b, bVar.f58202b);
        }
    }

    public S() {
        Q q10 = new Q();
        int i10 = q10.f58139a;
        q10.f58139a = i10 + 1;
        this.f58174a = q10.a(new U(i10, "", true));
        int i11 = q10.f58139a;
        q10.f58139a = i11 + 1;
        this.f58175b = q10.a(new U(i11, "", true));
        int i12 = q10.f58139a;
        q10.f58139a = i12 + 1;
        this.f58176c = q10.a(new U(i12, "", true));
        int i13 = q10.f58139a;
        q10.f58139a = i13 + 1;
        this.f58177d = q10.a(new U(i13, "", true));
        int i14 = q10.f58139a;
        q10.f58139a = i14 + 1;
        this.f58178e = q10.a(new U(i14, "", false));
        int i15 = q10.f58139a;
        q10.f58139a = i15 + 1;
        this.f58179f = q10.a(new U(i15, "", false));
        int i16 = q10.f58139a;
        q10.f58139a = i16 + 1;
        this.f58180g = q10.a(new U(i16, "", false));
        this.f58181h = q10.a("$EnumUnboxingLocalUtility");
        this.f58182i = q10.a("$EnumUnboxingSharedUtility");
        this.f58183j = q10.a("$-CC");
        this.f58184k = q10.a("$-EL");
        this.f58185l = q10.a("RetargetClass");
        this.f58186m = q10.a("RetargetInterface");
        this.f58187n = q10.a("$Wrapper");
        this.f58188o = q10.a("$VivifiedWrapper");
        this.f58189p = q10.a("-IA");
        this.f58190q = q10.a("$EnumConversion");
        int i17 = q10.f58139a;
        q10.f58139a = i17 + 1;
        this.f58191r = q10.a(new T(i17, "Lambda", true));
        int i18 = q10.f58139a;
        q10.f58139a = i18 + 1;
        this.f58192s = q10.a(new T(i18, "ThreadLocal", true));
        int i19 = q10.f58139a;
        q10.f58139a = i19 + 1;
        this.f58193t = q10.a(new T(i19, "TypeSwitch", true));
        int i20 = q10.f58139a;
        q10.f58139a = i20 + 1;
        this.f58194u = q10.a(new T(i20, "SharedSuper", false));
        int i21 = q10.f58139a;
        q10.f58139a = i21 + 1;
        this.f58195v = q10.a(new T(i21, "$IA", false));
        int i22 = q10.f58139a;
        q10.f58139a = i22 + 1;
        this.f58196w = q10.a(new T(i22, "$Condy", false));
        this.f58197x = q10.c("AutoCloseableDispatcher");
        this.f58198y = q10.c("AutoCloseableForwarder");
        this.f58199z = q10.c("TypeSwitch");
        this.f58148A = q10.c("CheckNotZero");
        this.f58149B = q10.c(Attributes.NAME_RECORD);
        this.f58150C = q10.c("Backport");
        this.f58151D = q10.b("BackportWithForwarding");
        this.f58152E = q10.b("StaticInterfaceCall");
        this.f58153F = q10.b("ObjectCloneOutline");
        this.f58154G = q10.c("ToStringIfNotNull");
        this.f58155H = q10.c("ThrowCCEIfNotNull");
        this.f58156I = q10.c("NonNull");
        this.f58157J = q10.c("ThrowIAE");
        this.f58158K = q10.c("ThrowICCE");
        this.f58159L = q10.c("ThrowNSME");
        this.f58160M = q10.c("ThrowRTE");
        this.f58161N = q10.c("TwrCloseResource");
        this.f58162O = q10.c("ServiceLoad");
        this.f58163P = q10.b("Outline");
        this.f58164Q = q10.b("CovariantOutline");
        this.f58165R = q10.b("APIConversion");
        this.f58166S = q10.b("APIConversionParameters");
        this.f58167T = q10.b("$CollectionConversion");
        this.f58168U = q10.c("ApiModelOutline");
        this.f58169V = q10.b("ApiModelOutline");
        this.f58170W = q10.b("DesugaredLibraryBridge");
        this.f58171X = q10.c("NonStartupInStartupOutline");
        this.f58173Z = null;
        ArrayList arrayList = q10.f58140b;
        q10.f58140b = null;
        this.f58172Y = arrayList;
    }

    public final String a() {
        if (this.f58173Z == null) {
            int i10 = AbstractC8880pA.f51464a;
            InterfaceC8212lA a10 = AbstractC8713oA.f51183a.a();
            String versionString = Version.getVersionString();
            com.android.tools.r8.internal.F f10 = (com.android.tools.r8.internal.F) a10;
            f10.a(versionString.toString().getBytes(StandardCharsets.UTF_8));
            ArrayList arrayList = this.f58172Y;
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                b bVar = (b) obj;
                AbstractC8181l abstractC8181l = (AbstractC8181l) a10;
                abstractC8181l.f49857a.putInt(bVar.f58202b);
                abstractC8181l.b(4);
                String b10 = bVar.b();
                f10.a(b10.toString().getBytes(StandardCharsets.UTF_8));
                bVar.a(a10);
            }
            this.f58173Z = ((C7429gW) a10).a().toString();
        }
        return this.f58173Z;
    }

    public Collection<b> b() {
        return this.f58172Y;
    }

    public static String b(b bVar, M2 m22) {
        String U02 = m22.U0();
        if (bVar.d()) {
            return U02;
        }
        int lastIndexOf = U02.lastIndexOf(bVar.c() ? bVar.f58203c : "$$");
        if (lastIndexOf >= 0) {
            return U02.substring(0, lastIndexOf);
        }
        throw new C5417Jv0("Unexpected failure to compute a synthetic prefix for " + U02);
    }

    public static String a(b bVar, M2 m22) {
        String str;
        if (!f58147a0 && bVar.d()) {
            throw new AssertionError();
        }
        String U02 = m22.U0();
        if (bVar.c()) {
            str = bVar.f58203c;
        } else {
            str = "$$ExternalSynthetic" + bVar.b();
        }
        int lastIndexOf = U02.lastIndexOf(str);
        if (lastIndexOf >= 0) {
            return U02.substring(0, lastIndexOf);
        }
        throw new C5417Jv0("Unexpected failure to determine the context of synthetic class: " + U02);
    }

    public static M2 a(b bVar, C11579l c11579l, C4724u1 c4724u1) {
        if (f58147a0 || bVar.c()) {
            return c4724u1.d(a("", bVar, c11579l.f58273b.w0(), ""));
        }
        throw new AssertionError();
    }

    public static String a(String str, b bVar, String str2, String str3) {
        return C4932Bl.k(str2 + str + bVar.f58203c + str3);
    }

    public static boolean a(ClassReference classReference) {
        a(classReference.getDescriptor());
        return true;
    }

    public static void a(String str) {
        if (!f58147a0 && str.contains("$$InternalSynthetic")) {
            throw new AssertionError((Object) str);
        }
    }

    public static String a(a aVar) {
        if (!f58147a0 && aVar == null) {
            throw new AssertionError();
        }
        if (aVar == a.f58200b) {
            return "$$InternalSynthetic";
        }
        return "$$ExternalSynthetic";
    }

    public static ClassReference a(ClassReference classReference, b bVar, String str) {
        return Reference.classFromDescriptor(a("$$ExternalSynthetic", bVar, classReference.getBinaryName(), str));
    }

    public static boolean a(ClassReference classReference, a aVar, b bVar) {
        String typeName = classReference.getTypeName();
        if (bVar.c()) {
            if (f58147a0 || aVar == null) {
                return classReference.getBinaryName().endsWith(bVar.f58203c);
            }
            throw new AssertionError();
        }
        String a10 = a(aVar);
        int lastIndexOf = typeName.lastIndexOf(a10);
        if (lastIndexOf >= 0) {
            if (a(bVar, typeName, lastIndexOf, a10, aVar == a.f58201c)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(b bVar, String str, int i10, String str2, boolean z10) {
        int length = bVar.f58203c.length() + str2.length() + i10;
        if (length >= str.length()) {
            return false;
        }
        if (str.substring(i10, length).equals(str2 + bVar.f58203c)) {
            if (z10) {
                String substring = str.substring(length);
                if (!substring.isEmpty()) {
                    if ('0' == substring.charAt(0)) {
                        if (substring.length() == 1) {
                        }
                    } else {
                        for (int i11 = 0; i11 < substring.length(); i11++) {
                            if (Character.isDigit(substring.charAt(i11))) {
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }
}
