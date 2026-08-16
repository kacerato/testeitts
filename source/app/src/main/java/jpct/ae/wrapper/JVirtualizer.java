package jpct.ae.wrapper;

import android.content.Context;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Virtualizer;

@BA.ShortName("JpctVirtualizer")
public class JVirtualizer extends AbsObjectWrapper<Virtualizer> {
    public void Initialize() {
        setObject(new Virtualizer());
    }

    public void Initialize2(int i10) {
        setObject(new Virtualizer(i10));
    }

    public void cleanUp() {
        ((Virtualizer) getObject()).cleanUp();
    }

    public void finalize() {
        ((Virtualizer) getObject()).finalize();
    }

    public void setContext(Context context) {
        ((Virtualizer) getObject()).setContext(context);
    }
}
