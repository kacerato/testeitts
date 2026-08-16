package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.j(name = "CollectionToArray")
@t0({"SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n1#1,88:1\n63#1,22:89\n63#1,22:111\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n22#1:89,22\n37#1:111,22\n*E\n"})
public final class C14025w {

    @NotNull
    public static final Object[] f95791a = new Object[0];

    public static final int f95792b = 2147483645;

    @InterfaceC14427o(message = "This function will be made internal in a future release")
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.9")
    @NotNull
    @Lf.j(name = "toArray")
    public static final Object[] a(@NotNull Collection<?> collection) {
        M.p(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr = new Object[size];
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    objArr[i10] = it.next();
                    if (i11 >= objArr.length) {
                        if (!it.hasNext()) {
                            return objArr;
                        }
                        int i12 = ((i11 * 3) + 1) >>> 1;
                        if (i12 <= i11) {
                            i12 = f95792b;
                            if (i11 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr = Arrays.copyOf(objArr, i12);
                        M.o(objArr, "copyOf(...)");
                    } else if (!it.hasNext()) {
                        Object[] copyOf = Arrays.copyOf(objArr, i11);
                        M.o(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i10 = i11;
                }
            }
        }
        return f95791a;
    }

    @InterfaceC14427o(message = "This function will be made internal in a future release")
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.9")
    @NotNull
    @Lf.j(name = "toArray")
    public static final Object[] b(@NotNull Collection<?> collection, @Nullable Object[] objArr) {
        Object[] objArr2;
        M.p(collection, "collection");
        objArr.getClass();
        int size = collection.size();
        int i10 = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArr2 = objArr;
        } else {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            M.n(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr2 = (Object[]) newInstance;
        }
        while (true) {
            int i11 = i10 + 1;
            objArr2[i10] = it.next();
            if (i11 >= objArr2.length) {
                if (!it.hasNext()) {
                    return objArr2;
                }
                int i12 = ((i11 * 3) + 1) >>> 1;
                if (i12 <= i11) {
                    i12 = f95792b;
                    if (i11 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr2 = Arrays.copyOf(objArr2, i12);
                M.o(objArr2, "copyOf(...)");
            } else if (!it.hasNext()) {
                if (objArr2 == objArr) {
                    objArr[i11] = null;
                    return objArr;
                }
                Object[] copyOf = Arrays.copyOf(objArr2, i11);
                M.o(copyOf, "copyOf(...)");
                return copyOf;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static final Object[] c(Collection<?> collection, Mf.a<Object[]> aVar, Mf.l<? super Integer, Object[]> lVar, Mf.p<? super Object[], ? super Integer, Object[]> pVar) {
        int size = collection.size();
        if (size == 0) {
            return aVar.invoke();
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return aVar.invoke();
        }
        Object[] invoke = lVar.invoke(Integer.valueOf(size));
        int i10 = 0;
        ?? r32 = invoke;
        while (true) {
            int i11 = i10 + 1;
            r32[i10] = it.next();
            if (i11 >= r32.length) {
                if (!it.hasNext()) {
                    return r32;
                }
                int i12 = ((i11 * 3) + 1) >>> 1;
                if (i12 <= i11) {
                    i12 = f95792b;
                    if (i11 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                r32 = Arrays.copyOf((Object[]) r32, i12);
                M.o(r32, "copyOf(...)");
            } else if (!it.hasNext()) {
                return pVar.invoke(r32, Integer.valueOf(i11));
            }
            i10 = i11;
            r32 = r32;
        }
    }
}
