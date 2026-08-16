package f5;

import M7.c;
import M7.p;
import M7.r;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.SnapToSurfaceConfigs;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine2.R;
import gb.C13317e;
import java.util.List;
import l5.C14052a;

public class C13188c extends C13189d {

    public final o f86082g;

    public class a implements r {
        public a() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            MousePicker.blockSelectionForMidSecond();
            W7.b.f27308h.h(null);
        }
    }

    public class b implements r {

        public final Panel3DView f86084a;

        public b(final Panel3DView val$panel3DView) {
            this.f86084a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            this.f86084a.useBoundingCenter = value;
            if (isFromUserAction) {
                if (value) {
                    N7.c.v0(Lang.l(Lang.T.AXES_NOW_USE_OBJECT_CENTER));
                } else {
                    N7.c.v0(Lang.l(Lang.T.AXES_NOW_USE_OBJECT_PIVOT));
                }
            }
        }
    }

    public class C1599c implements r {

        public final Panel3DView f86086a;

        public C1599c(final Panel3DView val$panel3DView) {
            this.f86086a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            this.f86086a.gridMove = value;
            if (isFromUserAction) {
                if (value) {
                    N7.c.v0(Lang.l(Lang.T.GRID_SNAP_ENABLED));
                } else {
                    N7.c.v0(Lang.l(Lang.T.GRID_SNAP_DISABLED));
                }
            }
        }
    }

    public class d implements r {

        public final Panel3DView f86088a;

        public d(final Panel3DView val$panel3DView) {
            this.f86088a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            this.f86088a.useGlobalOrientation = value;
            if (isFromUserAction) {
                if (value) {
                    N7.c.v0(Lang.l(Lang.T.AXIS_ORIENTATION_CHANGED_TO_GLOBAL));
                } else {
                    N7.c.v0(Lang.l(Lang.T.AXIS_ORIENTATION_CHANGED_TO_LOCAL));
                }
            }
        }
    }

    public static class e {

        public static final int[] f86090a;

        static {
            int[] iArr = new int[Panel3DView.j.values().length];
            f86090a = iArr;
            try {
                iArr[Panel3DView.j.SnapToSurface.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86090a[Panel3DView.j.Rotation.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86090a[Panel3DView.j.SnapToScale.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class f implements M7.d {

        public final Panel3DView f86091a;

        public f(final Panel3DView val$panel3DView) {
            this.f86091a = val$panel3DView;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            try {
                if (C13317e.J(C13188c.this.f86082g.get())) {
                    this.f86091a.s1();
                } else {
                    N7.c.v0("Please, select a something to focus the camera.");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class g implements r {

        public final Panel3DView f86093a;

        public g(final Panel3DView val$panel3DView) {
            this.f86093a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            this.f86093a.f71470k0 = value;
        }
    }

    public class h implements r {

        public final Panel3DView f86095a;

        public h(final Panel3DView val$panel3DView) {
            this.f86095a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f86095a.S1(Panel3DView.j.Disable, false, true);
            }
        }
    }

    public class i implements r {

        public final Panel3DView f86096a;

        public i(final Panel3DView val$panel3DView) {
            this.f86096a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            this.f86096a.snapToSurfaceConfigs.lookRotation = value;
        }
    }

    public class j implements r {

        public final Panel3DView f86097a;

        public final M7.o f86098b;

        public j(final Panel3DView val$panel3DView, final M7.o val$stsLookRotationButton) {
            this.f86097a = val$panel3DView;
            this.f86098b = val$stsLookRotationButton;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f86097a.S1(Panel3DView.j.SnapToSurface, false, true);
                SnapToSurfaceConfigs snapToSurfaceConfigs = this.f86097a.snapToSurfaceConfigs;
                snapToSurfaceConfigs.snapToSurface = true;
                snapToSurfaceConfigs.useOldAxisMode = true;
                this.f86098b.p();
            }
        }
    }

    public class k implements r {

        public final Panel3DView f86099a;

        public final M7.o f86100b;

        public k(final Panel3DView val$panel3DView, final M7.o val$stsLookRotationButton) {
            this.f86099a = val$panel3DView;
            this.f86100b = val$stsLookRotationButton;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f86099a.S1(Panel3DView.j.SnapToSurface, false, true);
                SnapToSurfaceConfigs snapToSurfaceConfigs = this.f86099a.snapToSurfaceConfigs;
                snapToSurfaceConfigs.snapToSurface = false;
                snapToSurfaceConfigs.useOldAxisMode = true;
                this.f86100b.g();
            }
        }
    }

    public class l implements r {

        public final Panel3DView f86101a;

        public final M7.o f86102b;

        public l(final Panel3DView val$panel3DView, final M7.o val$stsLookRotationButton) {
            this.f86101a = val$panel3DView;
            this.f86102b = val$stsLookRotationButton;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f86101a.S1(Panel3DView.j.Rotation, false, true);
                Panel3DView panel3DView = this.f86101a;
                SnapToSurfaceConfigs snapToSurfaceConfigs = panel3DView.snapToSurfaceConfigs;
                snapToSurfaceConfigs.snapToSurface = false;
                snapToSurfaceConfigs.useOldAxisMode = true;
                panel3DView.snapToScaleConfigs.f85049a = false;
                this.f86102b.g();
            }
        }
    }

    public class m implements r {

        public final Panel3DView f86103a;

        public final M7.o f86104b;

        public m(final Panel3DView val$panel3DView, final M7.o val$stsLookRotationButton) {
            this.f86103a = val$panel3DView;
            this.f86104b = val$stsLookRotationButton;
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                this.f86103a.S1(Panel3DView.j.SnapToScale, false, true);
                this.f86103a.snapToScaleConfigs.f85049a = false;
                this.f86104b.g();
            }
        }
    }

    public class n implements M7.d {
        public n() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            GameObject gameObject;
            try {
                if (C13317e.J(C13188c.this.f86082g.get()) && com.itsmagic.engine.Activities.Editor.Utils.r.b(C13188c.this.f86082g.get())) {
                    try {
                        gameObject = C13188c.this.f86082g.get().clone();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        Toast.makeText(context, "Error:" + e10.getMessage(), 0).show();
                        gameObject = null;
                    }
                    if (gameObject != null) {
                        if (C13188c.this.f86082g.get().f79294k != null) {
                            int U02 = C13188c.this.f86082g.get().f79294k.U0(C13188c.this.f86082g.get()) + 1;
                            gameObject.f79294k = null;
                            com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(gameObject, C13188c.this.f86082g.get().f79294k, U02));
                            W7.b.f27308h.h(gameObject);
                            return;
                        }
                        int s10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.s(C13188c.this.f86082g.get()) + 1;
                        gameObject.f79294k = null;
                        com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(gameObject, C13188c.this.f86082g.get().f79294k, s10));
                        W7.b.f27308h.h(gameObject);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public interface o {
        GameObject get();
    }

    public C13188c(o getObject) {
        this.f86082g = getObject;
    }

    public static void I(GameObject gameObject, List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        if (J(gameObject)) {
            M7.o oVar = new M7.o(R.drawable.axis_disabled, new h(panel3DView), c.b.Disconnected, activity);
            oVar.N0(C13189d.f86106b).B0(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
            oVar.y0(true, false);
            elements.add(oVar);
            return;
        }
        M7.o oVar2 = new M7.o(R.drawable.axis_v3_position_look_rotation, new i(panel3DView), c.b.Disconnected, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.o N02 = oVar2.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        oVar2.y0(panel3DView.snapToSurfaceConfigs.lookRotation, false);
        M7.o oVar3 = new M7.o(R.drawable.axis_v3_position, new j(panel3DView, oVar2), c.b.Top, activity);
        oVar3.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        k kVar = new k(panel3DView, oVar2);
        c.b bVar3 = c.b.Middle;
        M7.o oVar4 = new M7.o(R.drawable.axis_v4_position, kVar, bVar3, activity);
        oVar4.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar5 = new M7.o(R.drawable.axis_v3_rotation, new l(panel3DView, oVar2), bVar3, activity);
        oVar5.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar6 = new M7.o(R.drawable.axis_v4_scale, new m(panel3DView, oVar2), c.b.Bottom, activity);
        oVar6.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        p pVar = new p(activity);
        pVar.s(oVar3);
        pVar.s(oVar4);
        pVar.s(oVar5);
        pVar.s(oVar6);
        int i10 = e.f86090a[panel3DView.F1().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                pVar.B(oVar5);
                oVar2.g();
            } else if (i10 != 3) {
                panel3DView.S1(Panel3DView.j.SnapToSurface, false, true);
            } else {
                pVar.B(oVar6);
                oVar2.g();
            }
        } else if (panel3DView.snapToSurfaceConfigs.snapToSurface) {
            pVar.B(oVar3);
            oVar2.p();
        } else {
            pVar.B(oVar4);
            oVar2.g();
        }
        elements.add(pVar);
        pVar.s(new M7.k(Nc.b.l0(2.0f, activity)));
        elements.add(oVar2);
    }

    public static boolean J(GameObject gameObject) {
        PrefabLink prefabLink;
        if (gameObject == null || !C13317e.J(gameObject) || (prefabLink = (PrefabLink) gameObject.c0(Component.e.PrefabLink)) == null) {
            return false;
        }
        return prefabLink.isChild();
    }

    @Override
    public String i() {
        return Lang.l(Lang.T.OBJECT_MODE);
    }

    @Override
    public void n(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.n(elements, activity, panel3DView);
        if (!J(this.f86082g.get())) {
            C14052a.e(elements, activity, 1.0f);
        }
        n nVar = new n();
        c.b bVar = c.b.Disconnected;
        M7.c cVar = new M7.c(R.drawable.paste, nVar, bVar, activity);
        Ac.b bVar2 = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar2);
        Ac.b bVar3 = C13189d.f86107c;
        elements.add(U10.M(bVar3).m0((int) (((int) activity.getResources().getDimension(R.dimen.view3d_button_width)) * 1.0f)).Y((int) (((int) activity.getResources().getDimension(R.dimen.view3d_button_height)) * 1.0f)));
        elements.add(new M7.o(R.drawable.unselect, new a(), bVar, activity).N0(bVar2).B0(bVar3).m0((int) (((int) activity.getResources().getDimension(R.dimen.view3d_button_width)) * 1.0f)).Y((int) (((int) activity.getResources().getDimension(R.dimen.view3d_button_height)) * 1.0f)));
    }

    @Override
    public void o(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        I(this.f86082g.get(), elements, activity, panel3DView);
    }

    @Override
    public void p(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        C14052a.h(elements, activity, panel3DView);
        C14052a.d(elements, activity, panel3DView);
        C14052a.g(elements, activity, panel3DView, c.b.Top);
        b bVar = new b(panel3DView);
        c.b bVar2 = c.b.Middle;
        M7.o oVar = new M7.o(R.drawable.boundinc_center_v2, bVar, bVar2, activity);
        Ac.b bVar3 = C13189d.f86106b;
        M7.o N02 = oVar.N0(bVar3);
        Ac.b bVar4 = C13189d.f86107c;
        N02.B0(bVar4).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        oVar.y0(panel3DView.useBoundingCenter, false);
        elements.add(oVar);
        M7.o oVar2 = new M7.o(R.drawable.sui_ratio, new C1599c(panel3DView), bVar2, activity);
        oVar2.N0(bVar3).B0(bVar4).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        oVar2.y0(panel3DView.gridMove, false);
        elements.add(oVar2);
        M7.o oVar3 = new M7.o(R.drawable.letter_l_v2, R.drawable.letter_g_v2, new d(panel3DView), c.b.Bottom, activity);
        oVar3.N0(bVar3).B0(bVar3).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        oVar3.y0(panel3DView.useGlobalOrientation, false);
        elements.add(oVar3);
    }

    @Override
    public void r(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        M7.c cVar = new M7.c(R.drawable.camera_zoom_v2, new f(panel3DView), c.b.Left, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        elements.add(U10.M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.o(R.drawable.camera_lock_focus_v2, new g(panel3DView), c.b.Right, activity).y0(panel3DView.f71470k0, false).N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        C14052a.c(elements, activity, panel3DView);
    }
}
