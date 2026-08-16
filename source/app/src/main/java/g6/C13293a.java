package g6;

import F7.i;
import G7.g;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Utils.HideObjectFromPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine2.R;
import gb.C13317e;
import java.lang.ref.WeakReference;

public class C13293a extends i {

    public static final int f88149n = 1;

    public static final F7.e f88150o = new F7.e();

    public WeakReference<GameObject> f88151m;

    public class C1618a implements g {
        public C1618a() {
        }

        @Override
        public void a(boolean value) {
            GameObject v10 = C13293a.this.v();
            if (v10 != null) {
                v10.O1(value);
            }
        }

        @Override
        public boolean isChecked() {
            GameObject v10 = C13293a.this.v();
            if (v10 != null) {
                return v10.j1();
            }
            return false;
        }
    }

    public class b implements g {
        public b() {
        }

        @Override
        public void a(boolean value) {
            GameObject v10 = C13293a.this.v();
            if (v10 != null) {
                v10.H1(value);
            }
        }

        @Override
        public boolean isChecked() {
            GameObject v10 = C13293a.this.v();
            if (v10 != null) {
                return v10.i1();
            }
            return false;
        }
    }

    public class c implements g {
        public c() {
        }

        @Override
        public void a(boolean value) {
            GameObject v10 = C13293a.this.v();
            if (v10 != null) {
                v10.setEnabled(value);
            }
        }

        @Override
        public boolean isChecked() {
            GameObject v10 = C13293a.this.v();
            if (v10 != null) {
                return v10.isEnabled();
            }
            return false;
        }
    }

    public class d implements F7.c {
        public d() {
        }

        @Override
        public void a(i eElement, Context context, F7.e textViewAppearance) {
            GameObject v10;
            AreaEditorComponent areaEditorComponent;
            if (!(eElement instanceof C13293a) || (v10 = ((C13293a) eElement).v()) == null) {
                textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
                return;
            }
            if (com.itsmagic.engine.Engines.Engine.World.a.y() && (areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class)) != null && areaEditorComponent.getMode() == AreaEditorComponent.s.BakePreview && v10.d0(HideObjectFromPanel.class) == null) {
                textViewAppearance.f6655a = Theme.i(Theme.T.MID_TEXT_COLOR);
                return;
            }
            ColorINT colorINT = v10.objectsPanelColor;
            if (colorINT != null) {
                textViewAppearance.f6655a = colorINT.intColor;
                return;
            }
            if (!v10.isEnabled()) {
                textViewAppearance.f6655a = Theme.i(Theme.T.BACKGROUND);
            } else if (C13293a.this.w(v10)) {
                textViewAppearance.f6655a = Theme.i(Theme.T.MID_TEXT_COLOR);
            } else {
                textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
            }
        }
    }

    public C13293a(GameObject gameObject, boolean showEnableToggle, boolean showVisionBtn, boolean showTouchButton) {
        super(gameObject.getName(), new C13295c());
        if (!gameObject.c1()) {
            if (showVisionBtn) {
                G7.d dVar = new G7.d(new C1618a());
                dVar.o(R.drawable.vision);
                dVar.q(R.drawable.vision);
                dVar.n(Theme.i(Theme.T.BACKGROUND));
                dVar.p(Theme.i(Theme.T.HIGH_ICON_TINT));
                dVar.r(4);
                super.b(dVar);
            }
            if (showTouchButton) {
                G7.d dVar2 = new G7.d(new b());
                dVar2.o(R.drawable.touch);
                dVar2.q(R.drawable.touch);
                dVar2.n(Theme.i(Theme.T.BACKGROUND));
                dVar2.p(Theme.i(Theme.T.HIGH_ICON_TINT));
                dVar2.r(4);
                super.b(dVar2);
            }
        }
        if (!gameObject.c1() && showEnableToggle) {
            super.a(new G7.f(new c()));
        }
        this.f6688j = new d();
        this.f88151m = new WeakReference<>(gameObject);
    }

    @Override
    public String g() {
        if (this.f88151m.get() == null) {
            return null;
        }
        GameObject gameObject = this.f88151m.get();
        if (C13317e.J(gameObject)) {
            return gameObject.getName();
        }
        return null;
    }

    public GameObject v() {
        if (this.f88151m.get() == null) {
            return null;
        }
        GameObject gameObject = this.f88151m.get();
        if (C13317e.J(gameObject)) {
            return gameObject;
        }
        return null;
    }

    public final boolean w(GameObject gameObject) {
        PrefabLink prefabLink;
        if (!C13317e.J(gameObject) || (prefabLink = (PrefabLink) gameObject.c0(Component.e.PrefabLink)) == null) {
            return false;
        }
        return prefabLink.isChild();
    }
}
