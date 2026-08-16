package androidx.core.telephony;

import android.os.Build;
import android.telephony.SubscriptionManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class SubscriptionManagerCompat {
    private static Method sGetSlotIndexMethod;

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static int getSlotIndex(int i10) {
            return SubscriptionManager.getSlotIndex(i10);
        }
    }

    private SubscriptionManagerCompat() {
    }

    public static int getSlotIndex(int i10) {
        if (i10 == -1) {
            return -1;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.getSlotIndex(i10);
        }
        try {
            if (sGetSlotIndexMethod == null) {
                Method declaredMethod = SubscriptionManager.class.getDeclaredMethod("getSlotIndex", Integer.TYPE);
                sGetSlotIndexMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Integer num = (Integer) sGetSlotIndexMethod.invoke(null, Integer.valueOf(i10));
            if (num != null) {
                return num.intValue();
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        return -1;
    }
}
