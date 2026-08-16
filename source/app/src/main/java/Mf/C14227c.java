package mf;

import com.jme3.bullet.debug.BulletDebugAppState;
import java.util.logging.Logger;

public class C14227c implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96959b = Logger.getLogger(C14227c.class.getName());

    public final Class<?> f96960a;

    public C14227c(Class<?> cls) {
        this.f96960a = cls;
    }

    @Override
    public boolean displayObject(Object obj) {
        return this.f96960a.isAssignableFrom(obj.getClass());
    }
}
