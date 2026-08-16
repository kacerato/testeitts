package Wf;

import Xf.InterfaceC3312m;
import Xf.K;
import ag.C3617K;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.N;
import kotlin.jvm.internal.t0;
import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import pf.S;

@t0({"SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,230:1\n1#2:231\n1586#3:232\n1661#3,3:233\n1586#3:236\n1661#3,3:237\n1586#3:240\n1661#3,3:241\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n*L\n69#1:232\n69#1:233,3\n71#1:236\n71#1:237,3\n77#1:240\n77#1:241,3\n*E\n"})
public final class A {

    public static final class a {

        public static final int[] f27753a;

        static {
            int[] iArr = new int[u.values().length];
            try {
                iArr[u.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u.INVARIANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f27753a = iArr;
        }
    }

    public static final class b extends I implements Mf.l<Class<?>, Class<?>> {

        public static final b f27754b = new b();

        public b() {
            super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
        }

        @Override
        public final Class<?> invoke(Class<?> p02) {
            M.p(p02, "p0");
            return p02.getComponentType();
        }
    }

    @InterfaceC14441w
    public static final Type c(r rVar, boolean z10) {
        f E10 = rVar.E();
        if (E10 instanceof s) {
            return new z((s) E10);
        }
        if (!(E10 instanceof KClass)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + ((Object) rVar));
        }
        KClass kClass = (KClass) E10;
        Class g10 = z10 ? Lf.b.g(kClass) : Lf.b.e(kClass);
        List<t> arguments = rVar.getArguments();
        if (arguments.isEmpty()) {
            return g10;
        }
        if (!g10.isArray()) {
            return e(g10, arguments);
        }
        if (g10.getComponentType().isPrimitive()) {
            return g10;
        }
        t tVar = (t) S.p5(arguments);
        if (tVar == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + ((Object) rVar));
        }
        u a10 = tVar.a();
        r b10 = tVar.b();
        int i10 = a10 == null ? -1 : a.f27753a[a10.ordinal()];
        if (i10 == -1 || i10 == 1) {
            return g10;
        }
        if (i10 != 2 && i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        M.m(b10);
        Type d10 = d(b10, false, 1, null);
        return d10 instanceof Class ? g10 : new C3183a(d10);
    }

    public static Type d(r rVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return c(rVar, z10);
    }

    @InterfaceC14441w
    public static final Type e(Class<?> cls, List<t> list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List<t> list2 = list;
            ArrayList arrayList = new ArrayList(pf.I.d0(list2, 10));
            Iterator<t> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(g(it.next()));
            }
            return new w(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            List<t> list3 = list;
            ArrayList arrayList2 = new ArrayList(pf.I.d0(list3, 10));
            Iterator<t> it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(g(it2.next()));
            }
            return new w(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        Type e10 = e(declaringClass, list.subList(length, list.size()));
        List<t> subList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(pf.I.d0(subList, 10));
        Iterator<t> it3 = subList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(g(it3.next()));
        }
        return new w(cls, e10, arrayList3);
    }

    @NotNull
    public static final Type f(@NotNull r rVar) {
        Type h10;
        M.p(rVar, "<this>");
        return (!(rVar instanceof N) || (h10 = ((N) rVar).h()) == null) ? d(rVar, false, 1, null) : h10;
    }

    public static final Type g(t tVar) {
        u h10 = tVar.h();
        if (h10 == null) {
            return B.f27755d.a();
        }
        r g10 = tVar.g();
        M.m(g10);
        int i10 = a.f27753a[h10.ordinal()];
        if (i10 == 1) {
            return new B(null, c(g10, true));
        }
        if (i10 == 2) {
            return c(g10, true);
        }
        if (i10 == 3) {
            return new B(c(g10, true), null);
        }
        throw new NoWhenBranchMatchedException();
    }

    @InterfaceC14441w
    @Ef.i
    @InterfaceC14422l0(version = "1.4")
    public static void h(r rVar) {
    }

    @InterfaceC14441w
    public static void i(t tVar) {
    }

    public static final String j(Type type) {
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (!cls.isArray()) {
            String name = cls.getName();
            M.o(name, "getName(...)");
            return name;
        }
        InterfaceC3312m v10 = Xf.x.v(type, b.f27754b);
        return ((Class) K.I1(v10)).getName() + C3617K.x2(okhttp3.v.f99450n, K.E0(v10));
    }
}
