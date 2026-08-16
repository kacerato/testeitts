package B7;

import java.util.Map;

public class f {
    public static void a(String urlAddress, Map<String, String> params, int timeOutInSeconds, e listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params == null) {
            throw new NullPointerException("postParams can't be null");
        }
        c.b(b.f(urlAddress, params, timeOutInSeconds), listener);
    }

    public static String b(String urlAddress, String key, Map<String, String> params, int timeOutInSeconds) {
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params != null) {
            return b.d(urlAddress, key, params, timeOutInSeconds);
        }
        throw new NullPointerException("postParams can't be null");
    }

    public static String c(String urlAddress, String key, Map<String, String> params, int timeOutInSeconds, String contentType) {
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params != null) {
            return b.e(urlAddress, key, params, timeOutInSeconds, contentType);
        }
        throw new NullPointerException("postParams can't be null");
    }

    public static String d(String urlAddress, Map<String, String> params, int timeOutInSeconds) {
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params != null) {
            return b.f(urlAddress, params, timeOutInSeconds);
        }
        throw new NullPointerException("postParams can't be null");
    }

    public static String e(String urlAddress, String key, Object params, int timeOutInSeconds) {
        if (urlAddress == null || urlAddress.isEmpty()) {
            throw new NullPointerException("urlAddress can't be empty or null!");
        }
        if (params != null) {
            return b.g(urlAddress, key, params, timeOutInSeconds);
        }
        throw new NullPointerException("postParams can't be null");
    }
}
