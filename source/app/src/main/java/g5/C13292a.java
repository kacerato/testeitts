package g5;

import M7.c;
import M7.k;
import M7.o;
import M7.p;
import M7.r;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine2.R;
import f5.C13189d;
import java.util.List;
import l5.C14052a;
import u4.C15575a;

public class C13292a extends C13189d {

    public final AnimationPlayer f88133g;

    public final com.itsmagic.engine.Engines.Engine.Animation.d f88134h;

    public boolean f88135i;

    public class C1617a implements M7.d {

        public final Panel3DView f88136a;

        public C1617a(final Panel3DView val$panel3DView) {
            this.f88136a = val$panel3DView;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            this.f88136a.s1();
        }
    }

    public class b implements r {

        public final Panel3DView f88138a;

        public b(final Panel3DView val$panel3DView) {
            this.f88138a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            this.f88138a.f71470k0 = value;
        }
    }

    public class c implements r {

        public final Panel3DView f88140a;

        public c(final Panel3DView val$panel3DView) {
            this.f88140a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f88140a.S1(Panel3DView.j.Disable, false, true);
            }
        }
    }

    public class d implements r {

        public final Panel3DView f88142a;

        public d(final Panel3DView val$panel3DView) {
            this.f88142a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f88142a.S1(Panel3DView.j.Position, false, true);
            }
        }
    }

    public class e implements r {

        public final Panel3DView f88144a;

        public e(final Panel3DView val$panel3DView) {
            this.f88144a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f88144a.S1(Panel3DView.j.Rotation, false, true);
            }
        }
    }

    public class f implements r {

        public final Panel3DView f88146a;

        public f(final Panel3DView val$panel3DView) {
            this.f88146a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f88146a.S1(Panel3DView.j.Scale, false, true);
            }
        }
    }

    public static class g {

        public static final int[] f88148a;

        static {
            int[] iArr = new int[Panel3DView.j.values().length];
            f88148a = iArr;
            try {
                iArr[Panel3DView.j.Disable.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f88148a[Panel3DView.j.Position.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f88148a[Panel3DView.j.Rotation.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f88148a[Panel3DView.j.Scale.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public C13292a(AnimationPlayer ap, com.itsmagic.engine.Engines.Engine.Animation.d animation) {
        if (animation == null) {
            throw new RuntimeException();
        }
        this.f88133g = ap;
        this.f88134h = animation;
        J();
    }

    public final void H(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        o oVar = new o(R.drawable.axis_disabled, new c(panel3DView), c.b.Disconnected, activity);
        Ac.b bVar = C13189d.f86106b;
        o N02 = oVar.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        o oVar2 = new o(R.drawable.pressure_v2, new d(panel3DView), c.b.Top, activity);
        oVar2.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        o oVar3 = new o(R.drawable.axis_rotation, new e(panel3DView), c.b.Middle, activity);
        oVar3.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        o oVar4 = new o(R.drawable.axis_scale, new f(panel3DView), c.b.Bottom, activity);
        oVar4.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        p pVar = new p(activity);
        pVar.E(false);
        pVar.s(oVar);
        pVar.s(new k(Nc.b.l0(2.0f, activity)));
        pVar.s(oVar2);
        pVar.s(oVar3);
        pVar.s(oVar4);
        int i10 = g.f88148a[panel3DView.F1().ordinal()];
        if (i10 == 1) {
            pVar.B(oVar);
        } else if (i10 == 2) {
            pVar.B(oVar2);
        } else if (i10 == 3) {
            pVar.B(oVar3);
        } else if (i10 == 4) {
            pVar.B(oVar4);
        }
        elements.add(pVar);
    }

    public boolean I() {
        UserController userController = W7.b.f27306f.f2461d;
        return userController != null && userController.T();
    }

    public void J() {
        this.f88135i = false;
    }

    public final void K() {
        AnimationPlayer animationPlayer = this.f88133g;
        if (animationPlayer != null) {
            animationPlayer.saveAnimations();
        }
    }

    public final void L() {
        if (this.f88135i) {
            return;
        }
        this.f88135i = true;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public void e() {
        L();
    }

    @Override
    public MousePicker.i g() {
        return MousePicker.f71420T;
    }

    @Override
    public String i() {
        return "Edit - " + Tc.b.O(this.f88134h.getName());
    }

    @Override
    public void o(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
        elements.add(new k(Nc.b.l0(2.0f, activity)));
        H(elements, activity, panel3DView);
    }

    @Override
    public void p(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new k(Nc.b.l0(2.0f, activity)));
        C14052a.h(elements, activity, panel3DView);
    }

    @Override
    public void r(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new k(Nc.b.l0(2.0f, activity)));
        M7.c cVar = new M7.c(R.drawable.camera_zoom_v2, new C1617a(panel3DView), c.b.Left, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        elements.add(U10.M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new o(R.drawable.camera_lock_focus_v2, new b(panel3DView), c.b.Right, activity).y0(panel3DView.f71470k0, false).N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new k(Nc.b.l0(2.0f, activity)));
        C14052a.d(elements, activity, panel3DView);
    }

    @Override
    public void s(Activity activity, Panel3DView panel3DView) {
        J();
        C15575a.a();
        A5.a.y1();
    }

    @Override
    public void t() {
        K();
    }

    @Override
    public void u(Activity activity, Panel3DView panel3DView) {
        this.f88133g.setSelectedAnimation(this.f88134h);
        C15575a.d(this.f88134h, this.f88133g);
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a m22 = com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.m2();
        if (m22 != null) {
            N7.c.D().v0(m22);
        }
        panel3DView.S1(Panel3DView.j.Disable, true, true);
        J();
    }
}
