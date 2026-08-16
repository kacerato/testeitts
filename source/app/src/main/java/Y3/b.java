package Y3;

import android.content.Context;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

@Deprecated
public class b extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements com.itsmagic.engine.Engines.Engine.Settings.c {
        public a() {
        }

        @Override
        public void a() {
            b.this.A();
        }
    }

    public b() {
        super("CloudSync");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a A10 = com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a.A();
        if (A10 != null) {
            steppedArrayList.addAll(A10.y().a(A10, context, new a()));
        }
        return steppedArrayList;
    }
}
