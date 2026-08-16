package B7;

import com.google.firebase.analytics.FirebaseAnalytics;

public class c {

    public enum a {
        Success,
        Error,
        Unknown
    }

    public static a a(String result) {
        try {
            return d.d(d.e(result), "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H) ? a.Success : a.Error;
        } catch (Exception unused) {
            System.out.println("Failed to deserialize:" + result);
            return a.Error;
        }
    }

    public static void b(String result, e listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        try {
            if (d.d(d.e(result), "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H)) {
                listener.b(result);
            } else {
                listener.a(result);
            }
        } catch (Exception unused) {
            System.out.println("Failed to deserialize:" + result);
            listener.a(result);
        }
    }
}
