package pf;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.M0;
import nf.P0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"})
public class C14984p extends C14983o {
    /* JADX WARN: Multi-variable type inference failed */
    @Lf.j(name = "contentDeepEquals")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <T> boolean g(@Nullable T[] tArr, @Nullable T[] tArr2) {
        if (tArr == tArr2) {
            return true;
        }
        if (tArr == 0 || tArr2 == 0 || tArr.length != tArr2.length) {
            return false;
        }
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object[] objArr = tArr[i10];
            Object[] objArr2 = tArr2[i10];
            if (objArr != objArr2) {
                if (objArr == 0 || objArr2 == 0) {
                    return false;
                }
                if ((objArr instanceof Object[]) && (objArr2 instanceof Object[])) {
                    if (!g(objArr, objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof byte[]) && (objArr2 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) objArr, (byte[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof short[]) && (objArr2 instanceof short[])) {
                    if (!Arrays.equals((short[]) objArr, (short[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof int[]) && (objArr2 instanceof int[])) {
                    if (!Arrays.equals((int[]) objArr, (int[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof long[]) && (objArr2 instanceof long[])) {
                    if (!Arrays.equals((long[]) objArr, (long[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof float[]) && (objArr2 instanceof float[])) {
                    if (!Arrays.equals((float[]) objArr, (float[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof double[]) && (objArr2 instanceof double[])) {
                    if (!Arrays.equals((double[]) objArr, (double[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof char[]) && (objArr2 instanceof char[])) {
                    if (!Arrays.equals((char[]) objArr, (char[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof boolean[]) && (objArr2 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) objArr, (boolean[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof nf.y0) && (objArr2 instanceof nf.y0)) {
                    if (!sf.g.Y0(((nf.y0) objArr).A(), ((nf.y0) objArr2).A())) {
                        return false;
                    }
                } else if ((objArr instanceof M0) && (objArr2 instanceof M0)) {
                    if (!sf.g.W0(((M0) objArr).A(), ((M0) objArr2).A())) {
                        return false;
                    }
                } else if ((objArr instanceof nf.C0) && (objArr2 instanceof nf.C0)) {
                    if (!sf.g.X0(((nf.C0) objArr).D(), ((nf.C0) objArr2).D())) {
                        return false;
                    }
                } else if ((objArr instanceof nf.G0) && (objArr2 instanceof nf.G0)) {
                    if (!sf.g.Z0(((nf.G0) objArr).A(), ((nf.G0) objArr2).A())) {
                        return false;
                    }
                } else if (!kotlin.jvm.internal.M.g(objArr, objArr2)) {
                    return false;
                }
            }
        }
        return true;
    }

    @NotNull
    @Lf.j(name = "contentDeepToString")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <T> String h(@Nullable T[] tArr) {
        if (tArr == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder((Vf.u.D(tArr.length, 429496729) * 5) + 2);
        i(tArr, sb2, new ArrayList());
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void i(T[] tArr, StringBuilder sb2, List<Object[]> list) {
        if (list.contains(tArr)) {
            sb2.append("[...]");
            return;
        }
        list.add(tArr);
        sb2.append('[');
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            Object[] objArr = tArr[i10];
            if (objArr == 0) {
                sb2.append("null");
            } else if (objArr instanceof Object[]) {
                i(objArr, sb2, list);
                P0 p02 = P0.f98194a;
            } else if (objArr instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) objArr);
                kotlin.jvm.internal.M.o(arrays, "toString(...)");
                sb2.append(arrays);
            } else if (objArr instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) objArr);
                kotlin.jvm.internal.M.o(arrays2, "toString(...)");
                sb2.append(arrays2);
            } else if (objArr instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) objArr);
                kotlin.jvm.internal.M.o(arrays3, "toString(...)");
                sb2.append(arrays3);
            } else if (objArr instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) objArr);
                kotlin.jvm.internal.M.o(arrays4, "toString(...)");
                sb2.append(arrays4);
            } else if (objArr instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) objArr);
                kotlin.jvm.internal.M.o(arrays5, "toString(...)");
                sb2.append(arrays5);
            } else if (objArr instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) objArr);
                kotlin.jvm.internal.M.o(arrays6, "toString(...)");
                sb2.append(arrays6);
            } else if (objArr instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) objArr);
                kotlin.jvm.internal.M.o(arrays7, "toString(...)");
                sb2.append(arrays7);
            } else if (objArr instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) objArr);
                kotlin.jvm.internal.M.o(arrays8, "toString(...)");
                sb2.append(arrays8);
            } else if (objArr instanceof nf.y0) {
                sb2.append(sf.g.e1(((nf.y0) objArr).A()));
            } else if (objArr instanceof M0) {
                sb2.append(sf.g.g1(((M0) objArr).A()));
            } else if (objArr instanceof nf.C0) {
                sb2.append(sf.g.f1(((nf.C0) objArr).D()));
            } else if (objArr instanceof nf.G0) {
                sb2.append(sf.g.h1(((nf.G0) objArr).A()));
            } else {
                sb2.append(objArr.toString());
            }
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        list.remove(H.L(list));
    }

    @NotNull
    public static final <T> List<T> j(@NotNull T[][] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int i10 = 0;
        for (T[] tArr2 : tArr) {
            i10 += tArr2.length;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (T[] tArr3 : tArr) {
            M.u0(arrayList, tArr3);
        }
        return arrayList;
    }

    /* JADX WARN: Incorrect types in method signature: <C:[Ljava/lang/Object;:TR;R:Ljava/lang/Object;>(TC;LMf/a<+TR;>;)TR; */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final Object k(Object[] objArr, Mf.a defaultValue) {
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return objArr.length == 0 ? defaultValue.invoke() : objArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final boolean l(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    @NotNull
    public static final <T, R> nf.Z<List<T>, List<R>> m(@NotNull nf.Z<? extends T, ? extends R>[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        ArrayList arrayList = new ArrayList(zArr.length);
        ArrayList arrayList2 = new ArrayList(zArr.length);
        for (nf.Z<? extends T, ? extends R> z10 : zArr) {
            arrayList.add(z10.e());
            arrayList2.add(z10.f());
        }
        return nf.v0.a(arrayList, arrayList2);
    }
}
