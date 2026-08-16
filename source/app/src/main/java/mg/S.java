package mg;

import a.C3528a;
import a.C3529b;
import ag.C3617K;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1735#2,6:217\n12744#2,2:225\n1627#2,6:229\n12744#2,2:235\n1627#2,6:238\n37#3,2:223\n26#4:227\n26#4:228\n1#5:237\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n43#1:217,6\n131#1:225,2\n141#1:229,6\n173#1:235,2\n194#1:238,6\n106#1:223,2\n133#1:227\n135#1:228\n*E\n"})
public final class S {

    @NotNull
    public static final String f97036a = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";

    @NotNull
    public static final String f97037b = "kotlinx.coroutines.internal.StackTraceRecoveryKt";

    @NotNull
    public static final StackTraceElement f97038c = new C3528a().a();

    public static final String f97039d;

    public static final String f97040e;

    static {
        Object b10;
        Object b11;
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(Bf.a.class.getCanonicalName());
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        if (C14416i0.e(b10) != null) {
            b10 = f97036a;
        }
        f97039d = (String) b10;
        try {
            C14416i0.a aVar3 = C14416i0.f98201c;
            b11 = C14416i0.b(S.class.getCanonicalName());
        } catch (Throwable th3) {
            C14416i0.a aVar4 = C14416i0.f98201c;
            b11 = C14416i0.b(C14418j0.a(th3));
        }
        if (C14416i0.e(b11) != null) {
            b11 = f97037b;
        }
        f97040e = (String) b11;
    }

    public static void a() {
    }

    public static void b() {
    }

    public static final <E extends Throwable> nf.Z<E, StackTraceElement[]> d(E e10) {
        Throwable cause = e10.getCause();
        if (cause == null || !kotlin.jvm.internal.M.g(cause.getClass(), e10.getClass())) {
            return v0.a(e10, new StackTraceElement[0]);
        }
        StackTraceElement[] stackTrace = e10.getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (j(stackTraceElement)) {
                return v0.a(cause, stackTrace);
            }
        }
        return v0.a(e10, new StackTraceElement[0]);
    }

    public static final <E extends Throwable> E e(E e10, E e11, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(f97038c);
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int h10 = h(stackTrace, f97039d);
        int i10 = 0;
        if (h10 == -1) {
            e11.setStackTrace((StackTraceElement[]) arrayDeque.toArray(new StackTraceElement[0]));
            return e11;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + h10];
        for (int i11 = 0; i11 < h10; i11++) {
            stackTraceElementArr[i11] = stackTrace[i11];
        }
        Iterator<StackTraceElement> it = arrayDeque.iterator();
        while (it.hasNext()) {
            stackTraceElementArr[i10 + h10] = it.next();
            i10++;
        }
        e11.setStackTrace(stackTraceElementArr);
        return e11;
    }

    public static final ArrayDeque<StackTraceElement> f(Bf.e eVar) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = eVar.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            eVar = eVar.getCallerFrame();
            if (eVar == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = eVar.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    public static final boolean g(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && kotlin.jvm.internal.M.g(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && kotlin.jvm.internal.M.g(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && kotlin.jvm.internal.M.g(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    public static final int h(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (kotlin.jvm.internal.M.g(str, stackTraceElementArr[i10].getClassName())) {
                return i10;
            }
        }
        return -1;
    }

    public static final void i(@NotNull Throwable th2, @NotNull Throwable th3) {
        th2.initCause(th3);
    }

    public static final boolean j(@NotNull StackTraceElement stackTraceElement) {
        return C3617K.L2(stackTraceElement.getClassName(), C3529b.c(), false, 2, null);
    }

    public static final void k(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            } else if (j(stackTraceElementArr[i10])) {
                break;
            } else {
                i10++;
            }
        }
        int i11 = i10 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i11 > length2) {
            return;
        }
        while (true) {
            if (g(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i11) {
                return;
            } else {
                length2--;
            }
        }
    }

    @Nullable
    public static final Object l(@NotNull Throwable th2, @NotNull yf.f<?> fVar) {
        throw th2;
    }

    public static final Object m(Throwable th2, yf.f<?> fVar) {
        throw th2;
    }

    public static final <E extends Throwable> E n(E e10, Bf.e eVar) {
        nf.Z d10 = d(e10);
        Throwable th2 = (Throwable) d10.a();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) d10.b();
        Throwable g10 = C14253n.g(th2);
        if (g10 == null) {
            return e10;
        }
        ArrayDeque<StackTraceElement> f10 = f(eVar);
        if (f10.isEmpty()) {
            return e10;
        }
        if (th2 != e10) {
            k(stackTraceElementArr, f10);
        }
        return (E) e(th2, g10, f10);
    }

    @NotNull
    public static final <E extends Throwable> E o(@NotNull E e10) {
        return e10;
    }

    @NotNull
    public static final <E extends Throwable> E p(@NotNull E e10, @NotNull yf.f<?> fVar) {
        return e10;
    }

    public static final <E extends Throwable> E q(E e10) {
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int length = stackTrace.length;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i10 = length2 - 1;
                if (kotlin.jvm.internal.M.g(f97040e, stackTrace[length2].getClassName())) {
                    break;
                }
                if (i10 < 0) {
                    break;
                }
                length2 = i10;
            }
        }
        length2 = -1;
        int i11 = length2 + 1;
        int h10 = h(stackTrace, f97039d);
        int i12 = 0;
        int i13 = (length - length2) - (h10 == -1 ? 0 : length - h10);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i13];
        while (i12 < i13) {
            stackTraceElementArr[i12] = i12 == 0 ? f97038c : stackTrace[(i11 + i12) - 1];
            i12++;
        }
        e10.setStackTrace(stackTraceElementArr);
        return e10;
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E extends Throwable> E r(@NotNull E e10) {
        return e10;
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E extends Throwable> E s(@NotNull E e10) {
        E e11 = (E) e10.getCause();
        if (e11 != null && kotlin.jvm.internal.M.g(e11.getClass(), e10.getClass())) {
            for (StackTraceElement stackTraceElement : e10.getStackTrace()) {
                if (j(stackTraceElement)) {
                    return e11;
                }
            }
        }
        return e10;
    }
}
