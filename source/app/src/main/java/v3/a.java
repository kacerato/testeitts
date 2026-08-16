package V3;

import C5.b;
import N7.c;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0729a implements D5.a {
        public C0729a() {
        }

        @Override
        public void a(View view, int adapterPosition) {
            c.D().r0();
        }
    }

    public a() {
        super("Panels");
    }

    @Override
    public List<b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new b(new C0729a(), "Reset default panels layout"));
        return steppedArrayList;
    }
}
