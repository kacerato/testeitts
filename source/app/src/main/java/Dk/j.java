package dk;

import java.security.PrivateKey;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class j {
    public static C12946b a(PrivateKey privateKey, String str) {
        return new C12946b(privateKey, str);
    }

    public static C12946b b(PrivateKey privateKey, Map<String, Object> map) {
        return new C12946b(privateKey, (Map<String, Object>) Collections.unmodifiableMap(new HashMap(map)));
    }
}
