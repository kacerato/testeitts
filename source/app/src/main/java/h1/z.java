package h1;

import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;

public final class z {
    @Nullable
    public static Object a(Class cls, String str, x... xVarArr) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        return c(cls, "isIsolated", null, false, xVarArr);
    }

    @Nullable
    public static Object b(String str, String str2, ClassLoader classLoader, x... xVarArr) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, ClassNotFoundException {
        return c(classLoader.loadClass("com.google.android.gms.common.security.ProviderInstallerImpl"), "reportRequestStats2", null, false, xVarArr);
    }

    @Nullable
    public static Object c(Class cls, String str, @Nullable Object obj, boolean z10, x... xVarArr) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        int length = xVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        for (int i10 = 0; i10 < xVarArr.length; i10++) {
            x xVar = xVarArr[i10];
            xVar.getClass();
            clsArr[i10] = xVar.b();
            objArr[i10] = xVarArr[i10].c();
        }
        return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
    }
}
