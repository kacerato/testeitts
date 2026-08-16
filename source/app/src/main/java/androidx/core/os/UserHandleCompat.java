package androidx.core.os;

import android.os.UserHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class UserHandleCompat {
    private static Method sGetUserIdMethod;
    private static Constructor<UserHandle> sUserHandleConstructor;

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static UserHandle getUserHandleForUid(int i10) {
            return UserHandle.getUserHandleForUid(i10);
        }
    }

    private UserHandleCompat() {
    }

    private static Method getGetUserIdMethod() throws NoSuchMethodException {
        if (sGetUserIdMethod == null) {
            Method declaredMethod = UserHandle.class.getDeclaredMethod("getUserId", Integer.TYPE);
            sGetUserIdMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return sGetUserIdMethod;
    }

    private static Constructor<UserHandle> getUserHandleConstructor() throws NoSuchMethodException {
        if (sUserHandleConstructor == null) {
            Constructor<UserHandle> declaredConstructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            sUserHandleConstructor = declaredConstructor;
            declaredConstructor.setAccessible(true);
        }
        return sUserHandleConstructor;
    }

    public static UserHandle getUserHandleForUid(int i10) {
        return Api24Impl.getUserHandleForUid(i10);
    }
}
