package S3;

import C5.b;
import D5.h;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.InitScreen.InitActivity;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class d extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().uiScale + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().uiScale = variable.float_value;
                d.this.B();
            }
        }
    }

    public class b implements h {

        public final Context f22984a;

        public b(final Context val$context) {
            this.f22984a = val$context;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            d.this.B();
            Intent intent = new Intent(this.f22984a, (Class<?>) InitActivity.class);
            intent.addFlags(335544320);
            ((AlarmManager) this.f22984a.getSystemService("alarm")).set(1, System.currentTimeMillis() + 100, PendingIntent.getActivity(this.f22984a, 0, intent, 335544320));
            System.exit(0);
        }
    }

    public d() {
        super("UI");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new a(), "Interface scale", b.a.SLFloat));
        steppedArrayList.add(new C5.b("You need to reopen the editor to apply UI scaling", 12));
        steppedArrayList.add(new C5.b(new b(context), "Restart editor", b.a.Button));
        return steppedArrayList;
    }
}
