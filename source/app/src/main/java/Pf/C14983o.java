package pf;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C14983o {
    @NotNull
    public static final <T> T[] a(@NotNull T[] reference, int i10) {
        kotlin.jvm.internal.M.p(reference, "reference");
        Object newInstance = Array.newInstance(reference.getClass().getComponentType(), i10);
        kotlin.jvm.internal.M.n(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (T[]) ((Object[]) newInstance);
    }

    @Lf.j(name = "contentDeepHashCode")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <T> int b(@Nullable T[] tArr) {
        return Arrays.deepHashCode(tArr);
    }

    @InterfaceC14422l0(version = "1.3")
    public static final void c(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }

    public static final <T> T[] d(T[] tArr) {
        if (tArr != null) {
            return tArr;
        }
        kotlin.jvm.internal.M.y(0, ExifInterface.GPS_DIRECTION_TRUE);
        return (T[]) new Object[0];
    }

    @Ef.f
    public static final String e(byte[] bArr, Charset charset) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(charset, "charset");
        return new String(bArr, charset);
    }

    public static final <T> T[] f(Collection<? extends T> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.y(0, "T?");
        return (T[]) collection.toArray(new Object[0]);
    }
}
