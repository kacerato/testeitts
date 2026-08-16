package p000if;

import com.jme3.renderer.opengl.GL;
import com.jme3.renderer.opengl.GLRenderer;
import java.lang.reflect.Field;
import java.util.logging.Logger;

public final class C13721q {

    public static final Logger f92150a = Logger.getLogger(C13721q.class.getName());

    public static final boolean f92151b = false;

    public static GL a(GLRenderer gLRenderer) {
        try {
            Field declaredField = GLRenderer.class.getDeclaredField("gl");
            declaredField.setAccessible(true);
            try {
                return (GL) declaredField.get(gLRenderer);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }
}
