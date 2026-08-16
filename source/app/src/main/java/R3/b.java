package R3;

import C5.b;
import D5.h;
import F5.c;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.util.List;

public class b extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a extends c.n0 {
        public a() {
        }

        @Override
        public void a() {
            b.this.A();
        }

        @Override
        public void set(Object value) {
            EditorSettings.a().resolutionMode = (Camera.H) value;
            b.this.B();
        }
    }

    public class C0540b implements h {
        public C0540b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().cameraResolutionPercentage + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().cameraResolutionPercentage = variable.float_value;
                b.this.B();
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().fixedResolutionPixelsWidth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().fixedResolutionPixelsWidth = variable.int_value;
                b.this.B();
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().fixedResolutionPixelsHeight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().fixedResolutionPixelsHeight = variable.int_value;
                b.this.B();
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().freeResolutionPixels + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                b.this.B();
                EditorSettings.a().freeResolutionPixels = variable.int_value;
            }
        }
    }

    public static class f {

        public static final int[] f22562a;

        static {
            int[] iArr = new int[Camera.H.values().length];
            f22562a = iArr;
            try {
                iArr[Camera.H.Percentage.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22562a[Camera.H.FixedResolution.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22562a[Camera.H.FreeAspectResolution.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b() {
        super("Editor Resolution");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.i("Mode", Camera.H.class, EditorSettings.a().resolutionMode, new a()));
        int i10 = f.f22562a[EditorSettings.a().resolutionMode.ordinal()];
        if (i10 == 1) {
            steppedArrayList.add(new C5.b(new C0540b(), context.getResources().getString(R.string.activity_editor_inspector_camera_renderpencentage), b.a.SLFloat01));
        } else if (i10 == 2) {
            c cVar = new c();
            b.a aVar = b.a.SLInt;
            steppedArrayList.add(new C5.b(cVar, F2.d.f6276t1, aVar));
            steppedArrayList.add(new C5.b(new d(), "Heigth", aVar));
        } else if (i10 == 3) {
            steppedArrayList.add(new C5.b(new e(), "Pixels", b.a.SLInt));
        }
        return steppedArrayList;
    }
}
