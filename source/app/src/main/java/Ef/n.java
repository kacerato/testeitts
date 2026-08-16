package Ef;

import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.M;
import nf.C14396F;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public final class n {

    @Lf.g
    @NotNull
    public static final m f5775a = new Gf.a();

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.2")
    public static final boolean a(int i10, int i11, int i12) {
        return C14396F.f98168h.g(i10, i11, i12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @f
    public static final <T> T b(Object obj) {
        try {
            M.y(1, ExifInterface.GPS_DIRECTION_TRUE);
            return obj;
        } catch (ClassCastException e10) {
            ClassLoader classLoader = obj.getClass().getClassLoader();
            M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
            ClassLoader classLoader2 = Object.class.getClassLoader();
            if (M.g(classLoader, classLoader2)) {
                throw e10;
            }
            throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + ((Object) classLoader) + ", base type classloader: " + ((Object) classLoader2), e10);
        }
    }
}
