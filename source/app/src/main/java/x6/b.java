package X6;

import F7.i;
import F7.l;
import android.content.res.ColorStateList;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine2.R;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import r4.C15147a;

public class b extends EditorPanel {

    public static final String f28013d0 = "ObjectSelectorPanel";

    public final f f28014X;

    public l f28015Y;

    public RecyclerView f28016Z;

    public GameObject f28017a0;

    public GameObject f28018b0;

    public Button f28019c0;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class C0780b extends AbstractViewOnClickListenerC12733a {
        public C0780b() {
        }

        @Override
        public void click(View v10) {
            b.this.f28014X.d(null);
            b.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            b.this.f28014X.d(b.this.f28017a0);
            b.this.R0();
        }
    }

    public class d extends F7.a {
        public d() {
        }

        @Override
        public void a() {
            if (b.this.f28015Y != null) {
                if (b.this.f28015Y.o() == null) {
                    if (C13317e.J(b.this.f28017a0)) {
                        b.this.A1();
                    }
                } else {
                    if (!(b.this.f28015Y.o() instanceof X6.a) || ((X6.a) b.this.f28015Y.o()).u() == b.this.f28017a0) {
                        return;
                    }
                    b.this.A1();
                }
            }
        }

        @Override
        public List<i> c() {
            return b.this.x1();
        }

        @Override
        public void d(i element, boolean open) {
            if (element instanceof X6.a) {
                GameObject u10 = ((X6.a) element).u();
                if (C13317e.J(u10)) {
                    u10.getEditor().i(open);
                }
            }
        }

        @Override
        public void e(i element) {
            if (element instanceof X6.a) {
                b.this.f28017a0 = ((X6.a) element).u();
                b.this.E1();
            }
        }

        @Override
        public List<i> f(i eElement) {
            return b.this.z1(eElement);
        }
    }

    public static class e implements f {
        @Override
        public boolean a(GameObject gameObject) {
            return true;
        }

        @Override
        public boolean b(GameObject gameObject) {
            return true;
        }

        @Override
        public String c(GameObject gameObject) {
            return gameObject.getName();
        }

        @Override
        public void d(GameObject object) {
        }
    }

    public interface f {
        boolean a(GameObject gameObject);

        boolean b(GameObject gameObject);

        String c(GameObject gameObject);

        void d(GameObject object);
    }

    public b(String tittle, f listener) {
        super(null, tittle);
        this.f28015Y = null;
        super.e1(false);
        this.f28014X = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }

    public void A1() {
        GameObject u10;
        l lVar = this.f28015Y;
        if (lVar != null) {
            if (this.f28017a0 == null) {
                lVar.D(null);
                return;
            }
            for (int i10 = 0; i10 < this.f28015Y.k(); i10++) {
                X6.a aVar = (X6.a) this.f28015Y.j(i10);
                if (aVar != null && (u10 = aVar.u()) != null && u10 == this.f28017a0) {
                    this.f28015Y.D(aVar);
                    return;
                }
            }
        }
    }

    public static b C1(View anchor, C15147a.e anchorSide, f listener) {
        return D1(anchor, anchorSide, "Select object", listener);
    }

    public static b D1(View anchor, C15147a.e anchorSide, String tittle, f listener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        float g10 = N7.c.g(300);
        float f10 = N7.c.f(300);
        b bVar = new b(tittle, listener);
        C15147a.g(anchor, bVar, anchorSide, g10, f10).N0(false, false, true, false);
        return bVar;
    }

    public List<i> x1() {
        GameObject gameObject;
        LinkedList linkedList = new LinkedList();
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world != null) {
            List<GameObject> q10 = world.q();
            for (int i10 = 0; i10 < q10.size(); i10++) {
                GameObject gameObject2 = q10.get(i10);
                if (C13317e.J(gameObject2) && (((gameObject = this.f28018b0) == null || gameObject == gameObject2 || gameObject.d1(gameObject2) || gameObject2.d1(this.f28018b0)) && this.f28014X.b(gameObject2))) {
                    X6.a aVar = new X6.a(gameObject2, this.f28014X);
                    aVar.r(!gameObject2.z0().isEmpty());
                    aVar.f6684f.f6678c = gameObject2.getEditor().e();
                    linkedList.add(aVar);
                }
            }
        }
        return linkedList;
    }

    private void y1(GameObject gameObject, List<i> elements) {
        GameObject gameObject2;
        if (gameObject != null) {
            List<GameObject> z02 = gameObject.z0();
            for (int i10 = 0; i10 < z02.size(); i10++) {
                GameObject gameObject3 = z02.get(i10);
                if (C13317e.J(gameObject3) && (((gameObject2 = this.f28018b0) == null || gameObject2 == gameObject3 || gameObject2.d1(gameObject3) || gameObject3.d1(this.f28018b0)) && this.f28014X.b(gameObject3))) {
                    X6.a aVar = new X6.a(gameObject3, this.f28014X);
                    aVar.r(!gameObject3.z0().isEmpty());
                    aVar.f6684f.f6678c = gameObject3.getEditor().e();
                    elements.add(aVar);
                }
            }
        }
    }

    public List<i> z1(i element) {
        LinkedList linkedList = new LinkedList();
        if (element instanceof X6.a) {
            y1(((X6.a) element).u(), linkedList);
        }
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            linkedList.get(i10).q(element.e() + 1);
        }
        return linkedList;
    }

    public void B1(GameObject focusObject) {
        this.f28018b0 = focusObject;
        l lVar = this.f28015Y;
        if (lVar != null) {
            lVar.v();
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.object_selector_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        this.f28016Z = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        ((Button) inflate.findViewById(R.id.none)).setOnClickListener(new C0780b());
        Button button = (Button) inflate.findViewById(R.id.confirm);
        this.f28019c0 = button;
        button.setOnClickListener(new c());
        E1();
        this.f28015Y = new l(this.f28016Z, new d());
        return inflate;
    }

    public final void E1() {
        GameObject gameObject = this.f28017a0;
        if (gameObject == null || !this.f28014X.a(gameObject)) {
            this.f28019c0.setClickable(false);
            this.f28019c0.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.CARD)));
        } else {
            this.f28019c0.setClickable(true);
            this.f28019c0.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY)));
        }
    }
}
