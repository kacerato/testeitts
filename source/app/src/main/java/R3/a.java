package R3;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0539a implements D5.h {
        public C0539a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().mouseZoomSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().mouseZoomSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().moveSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().moveSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().selectionWireframeGizmo + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().selectionWireframeGizmo = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().renderDistanceV2 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().renderDistanceV2 = variable.float_value;
                a.this.B();
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().minimalRenderDistanceV2 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().minimalRenderDistanceV2 = variable.float_value;
                a.this.B();
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().cameraFov + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().cameraFov = variable.float_value;
                a.this.B();
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().horizontalSlideSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().horizontalSlideSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().verticalSlideSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().verticalSlideSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().horizontalMouseSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().horizontalMouseSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().verticalMouseSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().verticalMouseSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().zoomSens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().zoomSens = variable.float_value;
                a.this.B();
            }
        }
    }

    public a() {
        super("3D Editor");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new c(), "Selection wireframe gizmo", b.a.SLBoolean));
        d dVar = new d();
        b.a aVar = b.a.SLFloat;
        steppedArrayList.add(new C5.b(dVar, "Render distance", aVar));
        steppedArrayList.add(new C5.b(new e(), "Minimal render distance", aVar));
        steppedArrayList.add(new C5.b(new f(), "FOV", aVar));
        steppedArrayList.add(new C5.b(new g(), "Horizontal slide sensibility", aVar));
        steppedArrayList.add(new C5.b(new h(), "Vertical slide sensibility", aVar));
        steppedArrayList.add(new C5.b(new i(), "Horizontal mouse sensibility", aVar));
        steppedArrayList.add(new C5.b(new j(), "Vertical mouse sensibility", aVar));
        steppedArrayList.add(new C5.b(new k(), "Zoom sensibility", aVar));
        steppedArrayList.add(new C5.b(new C0539a(), "Mouse zoom sensibility", aVar));
        steppedArrayList.add(new C5.b(new b(), "Move sensibility", aVar));
        return steppedArrayList;
    }
}
