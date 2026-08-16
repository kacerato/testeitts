package o2;

import android.os.Bundle;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public final class m {

    public static final Set f98470a = new HashSet(Arrays.asList("native", "unity"));

    public static final Map f98471b = new HashMap();

    public static final p2.i f98472c = new p2.i("PlayCoreVersion");

    public static Bundle a() {
        Bundle bundle = new Bundle();
        Map b10 = b();
        bundle.putInt("playcore_version_code", ((Integer) b10.get(SuffixConstants.EXTENSION_java)).intValue());
        if (b10.containsKey("native")) {
            bundle.putInt("playcore_native_version", ((Integer) b10.get("native")).intValue());
        }
        if (b10.containsKey("unity")) {
            bundle.putInt("playcore_unity_version", ((Integer) b10.get("unity")).intValue());
        }
        return bundle;
    }

    public static synchronized Map b() {
        Map map;
        synchronized (m.class) {
            map = f98471b;
            map.put(SuffixConstants.EXTENSION_java, 11004);
        }
        return map;
    }
}
