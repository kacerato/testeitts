package w4;

import Ic.C2633l;
import M7.c;
import M7.d;
import M7.h;
import Tc.b;
import android.app.Activity;
import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import x7.f;

public class C15909a extends EditorPanel {

    public static final int f126469Y = 2131034504;

    public static final int f126470Z = 2131034255;

    public static final int f126471a0 = 2;

    public f f126472X;

    public class C2090a implements d {
        public C2090a() {
        }

        @Override
        public void onClick(View v10, Context context, c tbButton) {
            PointF cameraCenterWorld = C15909a.this.f126472X.getCameraCenterWorld();
            C15909a.this.f126472X.k(new x7.c("New Entry", new Vector2(cameraCenterWorld.f32425x, cameraCenterWorld.f32426y)));
        }
    }

    public C15909a() {
        super(null, "Animation Graph editor");
    }

    public static boolean r1(String filePath) {
        return C2633l.b(filePath, ".angr");
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.anim_graph_editor_panel, (ViewGroup) null);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R.id.renderArea);
        f fVar = new f(frameLayout.getContext());
        this.f126472X = fVar;
        frameLayout.addView(fVar, 0, new FrameLayout.LayoutParams(-1, -1));
        x7.c cVar = new x7.c("Entry", new Vector2(60.0f, 200.0f));
        x7.c cVar2 = new x7.c("New State", new Vector2(300.0f, 160.0f));
        this.f126472X.k(cVar);
        this.f126472X.k(cVar2);
        h hVar = new h((LinearLayout) inflate.findViewById(R.id.tools), M());
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Activity A10 = A();
        steppedArrayList.add(new c(R.drawable.new_object, new C2090a(), c.b.Disconnected, A10).T(R.color.white).L(R.color.hierarchy_container_tittle_text_desselected).c0(Theme.i(Theme.T.BACKGROUND), true).m0((int) A10.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) A10.getResources().getDimension(R.dimen.view3d_button_height)));
        hVar.g(steppedArrayList);
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new C15909a();
    }

    @Override
    public void n1() {
        super.n1();
        f fVar = this.f126472X;
        if (fVar != null) {
            fVar.z(this);
        }
    }

    public void q1(String inProjectPath) {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + inProjectPath);
        if (!file.exists() || file.isDirectory()) {
            return;
        }
        f1(b.w(inProjectPath, true));
    }
}
