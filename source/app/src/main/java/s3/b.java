package S3;

import C5.b;
import D5.h;
import F5.c;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.InitScreen.InitActivity;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class b extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().drawAxisCube + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().drawAxisCube = variable.booolean_value.booleanValue();
                b.this.B();
            }
        }
    }

    public class C0552b extends c.n0<EditorSettings.a> {
        public C0552b() {
        }

        @Override
        public void set(EditorSettings.a value) {
            EditorSettings.a().renderBackend = value;
            b.this.B();
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().enableFrameLimitOnEditor + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().enableFrameLimitOnEditor = variable.booolean_value.booleanValue();
                b.this.B();
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().limitFramesWhenEditor + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().limitFramesWhenEditor = Nc.b.N(1, variable.int_value);
                b.this.B();
            }
        }
    }

    public class e implements h {

        public final Context f22979a;

        public e(final Context val$context) {
            this.f22979a = val$context;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            b.this.B();
            Intent intent = new Intent(this.f22979a, (Class<?>) InitActivity.class);
            intent.addFlags(335544320);
            ((AlarmManager) this.f22979a.getSystemService("alarm")).set(1, System.currentTimeMillis() + 100, PendingIntent.getActivity(this.f22979a, 0, intent, 335544320));
            System.exit(0);
        }
    }

    public b() {
        super("Graphics");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        a aVar = new a();
        b.a aVar2 = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(aVar, "Draw 3d axis cube", aVar2));
        steppedArrayList.add(F5.c.i("Rendering API", EditorSettings.a.class, EditorSettings.a().renderBackend, new C0552b()));
        steppedArrayList.add(new C5.b("You need to restart the editor to apply API changes", 12));
        steppedArrayList.add(new C5.b(new c(), "Enable FPS limiter on editor", aVar2));
        steppedArrayList.add(new C5.b(new d(), "On Editor FPS Limit", b.a.SLInt));
        if (!EditorSettings.a().enableFrameLimitOnEditor) {
            steppedArrayList.add(new C5.b("We strongly recommend that you keep the frame limiter enabled on 32 FPS", 12));
        }
        steppedArrayList.add(new C5.b(new e(context), "Restart editor", b.a.Button));
        return steppedArrayList;
    }
}
