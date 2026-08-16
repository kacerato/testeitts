package com.android.tools.r8.threading;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5325If;
import java.util.Iterator;
import java.util.List;

public abstract class a {
    public static List<String> a() {
        return AbstractC7552hC.a("com.android.tools.r8.threading.providers.blocking.ThreadingModuleBlockingProvider", "com.android.tools.r8.threading.providers.singlethreaded.ThreadingModuleSingleThreadedProvider");
    }

    public static ThreadingModuleProvider b() {
        Iterator<String> it = a().iterator();
        while (it.hasNext()) {
            try {
                return (ThreadingModuleProvider) Class.forName(it.next()).getDeclaredConstructor(null).newInstance(null);
            } catch (ClassNotFoundException unused) {
            } catch (ReflectiveOperationException e10) {
                throw new C5325If("Failure creating provider for the threading module", e10);
            }
        }
        throw new C5325If("Failure to find a provider for the threading module");
    }
}
