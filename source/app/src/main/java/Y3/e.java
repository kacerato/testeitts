package Y3;

import android.content.Context;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class e extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements com.itsmagic.engine.Engines.Engine.Settings.c {
        public a() {
        }

        @Override
        public void a() {
            e.this.A();
        }
    }

    public e() {
        super("Java");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.addAll(K8.a.l().e().a(context, new a()));
        return steppedArrayList;
    }
}
