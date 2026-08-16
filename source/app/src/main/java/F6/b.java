package F6;

import android.widget.EditText;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public interface b {
    void a(int line);

    void b(int line);

    Vector2 c();

    EditText d();

    void e();

    default JavaMetaInfo f() {
        return null;
    }

    int g();

    String getClassName();

    String getCode();
}
