package mg;

import eg.InterfaceC13098K;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1#2:117\n11335#3:118\n11670#3,3:119\n12904#3,3:136\n1963#4,14:122\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n45#1:118\n45#1:119,3\n82#1:136,3\n63#1:122,14\n*E\n"})
public final class C14253n {

    public static final int f97081a = e(Throwable.class, -1);

    @NotNull
    public static final AbstractC14250k f97082b;

    public static final class a extends kotlin.jvm.internal.O implements Mf.l<Throwable, Throwable> {

        public final Constructor<?> f97083b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Constructor<?> constructor) {
            super(1);
            this.f97083b = constructor;
        }

        @Override
        @NotNull
        public final Throwable invoke(@NotNull Throwable th2) {
            Object newInstance = this.f97083b.newInstance(th2.getMessage(), th2);
            kotlin.jvm.internal.M.n(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
            return (Throwable) newInstance;
        }
    }

    @t0({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
    public static final class b extends kotlin.jvm.internal.O implements Mf.l<Throwable, Throwable> {

        public final Constructor<?> f97084b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Constructor<?> constructor) {
            super(1);
            this.f97084b = constructor;
        }

        @Override
        @NotNull
        public final Throwable invoke(@NotNull Throwable th2) {
            Object newInstance = this.f97084b.newInstance(th2.getMessage());
            kotlin.jvm.internal.M.n(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
            Throwable th3 = (Throwable) newInstance;
            th3.initCause(th2);
            return th3;
        }
    }

    public static final class c extends kotlin.jvm.internal.O implements Mf.l<Throwable, Throwable> {

        public final Constructor<?> f97085b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Constructor<?> constructor) {
            super(1);
            this.f97085b = constructor;
        }

        @Override
        @NotNull
        public final Throwable invoke(@NotNull Throwable th2) {
            Object newInstance = this.f97085b.newInstance(th2);
            kotlin.jvm.internal.M.n(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
            return (Throwable) newInstance;
        }
    }

    @t0({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
    public static final class d extends kotlin.jvm.internal.O implements Mf.l<Throwable, Throwable> {

        public final Constructor<?> f97086b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Constructor<?> constructor) {
            super(1);
            this.f97086b = constructor;
        }

        @Override
        @NotNull
        public final Throwable invoke(@NotNull Throwable th2) {
            Object newInstance = this.f97086b.newInstance(null);
            kotlin.jvm.internal.M.n(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
            Throwable th3 = (Throwable) newInstance;
            th3.initCause(th2);
            return th3;
        }
    }

    public static final class e extends kotlin.jvm.internal.O implements Mf.l {

        public static final e f97087b = new e();

        public e() {
            super(1);
        }

        @Override
        @Nullable
        public final Void invoke(@NotNull Throwable th2) {
            return null;
        }
    }

    public static final class f extends kotlin.jvm.internal.O implements Mf.l<Throwable, Throwable> {

        public final Mf.l<Throwable, Throwable> f97088b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public f(Mf.l<? super Throwable, ? extends Throwable> lVar) {
            super(1);
            this.f97088b = lVar;
        }

        @Override
        @Nullable
        public final Throwable invoke(@NotNull Throwable th2) {
            Object b10;
            Mf.l<Throwable, Throwable> lVar = this.f97088b;
            try {
                C14416i0.a aVar = C14416i0.f98201c;
                Throwable invoke = lVar.invoke(th2);
                if (!kotlin.jvm.internal.M.g(th2.getMessage(), invoke.getMessage()) && !kotlin.jvm.internal.M.g(invoke.getMessage(), th2.toString())) {
                    invoke = null;
                }
                b10 = C14416i0.b(invoke);
            } catch (Throwable th3) {
                C14416i0.a aVar2 = C14416i0.f98201c;
                b10 = C14416i0.b(C14418j0.a(th3));
            }
            return (Throwable) (C14416i0.i(b10) ? null : b10);
        }
    }

    static {
        AbstractC14250k abstractC14250k;
        try {
            abstractC14250k = C14255p.a() ? g0.f97069a : C14243d.f97056a;
        } catch (Throwable unused) {
            abstractC14250k = g0.f97069a;
        }
        f97082b = abstractC14250k;
    }

    public static final <E extends Throwable> Mf.l<Throwable, Throwable> b(Class<E> cls) {
        Object obj;
        Mf.l<Throwable, Throwable> lVar;
        nf.Z a10;
        e eVar = e.f97087b;
        if (f97081a != e(cls, 0)) {
            return eVar;
        }
        Constructor<?>[] constructors = cls.getConstructors();
        ArrayList arrayList = new ArrayList(constructors.length);
        int length = constructors.length;
        int i10 = 0;
        while (true) {
            obj = null;
            if (i10 >= length) {
                break;
            }
            Constructor<?> constructor = constructors[i10];
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            int length2 = parameterTypes.length;
            if (length2 == 0) {
                a10 = v0.a(f(new d(constructor)), 0);
            } else if (length2 != 1) {
                a10 = length2 != 2 ? v0.a(null, -1) : (kotlin.jvm.internal.M.g(parameterTypes[0], String.class) && kotlin.jvm.internal.M.g(parameterTypes[1], Throwable.class)) ? v0.a(f(new a(constructor)), 3) : v0.a(null, -1);
            } else {
                Class<?> cls2 = parameterTypes[0];
                a10 = kotlin.jvm.internal.M.g(cls2, String.class) ? v0.a(f(new b(constructor)), 2) : kotlin.jvm.internal.M.g(cls2, Throwable.class) ? v0.a(f(new c(constructor)), 1) : v0.a(null, -1);
            }
            arrayList.add(a10);
            i10++;
        }
        Iterator<E> it = arrayList.iterator();
        if (it.hasNext()) {
            obj = it.next();
            if (it.hasNext()) {
                int intValue = ((Number) ((nf.Z) obj).f()).intValue();
                do {
                    Object next = it.next();
                    int intValue2 = ((Number) ((nf.Z) next).f()).intValue();
                    if (intValue < intValue2) {
                        obj = next;
                        intValue = intValue2;
                    }
                } while (it.hasNext());
            }
        }
        nf.Z z10 = (nf.Z) obj;
        return (z10 == null || (lVar = (Mf.l) z10.e()) == null) ? eVar : lVar;
    }

    public static final int c(Class<?> cls, int i10) {
        do {
            int i11 = 0;
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i11++;
                }
            }
            i10 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i10;
    }

    public static int d(Class cls, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return c(cls, i10);
    }

    public static final int e(Class<?> cls, int i10) {
        Object b10;
        Lf.b.i(cls);
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(Integer.valueOf(d(cls, 0, 1, null)));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        Integer valueOf = Integer.valueOf(i10);
        if (C14416i0.i(b10)) {
            b10 = valueOf;
        }
        return ((Number) b10).intValue();
    }

    public static final Mf.l<Throwable, Throwable> f(Mf.l<? super Throwable, ? extends Throwable> lVar) {
        return new f(lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E extends Throwable> E g(@NotNull E e10) {
        Object b10;
        if (!(e10 instanceof InterfaceC13098K)) {
            return (E) f97082b.a(e10.getClass()).invoke(e10);
        }
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(((InterfaceC13098K) e10).createCopy());
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        if (C14416i0.i(b10)) {
            b10 = null;
        }
        return (E) b10;
    }
}
