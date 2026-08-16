package Z9;

import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.ListJP;

public class C3441a {
    public static void a() {
        JP.endFrame();
        ListJP.endFrame();
        FloatArrayJP.endFrame();
    }

    public static void b() {
        JP.startFrame();
        ListJP.startFrame();
        FloatArrayJP.startFrame();
    }
}
