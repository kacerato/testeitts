package gb;

import C5.b;
import Ic.C2633l;
import Ic.InterfaceC2640t;
import Ic.z;
import JAVARuntime.Runnable;
import M7.c;
import X6.b;
import Z6.c;
import Z6.e;
import Z6.f;
import Z6.g;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Activities.Editor.Utils.A;
import com.itsmagic.engine.Activities.Editor.Utils.B;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.ObjectLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.Armature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind.WindEffect;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d7.C12881a;
import dd.C12908b;
import ec.EnumC13053a;
import hb.C13440c;
import ib.C13600g;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import jd.C13823b;
import n4.C14349a;
import o.C14474a;
import org.ITsMagic.Atlas.BakeOptions;
import p8.C14940d;
import q7.C15045a;
import q9.C15047a;
import r4.C15147a;
import t5.f;
import v5.b;
import w5.n;
import x4.C16054a;
import yd.C16181m;

public class C13317e {

    public static final int f88258a = 5;

    public static final Ac.b f88259b = Theme.T.PANEL_TOPBAR;

    public static final Ac.b f88260c = Theme.T.PRIMARY_DARK;

    public class a extends LinkedList<C12908b> {

        public final GameObject f88261b;

        public final Activity f88262c;

        public final Context f88263d;

        public class C1627a extends LinkedList<M7.g> {

            public class C1628a implements M7.d {
                public C1628a() {
                }

                @Override
                public void onClick(View v10, Context context, M7.c tbButton) {
                    GameObject gameObject;
                    try {
                        gameObject = a.this.f88261b.clone();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        Toast.makeText(context, "Error:" + e10.getMessage(), 0).show();
                        gameObject = null;
                    }
                    if (gameObject != null) {
                        GameObject gameObject2 = a.this.f88261b;
                        GameObject gameObject3 = gameObject2.f79294k;
                        if (gameObject3 != null) {
                            int U02 = gameObject3.U0(gameObject2) + 1;
                            gameObject.f79294k = null;
                            com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(gameObject, a.this.f88261b.f79294k, U02));
                            W7.b.f27308h.h(gameObject);
                        } else {
                            int s10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.s(gameObject2) + 1;
                            gameObject.f79294k = null;
                            com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(gameObject, a.this.f88261b.f79294k, s10));
                            W7.b.f27308h.h(gameObject);
                        }
                    }
                    N7.c.D().B0(new C14349a());
                }
            }

            public class b implements M7.d {

                public class C1629a implements c.i {

                    public class C1630a implements Runnable {
                        public C1630a() {
                        }

                        @Override
                        public void run() {
                            C13317e.j(a.this.f88261b);
                        }
                    }

                    public C1629a() {
                    }

                    @Override
                    public void a(c.g dialog) {
                        K8.a.I(new C1630a());
                        dialog.dismiss();
                        N7.c.D().B0(new C14349a());
                    }

                    @Override
                    public void b(c.g dialog) {
                        dialog.dismiss();
                    }
                }

                public b() {
                }

                @Override
                public void onClick(View v10, Context context, M7.c tbButton) {
                    Z6.c.w1(v10, C15147a.e.Right, Lang.l(Lang.T.DELETE), Lang.l(Lang.T.ARE_YOU_SURE_DELETE) + " " + a.this.f88261b.getName() + "?", new C1629a());
                }
            }

            public class c implements M7.d {

                public class C1631a implements Runnable {
                    public C1631a() {
                    }

                    @Override
                    public void run() {
                        if (a.this.f88261b.H0() != null) {
                            GameObject H02 = a.this.f88261b.H0();
                            int U02 = H02.U0(a.this.f88261b);
                            if (U02 > 0) {
                                H02.V1(H02.C(U02 - 1), a.this.f88261b);
                                return;
                            }
                            return;
                        }
                        int s10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.s(a.this.f88261b);
                        if (s10 > 0) {
                            com.itsmagic.engine.Engines.Engine.World.a.f80030c.I(com.itsmagic.engine.Engines.Engine.World.a.f80030c.c(s10 - 1), a.this.f88261b);
                        }
                    }
                }

                public c() {
                }

                @Override
                public void onClick(View v10, Context context, M7.c tbButton) {
                    K8.a.I(new C1631a());
                }
            }

            public class d implements M7.d {

                public class C1632a implements Runnable {
                    public C1632a() {
                    }

                    @Override
                    public void run() {
                        if (a.this.f88261b.H0() != null) {
                            GameObject H02 = a.this.f88261b.H0();
                            int U02 = H02.U0(a.this.f88261b);
                            if (U02 < H02.D() - 1) {
                                H02.V1(H02.C(U02 + 1), a.this.f88261b);
                                return;
                            }
                            return;
                        }
                        int s10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.s(a.this.f88261b);
                        if (s10 < com.itsmagic.engine.Engines.Engine.World.a.f80030c.d() - 1) {
                            com.itsmagic.engine.Engines.Engine.World.a.f80030c.I(com.itsmagic.engine.Engines.Engine.World.a.f80030c.c(s10 + 1), a.this.f88261b);
                        }
                    }
                }

                public d() {
                }

                @Override
                public void onClick(View v10, Context context, M7.c tbButton) {
                    K8.a.I(new C1632a());
                }
            }

            public C1627a() {
                C1628a c1628a = new C1628a();
                c.b bVar = c.b.Disconnected;
                M7.c cVar = new M7.c(R.drawable.paste, c1628a, bVar, a.this.f88262c);
                Ac.b bVar2 = C13317e.f88259b;
                M7.c U10 = cVar.U(bVar2);
                Ac.b bVar3 = C13317e.f88260c;
                add(U10.M(bVar3).b0(R.color.white).m0((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_height)));
                add(new M7.c(R.drawable.bin_nopadding_v2, new b(), bVar, a.this.f88262c).U(bVar2).M(bVar3).b0(R.color.white).m0((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_height)));
                add(new M7.k(Nc.b.k0(8.0f)));
                add(new M7.c(R.drawable.move_up, new c(), c.b.Left, a.this.f88262c).U(bVar2).M(bVar3).b0(R.color.white).m0((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_height)));
                add(new M7.c(R.drawable.move_down, new d(), c.b.Right, a.this.f88262c).U(bVar2).M(bVar3).b0(R.color.white).m0((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_height)));
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View view) {
                GameObject gameObject;
                Vector3 vector3 = new Vector3(0.0f, 0.5f, 0.0f);
                GameObject gameObject2 = a.this.f88261b;
                Component.e eVar = Component.e.SkinJoint;
                if (C13317e.C(gameObject2, eVar)) {
                    GameObject gameObject3 = a.this.f88261b.f79294k;
                    if (gameObject3 != null && gameObject3.n0(eVar) != null) {
                        vector3 = a.this.f88261b.transform.u0((Vector3) JP.acquire(Vector3.class)).sub(a.this.f88261b.f79294k.transform.u0((Vector3) JP.acquire(Vector3.class))).mul(0.5f);
                    }
                    gameObject = new GameObject("Bone", new Transform(vector3));
                    gameObject.r(new SkinJoint());
                } else {
                    gameObject = null;
                }
                com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, a.this.f88261b);
            }
        }

        public class c implements dd.d {
            public c() {
            }

            @Override
            public void onSelected(View view) {
                com.itsmagic.engine.Engines.Engine.World.b.f(C15047a.c(), a.this.f88261b);
            }
        }

        public class d extends LinkedList<C12908b> {

            public class C1633a implements dd.d {

                public class C1634a implements InterfaceC2640t {
                    public C1634a() {
                    }

                    @Override
                    public void a(int index) {
                    }

                    @Override
                    public void b(Object o10, int index) {
                        ((GameObject) o10).F1(null);
                    }
                }

                public C1633a() {
                }

                @Override
                public void onSelected(View view) {
                    new z().f(a.this.f88261b.z0(), new C1634a());
                }
            }

            public class b implements dd.d {

                public class C1635a implements f.g {

                    public class RunnableC1636a implements Runnable {

                        public final String f88280b;

                        public class RunnableC1637a implements Runnable {

                            public final int f88282b;

                            public class C1638a extends c.h {

                                public class RunnableC1639a implements Runnable {
                                    public RunnableC1639a() {
                                    }

                                    @Override
                                    public void run() {
                                        for (int i10 = 0; i10 < a.this.f88261b.z0().size(); i10++) {
                                            GameObject gameObject = a.this.f88261b.z0().get(i10);
                                            if (gameObject.getName().startsWith(RunnableC1636a.this.f88280b)) {
                                                gameObject.destroy();
                                            }
                                        }
                                    }
                                }

                                public C1638a() {
                                }

                                @Override
                                public void a(c.g dialog) {
                                    super.a(dialog);
                                    K8.a.I(new RunnableC1639a());
                                }
                            }

                            public RunnableC1637a(final int val$finalTotal) {
                                this.f88282b = val$finalTotal;
                            }

                            @Override
                            public void run() {
                                Z6.c.z1("Delete " + this.f88282b + " objects?", "Objects with prefix:" + RunnableC1636a.this.f88280b, new C1638a());
                            }
                        }

                        public RunnableC1636a(final String val$text) {
                            this.f88280b = val$text;
                        }

                        @Override
                        public void run() {
                            int i10 = 0;
                            for (int i11 = 0; i11 < a.this.f88261b.z0().size(); i11++) {
                                if (a.this.f88261b.z0().get(i11).getName().startsWith(this.f88280b)) {
                                    i10++;
                                }
                            }
                            N7.c.j0(new RunnableC1637a(i10));
                        }
                    }

                    public C1635a() {
                    }

                    @Override
                    public void c(String text) {
                        if (text == null || text.isEmpty()) {
                            N7.c.v0("No prefix? this would delete all objects");
                        } else {
                            K8.a.I(new RunnableC1636a(text));
                        }
                    }

                    @Override
                    public void onCancel() {
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View view) {
                    Z6.f.x1("Name prefix", "name", new C1635a());
                }
            }

            public class c implements dd.d {

                public class C1640a implements f.g {

                    public class RunnableC1641a implements Runnable {

                        public final String f88288b;

                        public class RunnableC1642a implements Runnable {

                            public final int f88290b;

                            public class C1643a extends c.h {

                                public class RunnableC1644a implements Runnable {
                                    public RunnableC1644a() {
                                    }

                                    @Override
                                    public void run() {
                                        for (int i10 = 0; i10 < a.this.f88261b.z0().size(); i10++) {
                                            GameObject gameObject = a.this.f88261b.z0().get(i10);
                                            if (gameObject.getName().contains(RunnableC1641a.this.f88288b)) {
                                                gameObject.destroy();
                                            }
                                        }
                                    }
                                }

                                public C1643a() {
                                }

                                @Override
                                public void a(c.g dialog) {
                                    super.a(dialog);
                                    K8.a.I(new RunnableC1644a());
                                }
                            }

                            public RunnableC1642a(final int val$finalTotal) {
                                this.f88290b = val$finalTotal;
                            }

                            @Override
                            public void run() {
                                Z6.c.z1("Delete " + this.f88290b + " objects?", "Objects that contains:" + RunnableC1641a.this.f88288b, new C1643a());
                            }
                        }

                        public RunnableC1641a(final String val$text) {
                            this.f88288b = val$text;
                        }

                        @Override
                        public void run() {
                            int i10 = 0;
                            for (int i11 = 0; i11 < a.this.f88261b.z0().size(); i11++) {
                                if (a.this.f88261b.z0().get(i11).getName().contains(this.f88288b)) {
                                    i10++;
                                }
                            }
                            N7.c.j0(new RunnableC1642a(i10));
                        }
                    }

                    public C1640a() {
                    }

                    @Override
                    public void c(String text) {
                        if (text == null || text.isEmpty()) {
                            N7.c.v0("No contains? this would delete all objects");
                        } else {
                            K8.a.I(new RunnableC1641a(text));
                        }
                    }

                    @Override
                    public void onCancel() {
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View view) {
                    Z6.f.x1("Name contains", "name", new C1640a());
                }
            }

            public class C1645d implements dd.d {

                public class C1646a implements c.i {
                    public C1646a() {
                    }

                    @Override
                    public void a(c.g dialog) {
                        Iterator<GameObject> it = a.this.f88261b.z0().iterator();
                        while (it.hasNext()) {
                            C13317e.j(it.next());
                        }
                        dialog.dismiss();
                    }

                    @Override
                    public void b(c.g dialog) {
                        dialog.dismiss();
                    }
                }

                public C1645d() {
                }

                @Override
                public void onSelected(View view) {
                    a aVar = a.this;
                    C13317e.f(aVar.f88261b, aVar.f88263d);
                    Z6.c.w1(view, C15147a.e.Right, Lang.l(Lang.T.ATTENTION), Lang.l(Lang.T.DELETE_ALL_CHILD_OBJECTS), new C1646a());
                }
            }

            public class C1647e implements dd.d {
                public C1647e() {
                }

                @Override
                public void onSelected(View view) {
                    C13317e.L(a.this.f88261b, Transform.G.STATIC);
                }
            }

            public class f implements dd.d {
                public f() {
                }

                @Override
                public void onSelected(View view) {
                    C13317e.L(a.this.f88261b, Transform.G.DYNAMIC);
                }
            }

            public class g extends SteppedArrayList<C12908b> {

                public class C1648a implements dd.d {

                    public class C1649a implements B {
                        public C1649a() {
                        }

                        @Override
                        public void onSelected(String name) {
                            C13317e.e(a.this.f88261b, name);
                        }
                    }

                    public C1648a() {
                    }

                    @Override
                    public void onSelected(View view) {
                        A.c(a.this.f88263d, view, new C1649a());
                    }
                }

                public class b implements dd.d {

                    public class C1650a implements dd.d {

                        public final EnumC13053a f88302a;

                        public class C1651a implements Runnable {
                            public C1651a() {
                            }

                            public final void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setString("blendingMode", C1650a.this.f88302a.name());
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setString("blendingMode", C1650a.this.f88302a.name());
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1650a(final EnumC13053a val$value) {
                            this.f88302a = val$value;
                        }

                        @Override
                        public void onSelected(View view) {
                            K8.a.I(new C1651a());
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onSelected(View view) {
                        LinkedList linkedList = new LinkedList();
                        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
                            linkedList.add(new C12908b(enumC13053a.name(), new C1650a(enumC13053a)));
                        }
                        Y6.a.F1(view, C15147a.e.Right, linkedList);
                    }
                }

                public class c implements dd.d {

                    public class C1652a implements dd.d {

                        public class C1653a implements Runnable {
                            public C1653a() {
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setString("uvSource", cc.e.World.name());
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setString("uvSource", cc.e.World.name());
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1652a() {
                        }

                        @Override
                        public void onSelected(View view) {
                            K8.a.I(new C1653a());
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View view) {
                        LinkedList linkedList = new LinkedList();
                        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
                            g.this.add(new C12908b(enumC13053a.name(), new C1652a()));
                        }
                        Y6.a.F1(view, C15147a.e.Right, linkedList);
                    }
                }

                public class C1654d implements dd.d {

                    public class C1655a implements dd.d {

                        public class C1656a implements Runnable {
                            public C1656a() {
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setString("uvSource", cc.e.Vertex.name());
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setString("uvSource", cc.e.Vertex.name());
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1655a() {
                        }

                        @Override
                        public void onSelected(View view) {
                            K8.a.I(new C1656a());
                        }
                    }

                    public C1654d() {
                    }

                    @Override
                    public void onSelected(View view) {
                        LinkedList linkedList = new LinkedList();
                        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
                            g.this.add(new C12908b(enumC13053a.name(), new C1655a()));
                        }
                        Y6.a.F1(view, C15147a.e.Right, linkedList);
                    }
                }

                public class C1657e implements dd.d {

                    public class C1658a implements dd.d {

                        public class C1659a implements Runnable {
                            public C1659a() {
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setBoolean("doubleSided", true);
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setBoolean("doubleSided", true);
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1658a() {
                        }

                        @Override
                        public void onSelected(View view) {
                            K8.a.I(new C1659a());
                        }
                    }

                    public C1657e() {
                    }

                    @Override
                    public void onSelected(View view) {
                        LinkedList linkedList = new LinkedList();
                        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
                            g.this.add(new C12908b(enumC13053a.name(), new C1658a()));
                        }
                        Y6.a.F1(view, C15147a.e.Right, linkedList);
                    }
                }

                public class f implements dd.d {

                    public class C1660a implements dd.d {

                        public class C1661a implements Runnable {
                            public C1661a() {
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setBoolean("doubleSided", false);
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setBoolean("doubleSided", false);
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1660a() {
                        }

                        @Override
                        public void onSelected(View view) {
                            K8.a.I(new C1661a());
                        }
                    }

                    public f() {
                    }

                    @Override
                    public void onSelected(View view) {
                        LinkedList linkedList = new LinkedList();
                        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
                            g.this.add(new C12908b(enumC13053a.name(), new C1660a()));
                        }
                        Y6.a.F1(view, C15147a.e.Right, linkedList);
                    }
                }

                public class C1662g implements dd.d {

                    public class C1663a implements e.i {

                        public class C1664a implements Runnable {

                            public final float f88319b;

                            public C1664a(final float val$value) {
                                this.f88319b = val$value;
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setFloat("roughness", this.f88319b);
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setFloat("roughness", this.f88319b);
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1663a() {
                        }

                        @Override
                        public void a(float value, boolean canceled) {
                            K8.a.I(new C1664a(value));
                        }
                    }

                    public C1662g() {
                    }

                    @Override
                    public void onSelected(View view) {
                        Z6.e.B1("Roughness", 0.5f, 0.0f, 1.0f, new C1663a());
                    }
                }

                public class h implements dd.d {

                    public class C1665a implements e.i {

                        public class C1666a implements Runnable {

                            public final float f88323b;

                            public C1666a(final float val$value) {
                                this.f88323b = val$value;
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setFloat("metallic", this.f88323b);
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setFloat("metallic", this.f88323b);
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1665a() {
                        }

                        @Override
                        public void a(float value, boolean canceled) {
                            K8.a.I(new C1666a(value));
                        }
                    }

                    public h() {
                    }

                    @Override
                    public void onSelected(View view) {
                        Z6.e.B1("Metallic", 0.5f, 0.0f, 1.0f, new C1665a());
                    }
                }

                public class i implements dd.d {

                    public class C1667a implements e.i {

                        public class C1668a implements Runnable {

                            public final float f88327b;

                            public C1668a(final float val$value) {
                                this.f88327b = val$value;
                            }

                            private void a(GameObject parent) {
                                for (int i10 = 0; i10 < parent.N(); i10++) {
                                    Component L10 = parent.L(i10);
                                    if (L10 instanceof ModelRenderer) {
                                        Material material = ((ModelRenderer) L10).f73747F;
                                        if (material != null) {
                                            try {
                                                material.setFloat(WindEffect.f77880O, this.f88327b);
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                    } else if (L10 instanceof SkinnedModelRenderer) {
                                        SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                                        if (skinnedModelRenderer.getMaterial() != null) {
                                            try {
                                                skinnedModelRenderer.getMaterial().setFloat(WindEffect.f77880O, this.f88327b);
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                    }
                                }
                                for (int i11 = 0; i11 < parent.D(); i11++) {
                                    a(parent.C(i11));
                                }
                            }

                            @Override
                            public void run() {
                                for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                                    a(a.this.f88261b.C(i10));
                                }
                            }
                        }

                        public C1667a() {
                        }

                        @Override
                        public void a(float value, boolean canceled) {
                            K8.a.I(new C1668a(value));
                        }
                    }

                    public i() {
                    }

                    @Override
                    public void onSelected(View view) {
                        Z6.e.B1("Wind effect", 0.5f, 0.0f, 1.0f, new C1667a());
                    }
                }

                public g() {
                    add(new C12908b("Change shader", new C1648a()));
                    add(new C12908b("Change blending mode", new b()));
                    add(new C12908b("Change UV to world", new c()));
                    add(new C12908b("Change UV to vertex", new C1654d()));
                    add(new C12908b("Enable double sided", new C1657e()));
                    add(new C12908b("Disable double sided", new f()));
                    add(new C12908b("Change custom roughness value", new C1662g()));
                    add(new C12908b("Change custom metallic value", new h()));
                    add(new C12908b("Change wind effect value", new i()));
                }
            }

            public class h implements dd.d {

                public class C1669a implements Yc.g {
                    public C1669a() {
                    }

                    @Override
                    public void b(C13823b pfile) {
                        try {
                            C13317e.d(a.this.f88261b, pfile.f());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }

                public h() {
                }

                @Override
                public void onSelected(View view) {
                    Yc.c.a(".mat", new C1669a());
                }
            }

            public class i implements dd.d {

                public class C1670a implements Runnable {
                    public C1670a() {
                    }

                    private void a(GameObject parent) {
                        Collider.buildAllModelColliderFor(parent);
                        for (int i10 = 0; i10 < parent.D(); i10++) {
                            GameObject C10 = parent.C(i10);
                            C10.getName();
                            a(C10);
                        }
                    }

                    @Override
                    public void run() {
                        for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                            GameObject C10 = a.this.f88261b.C(i10);
                            C10.getName();
                            a(C10);
                        }
                    }
                }

                public i() {
                }

                @Override
                public void onSelected(View view) {
                    K8.a.I(new C1670a());
                }
            }

            public class j implements dd.d {

                public class C1671a implements Runnable {
                    public C1671a() {
                    }

                    @Override
                    public void run() {
                        for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                            GameObject C10 = a.this.f88261b.C(i10);
                            C10.getName();
                            j.this.b(C10);
                        }
                    }
                }

                public j() {
                }

                public final void b(GameObject parent) {
                    Collider.buildAllModelColliderFor(parent);
                    for (int i10 = 0; i10 < parent.D(); i10++) {
                        GameObject C10 = parent.C(i10);
                        C10.getName();
                        b(C10);
                    }
                }

                @Override
                public void onSelected(View view) {
                    K8.a.I(new C1671a());
                }
            }

            public class k implements dd.d {

                public class C1672a implements Runnable {
                    public C1672a() {
                    }

                    private void a(GameObject parent) {
                        Iterator<Component> it = parent.n0(Component.e.Collider).iterator();
                        while (it.hasNext()) {
                            parent.u1(it.next());
                        }
                        for (int i10 = 0; i10 < parent.D(); i10++) {
                            GameObject C10 = parent.C(i10);
                            C10.getName();
                            a(C10);
                        }
                    }

                    @Override
                    public void run() {
                        for (int i10 = 0; i10 < a.this.f88261b.D(); i10++) {
                            GameObject C10 = a.this.f88261b.C(i10);
                            C10.getName();
                            a(C10);
                        }
                    }
                }

                public k() {
                }

                @Override
                public void onSelected(View view) {
                    K8.a.I(new C1672a());
                }
            }

            public class l implements dd.d {
                public l() {
                }

                @Override
                public void onSelected(View view) {
                    try {
                        Vector3 vector3 = new Vector3();
                        for (GameObject gameObject : a.this.f88261b.z0()) {
                            gameObject.transform.h1().C(vector3);
                            gameObject.transform.h1().v(vector3.getX(), Nc.d.h(0.0f, 360.0f), vector3.getZ());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public class m implements dd.d {

                public class C1673a implements InterfaceC2640t {
                    public C1673a() {
                    }

                    @Override
                    public void a(int index) {
                    }

                    @Override
                    public void b(Object o10, int index) {
                        C13317e.j((GameObject) o10);
                    }
                }

                public m() {
                }

                @Override
                public void onSelected(View view) {
                    new z().f(a.this.f88261b.z0(), new C1673a());
                }
            }

            public d() {
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_SET_ALL_STATIC), new C1647e()));
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_SET_ALL_DYNAMIC), new f()));
                add(new C12908b());
                add(new C12908b("Shader", new g()));
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_CHANGE_ALL_MATERIALS), new h()));
                add(new C12908b());
                add(new C12908b("Add model collider to all child objects", new i()));
                add(new C12908b("Add convex collider to all child objects", new j()));
                add(new C12908b("Remove all colliders from all child objects", new k()));
                add(new C12908b());
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_RANDOMIZE_CHILD_ROTATION_Y), new l()));
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_DELETE_ALL_CHILDREN), new m()));
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_DETACH_CHILDREN), new C1633a()));
                add(new C12908b("Delete child by prefix", new b()));
                add(new C12908b("Delete child by contains", new c()));
                if (a.this.f88261b.c1()) {
                    return;
                }
                add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_COLLAPSE_CHILDREN_COMPONENTS), new C1645d()));
            }
        }

        public class C1674e extends LinkedList<C12908b> {

            public class C1675a implements dd.d {

                public class C1676a implements f.j {
                    public C1676a() {
                    }

                    @Override
                    public void a(ColorINT colorINT) {
                        GameObject gameObject = a.this.f88261b;
                        gameObject.objectsPanelColor = colorINT;
                        ObjectsPanel.O1(gameObject);
                    }
                }

                public C1675a() {
                }

                @Override
                public void onSelected(View view) {
                    GameObject gameObject = a.this.f88261b;
                    if (gameObject.objectsPanelColor == null) {
                        gameObject.objectsPanelColor = new ColorINT();
                    }
                    t5.f.L1(a.this.f88261b.objectsPanelColor, view, N7.c.t(), C15147a.e.Right, new C1676a());
                }
            }

            public class b implements dd.d {
                public b() {
                }

                @Override
                public void onSelected(View view) {
                    GameObject gameObject = a.this.f88261b;
                    gameObject.objectsPanelColor = null;
                    ObjectsPanel.O1(gameObject);
                }
            }

            public C1674e() {
                add(new C12908b("Set color", new C1675a()));
                add(new C12908b("Remove color", new b()));
            }
        }

        public class f extends LinkedList<M7.g> {

            public class C1677a implements M7.d {

                public class C1678a implements f.j {

                    public final M7.c f88346a;

                    public C1678a(final M7.c val$tbButton) {
                        this.f88346a = val$tbButton;
                    }

                    @Override
                    public void a(ColorINT colorINT) {
                        GameObject gameObject = a.this.f88261b;
                        gameObject.objectsPanelColor = colorINT;
                        ObjectsPanel.O1(gameObject);
                        M7.c cVar = this.f88346a;
                        ColorINT colorINT2 = a.this.f88261b.objectsPanelColor;
                        if (colorINT2 == null) {
                            colorINT2 = new ColorINT();
                        }
                        cVar.c0(colorINT2.intColor, true);
                    }
                }

                public C1677a() {
                }

                @Override
                public void onClick(View v10, Context context, M7.c tbButton) {
                    GameObject gameObject = a.this.f88261b;
                    if (gameObject.objectsPanelColor == null) {
                        gameObject.objectsPanelColor = new ColorINT();
                    }
                    t5.f.L1(a.this.f88261b.objectsPanelColor, v10, N7.c.t(), C15147a.e.Left, new C1678a(tbButton));
                }
            }

            public class b implements M7.d {
                public b() {
                }

                @Override
                public void onClick(View v10, Context context, M7.c tbButton) {
                    N7.c.D().B0(new C14349a());
                }
            }

            public f() {
                M7.c cVar = new M7.c(R.drawable.nse_circle, new C1677a(), c.b.Disconnected, a.this.f88262c);
                Ac.b bVar = C13317e.f88259b;
                M7.c U10 = cVar.U(bVar);
                Ac.b bVar2 = C13317e.f88260c;
                M7.c Y10 = U10.M(bVar2).m0((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_height));
                ColorINT colorINT = a.this.f88261b.objectsPanelColor;
                add(Y10.c0((colorINT == null ? new ColorINT(255, 255, 255) : colorINT).intColor, true));
                add(new M7.c(R.drawable.bordered_close_x, new b(), c.b.Right, a.this.f88262c).U(bVar).M(bVar2).b0(R.color.white).m0((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f88262c.getResources().getDimension(R.dimen.view3d_button_height)));
            }
        }

        public class g implements dd.d {
            public g() {
            }

            @Override
            public void onSelected(View view) {
                com.itsmagic.engine.Engines.Engine.World.b.f(new GameObject("New Child"), a.this.f88261b);
            }
        }

        public class h implements dd.d {

            public class C1679a extends b.e {

                public class C1680a implements Runnable {

                    public final GameObject f88352b;

                    public C1680a(final GameObject val$object) {
                        this.f88352b = val$object;
                    }

                    @Override
                    public void run() {
                        a.this.f88261b.F1(this.f88352b);
                    }
                }

                public C1679a() {
                }

                @Override
                public boolean b(GameObject gameObject) {
                    return gameObject != a.this.f88261b;
                }

                @Override
                public void d(GameObject object) {
                    K8.a.I(new C1680a(object));
                }
            }

            public h() {
            }

            @Override
            public void onSelected(View view) {
                X6.b.D1(view, C15147a.e.Right, "Select new parent", new C1679a());
            }
        }

        public class i implements dd.d {

            public class C1681a implements b.i {

                public class C1682a implements Runnable {

                    public final File f88356b;

                    public class C1683a implements b8.g {
                        public C1683a() {
                        }

                        @Override
                        public void a(Activity activity) {
                        }

                        @Override
                        public void b(Activity activity) {
                        }
                    }

                    public C1682a(final File val$file) {
                        this.f88356b = val$file;
                    }

                    @Override
                    public void run() {
                        String o10 = Tc.b.o(this.f88356b.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "") + "/" + a.this.f88261b.getName() + ".go");
                        ObjectLink objectLink = (ObjectLink) a.this.f88261b.c0(Component.e.ObjectLink);
                        if (objectLink != null) {
                            objectLink.setFile(o10);
                        } else {
                            ObjectLink objectLink2 = new ObjectLink();
                            objectLink2.setFile(o10);
                            a.this.f88261b.r(objectLink2);
                        }
                        X7.a.b(o10, a.this.f88261b.x1().toString(), a.this.f88263d);
                        C13440c.d(o10);
                        N7.c.w0("Object " + a.this.f88261b.getName() + " exported to " + o10, true);
                        if (c8.b.l()) {
                            W7.b.f27308h.g(N7.c.o(), new C1683a());
                        }
                    }
                }

                public C1681a() {
                }

                @Override
                public void a(File file, String inProjectPath) {
                    if (file == null) {
                        N7.c.v0("No folder selected");
                    } else {
                        K8.a.I(new C1682a(file));
                    }
                }
            }

            public i() {
            }

            @Override
            public void onSelected(View view) {
                v5.b.z1(new C1681a());
            }
        }

        public class j implements dd.d {

            public class C1684a implements b.i {

                public class C1685a implements Runnable {

                    public final File f88361b;

                    public class C1686a implements b8.g {
                        public C1686a() {
                        }

                        @Override
                        public void a(Activity activity) {
                        }

                        @Override
                        public void b(Activity activity) {
                        }
                    }

                    public C1685a(final File val$file) {
                        this.f88361b = val$file;
                    }

                    @Override
                    public void run() {
                        String o10 = Tc.b.o(this.f88361b.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "") + "/" + a.this.f88261b.getName() + ".go");
                        PrefabLink prefabLink = (PrefabLink) a.this.f88261b.c0(Component.e.PrefabLink);
                        if (prefabLink != null) {
                            prefabLink.setFile(o10);
                        } else {
                            PrefabLink prefabLink2 = new PrefabLink();
                            prefabLink2.setFile(o10);
                            a.this.f88261b.r(prefabLink2);
                        }
                        X7.a.b(o10, a.this.f88261b.x1().toString(), a.this.f88263d);
                        C13440c.d(o10);
                        N7.c.w0("Object " + a.this.f88261b.getName() + " exported to " + o10, true);
                        if (c8.b.l()) {
                            W7.b.f27308h.g(N7.c.o(), new C1686a());
                        }
                    }
                }

                public C1684a() {
                }

                @Override
                public void a(File file, String inProjectPath) {
                    if (file == null) {
                        N7.c.v0("No folder selected");
                    } else {
                        K8.a.I(new C1685a(file));
                    }
                }
            }

            public j() {
            }

            @Override
            public void onSelected(View view) {
                v5.b.z1(new C1684a());
            }
        }

        public class k implements dd.d {

            public class C1687a implements b.i {

                public final Armature f88365a;

                public class C1688a implements f.g {

                    public final String f88367a;

                    public class RunnableC1689a implements Runnable {
                        public RunnableC1689a() {
                        }

                        @Override
                        public void run() {
                            N7.c.D().B0(new n());
                        }
                    }

                    public C1688a(final String val$inProjectPath) {
                        this.f88367a = val$inProjectPath;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
                    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
                    @Override
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void c(String text) {
                        String str = "";
                        String trim = text != null ? text.trim() : "";
                        if (trim.isEmpty()) {
                            N7.c.v0("Mask name can't be empty");
                            return;
                        }
                        if (!C2633l.b(trim, ".amask")) {
                            trim = trim + ".amask";
                        }
                        String str2 = this.f88367a;
                        String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
                        if (R10 != null && str2 != null) {
                            String replace = R10.replace(C16181m.f130232i, "/");
                            str2 = str2.replace(C16181m.f130232i, "/");
                            if (!str2.equals(replace)) {
                                if (str2.startsWith(replace + "/")) {
                                    str = str2.substring(replace.length() + 1);
                                }
                            }
                            if (str != null && !str.trim().isEmpty()) {
                                trim = Tc.b.o(str + "/" + trim);
                            }
                            if (!new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + trim).exists()) {
                                N7.c.v0("Animation mask already exists");
                                return;
                            } else {
                                C1687a c1687a = C1687a.this;
                                C16054a.G1(a.this.f88261b, c1687a.f88365a, trim, new RunnableC1689a());
                                return;
                            }
                        }
                        str = str2;
                        if (str != null) {
                            trim = Tc.b.o(str + "/" + trim);
                        }
                        if (!new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + trim).exists()) {
                        }
                    }

                    @Override
                    public void onCancel() {
                    }
                }

                public C1687a(final Armature val$armature) {
                    this.f88365a = val$armature;
                }

                @Override
                public void a(File file, String inProjectPath) {
                    if (file == null) {
                        N7.c.v0("No folder selected");
                        return;
                    }
                    Z6.f.x1("Create new mask file", a.this.f88261b.getName() + "_mask", new C1688a(inProjectPath));
                }
            }

            public k() {
            }

            @Override
            public void onSelected(View view) {
                Armature armature = (Armature) a.this.f88261b.c0(Component.e.Armature);
                if (armature == null) {
                    N7.c.v0("No Armature found");
                } else {
                    v5.b.z1(new C1687a(armature));
                }
            }
        }

        public class l implements dd.d {

            public class C1690a implements b.i {

                public final SkinnedModelRenderer f88371a;

                public class C1691a implements f.g {

                    public final String f88373a;

                    public class RunnableC1692a implements Runnable {
                        public RunnableC1692a() {
                        }

                        @Override
                        public void run() {
                            N7.c.D().B0(new n());
                        }
                    }

                    public C1691a(final String val$inProjectPath) {
                        this.f88373a = val$inProjectPath;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
                    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
                    @Override
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void c(String text) {
                        String str = "";
                        String trim = text != null ? text.trim() : "";
                        if (trim.isEmpty()) {
                            N7.c.v0("Mask name can't be empty");
                            return;
                        }
                        if (!C2633l.b(trim, ".amask")) {
                            trim = trim + ".amask";
                        }
                        String str2 = this.f88373a;
                        String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
                        if (R10 != null && str2 != null) {
                            String replace = R10.replace(C16181m.f130232i, "/");
                            str2 = str2.replace(C16181m.f130232i, "/");
                            if (!str2.equals(replace)) {
                                if (str2.startsWith(replace + "/")) {
                                    str = str2.substring(replace.length() + 1);
                                }
                            }
                            if (str != null && !str.trim().isEmpty()) {
                                trim = Tc.b.o(str + "/" + trim);
                            }
                            if (!new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + trim).exists()) {
                                N7.c.v0("Animation mask already exists");
                                return;
                            } else {
                                C1690a c1690a = C1690a.this;
                                C16054a.H1(a.this.f88261b, c1690a.f88371a, trim, new RunnableC1692a());
                                return;
                            }
                        }
                        str = str2;
                        if (str != null) {
                            trim = Tc.b.o(str + "/" + trim);
                        }
                        if (!new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + trim).exists()) {
                        }
                    }

                    @Override
                    public void onCancel() {
                    }
                }

                public C1690a(final SkinnedModelRenderer val$skinnedModelRenderer) {
                    this.f88371a = val$skinnedModelRenderer;
                }

                @Override
                public void a(File file, String inProjectPath) {
                    if (file == null) {
                        N7.c.v0("No folder selected");
                        return;
                    }
                    Z6.f.x1("Create new mask file", a.this.f88261b.getName() + "_mask", new C1691a(inProjectPath));
                }
            }

            public l() {
            }

            @Override
            public void onSelected(View view) {
                SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) a.this.f88261b.c0(Component.e.SkinnedModelRenderer);
                if (skinnedModelRenderer == null) {
                    N7.c.v0("No SkinnedModelRenderer found");
                } else {
                    v5.b.z1(new C1690a(skinnedModelRenderer));
                }
            }
        }

        public class m extends LinkedList<C12908b> {

            public class C1693a implements dd.d {

                public org.ITsMagic.Atlas.g f88377a;

                public class C1694a implements G4.f {

                    public final BakeOptions f88379a;

                    public C1694a(final BakeOptions val$options) {
                        this.f88379a = val$options;
                    }

                    @Override
                    public void a(View v10, G4.e panel) {
                        panel.R0();
                        C1693a c1693a = C1693a.this;
                        c1693a.f88377a = new org.ITsMagic.Atlas.g(a.this.f88261b, this.f88379a);
                        B4.c.x1(N7.c.t(), C1693a.this.f88377a);
                    }

                    @Override
                    public void b(G4.e entriesClassPanel) {
                        entriesClassPanel.f7555b0 = true;
                        entriesClassPanel.v1(C1693a.this.a(this.f88379a));
                    }

                    @Override
                    public void c(G4.e entriesClassPanel) {
                        entriesClassPanel.v1(C1693a.this.a(this.f88379a));
                    }

                    @Override
                    public void e(G4.e entriesClassPanel) {
                    }

                    @Override
                    public void f(G4.e entriesClassPanel) {
                        entriesClassPanel.v1(C1693a.this.a(this.f88379a));
                    }

                    @Override
                    public void g(View v10, G4.e panel) {
                        panel.R0();
                    }
                }

                public class b implements D5.h {

                    public final BakeOptions f88381a;

                    public b(final BakeOptions val$options) {
                        this.f88381a = val$options;
                    }

                    @Override
                    public Variable get() {
                        return new Variable("", this.f88381a.texelsPerUnit + "");
                    }

                    @Override
                    public void set(Variable variable) {
                        if (variable != null) {
                            this.f88381a.texelsPerUnit = variable.float_value;
                        }
                    }
                }

                public class c implements D5.h {

                    public final BakeOptions f88383a;

                    public c(final BakeOptions val$options) {
                        this.f88383a = val$options;
                    }

                    @Override
                    public Variable get() {
                        return new Variable("", this.f88383a.padding + "");
                    }

                    @Override
                    public void set(Variable variable) {
                        if (variable != null) {
                            this.f88383a.padding = variable.int_value;
                        }
                    }
                }

                public C1693a() {
                }

                public List<C5.b> a(BakeOptions options) {
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    steppedArrayList.add(new C5.b(new b(options), "Pixels per meter", b.a.SLFloat));
                    steppedArrayList.add(new C5.b(new c(options), "Padding", b.a.SLInt));
                    return steppedArrayList;
                }

                @Override
                public void onSelected(View view) {
                    G4.e.x1("Build atlas", 200, 120, new C1694a(new BakeOptions()));
                }
            }

            public class b implements dd.d {

                public class C1695a implements g.c {

                    public class RunnableC1696a implements Runnable {

                        public final Z6.g f88387b;

                        public class C1697a implements Consumer<GameObject> {

                            public final int[] f88389b;

                            public final int[] f88390c;

                            public final int[] f88391d;

                            public C1697a(final int[] val$total, final int[] val$totalVerticesBufferCapacity, final int[] val$totalTrianglesBufferCapacity) {
                                this.f88389b = val$total;
                                this.f88390c = val$totalVerticesBufferCapacity;
                                this.f88391d = val$totalTrianglesBufferCapacity;
                            }

                            @Override
                            public void accept(GameObject gameObject) {
                                if (gameObject.isEnabled()) {
                                    for (int i10 = 0; i10 < gameObject.N(); i10++) {
                                        Component L10 = gameObject.L(i10);
                                        if (L10.isEnabled() && (L10 instanceof ModelRenderer)) {
                                            ModelRenderer modelRenderer = (ModelRenderer) L10;
                                            if (modelRenderer.getVertex() != null) {
                                                Vertex vertex = modelRenderer.getVertex();
                                                if (vertex.j1() > 0 && vertex.W0() > 0) {
                                                    int[] iArr = this.f88389b;
                                                    iArr[0] = iArr[0] + 1;
                                                    int[] iArr2 = this.f88390c;
                                                    iArr2[0] = iArr2[0] + (vertex.j1() * 3);
                                                    int[] iArr3 = this.f88391d;
                                                    iArr3[0] = iArr3[0] + (vertex.W0() * 3);
                                                }
                                            }
                                        }
                                    }
                                    gameObject.z0().forEach(this);
                                }
                            }
                        }

                        public class C1698b implements Consumer<GameObject> {

                            public final com.itsmagic.engine.Engines.Engine.Vector.f f88393b;

                            public final NativeFloatBuffer f88394c;

                            public final int[] f88395d;

                            public final NativeIntBuffer f88396e;

                            public final int[] f88397f;

                            public final int[] f88398g;

                            public class RunnableC1699a implements Runnable {

                                public final float f88400b;

                                public RunnableC1699a(final float val$p) {
                                    this.f88400b = val$p;
                                }

                                @Override
                                public void run() {
                                    RunnableC1696a.this.f88387b.f1("Building " + ((int) (this.f88400b * 100.0f)) + ve.j.f121589a);
                                }
                            }

                            public C1698b(final com.itsmagic.engine.Engines.Engine.Vector.f val$inverseRoot, final NativeFloatBuffer val$vertices, final int[] val$verOffset, final NativeIntBuffer val$triangles, final int[] val$executed, final int[] val$total) {
                                this.f88393b = val$inverseRoot;
                                this.f88394c = val$vertices;
                                this.f88395d = val$verOffset;
                                this.f88396e = val$triangles;
                                this.f88397f = val$executed;
                                this.f88398g = val$total;
                            }

                            @Override
                            public void accept(GameObject gameObject) {
                                if (gameObject.isEnabled()) {
                                    for (int i10 = 0; i10 < gameObject.N(); i10++) {
                                        Component L10 = gameObject.L(i10);
                                        if (L10.isEnabled() && (L10 instanceof ModelRenderer)) {
                                            ModelRenderer modelRenderer = (ModelRenderer) L10;
                                            com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f(modelRenderer.getRenderMatrix());
                                            if (modelRenderer.getVertex() != null) {
                                                Vertex vertex = modelRenderer.getVertex();
                                                if (vertex.j1() > 0 && vertex.W0() > 0) {
                                                    NativeFloatBuffer i12 = vertex.i1();
                                                    NativeIntBuffer V02 = vertex.V0();
                                                    for (int i11 = 0; i11 < i12.capacity(); i11 += 3) {
                                                        Vector3 vector3 = new Vector3(i12.get(i11), i12.get(i11 + 1), i12.get(i11 + 2));
                                                        fVar.P(vector3, vector3);
                                                        this.f88393b.P(vector3, vector3);
                                                        this.f88394c.put(vector3);
                                                    }
                                                    for (int i13 = 0; i13 < V02.capacity(); i13++) {
                                                        this.f88396e.put(this.f88395d[0] + V02.get(i13));
                                                    }
                                                    int[] iArr = this.f88395d;
                                                    iArr[0] = iArr[0] + vertex.j1();
                                                    int[] iArr2 = this.f88397f;
                                                    int i14 = iArr2[0] + 1;
                                                    iArr2[0] = i14;
                                                    N7.c.j0(new RunnableC1699a(i14 / this.f88398g[0]));
                                                }
                                            }
                                        }
                                    }
                                    gameObject.z0().forEach(this);
                                }
                            }
                        }

                        public RunnableC1696a(final Z6.g val$progress) {
                            this.f88387b = val$progress;
                        }

                        @Override
                        public void run() {
                            w5.i iVar;
                            try {
                                int[] iArr = {0};
                                int[] iArr2 = {0};
                                int[] iArr3 = {0};
                                new C1697a(iArr, iArr2, iArr3).accept(a.this.f88261b);
                                NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(iArr2[0]);
                                NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(iArr3[0]);
                                nativeFloatBuffer.position(0);
                                nativeIntBuffer.position(0);
                                com.itsmagic.engine.Engines.Engine.Vector.f a10 = C13600g.a(a.this.f88261b);
                                a10.E();
                                new C1698b(a10, nativeFloatBuffer, new int[]{0}, nativeIntBuffer, new int[]{0}, iArr).accept(a.this.f88261b);
                                Vertex vertex = new Vertex();
                                vertex.q2(nativeFloatBuffer);
                                vertex.i2(nativeIntBuffer);
                                String str = Lb.k.j() + "/Bakes/" + a.this.f88261b.getName() + "_compound_collision.mesh";
                                MeshSerializer.p(MeshSerializer.m(str), vertex, false);
                                com.itsmagic.engine.Engines.Engine.Vector.f d10 = C13600g.d(a.this.f88261b);
                                GameObject gameObject = new GameObject();
                                gameObject.transform.l3(true);
                                gameObject.transform.c3(d10);
                                gameObject.E1(a.this.f88261b.getName() + "_collision");
                                gameObject.J0().N3(Transform.G.STATIC);
                                gameObject.r(new Collider(Collider.o.Model, str, true));
                                com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, a.this.f88261b.H0());
                                Z6.g gVar = this.f88387b;
                                Objects.requireNonNull(gVar);
                                iVar = new w5.i(gVar);
                            } catch (Throwable th2) {
                                try {
                                    th2.printStackTrace();
                                    N7.c.v0("Error:" + th2.getMessage());
                                    Z6.g gVar2 = this.f88387b;
                                    Objects.requireNonNull(gVar2);
                                    iVar = new w5.i(gVar2);
                                } catch (Throwable th3) {
                                    Z6.g gVar3 = this.f88387b;
                                    Objects.requireNonNull(gVar3);
                                    N7.c.j0(new w5.i(gVar3));
                                    throw th3;
                                }
                            }
                            N7.c.j0(iVar);
                        }
                    }

                    public C1695a() {
                    }

                    @Override
                    public void a(Z6.g progress, FloatingPanelArea area) {
                        O9.b.d(new RunnableC1696a(progress));
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View view) {
                    Z6.g.s1("Building", new C1695a());
                }
            }

            public class c implements dd.d {

                public class C1700a implements e.i {

                    public class C1701a implements C15045a.d {

                        public final float f88404a;

                        public class RunnableC1702a implements Runnable {

                            public final C15045a f88406b;

                            public class RunnableC1703a implements Runnable {

                                public final List f88408b;

                                public final Map f88409c;

                                public class RunnableC1704a implements Runnable {

                                    public class C1705a implements Armature.e {
                                        public C1705a() {
                                        }

                                        @Override
                                        public void a(GameObject gameObject) {
                                        }

                                        @Override
                                        public String b(String meshFile) {
                                            return (String) RunnableC1703a.this.f88409c.get(meshFile);
                                        }
                                    }

                                    public RunnableC1704a() {
                                    }

                                    @Override
                                    public void run() {
                                        List<Component> s02 = a.this.f88261b.s0(Component.e.Armature);
                                        for (int i10 = 0; i10 < s02.size(); i10++) {
                                            Armature.buildBakedOf((Armature) s02.get(i10), new C1705a());
                                        }
                                        N7.c.v0("Done " + s02.size() + " armatures");
                                        RunnableC1702a.this.f88406b.p1();
                                    }
                                }

                                public RunnableC1703a(final List val$meshes, final Map val$meshesToNe) {
                                    this.f88408b = val$meshes;
                                    this.f88409c = val$meshesToNe;
                                }

                                @Override
                                public void run() {
                                    for (String str : this.f88408b) {
                                        String str2 = Tc.b.u(str) + "/" + Tc.b.w(str, true) + "_d" + Tc.b.q(C1701a.this.f88404a, 2, ConstantDescs.DEFAULT_NAME) + ".mesh";
                                        try {
                                            Vertex A12 = Vertex.A1(str);
                                            if (!MeshSerializer.k(str2)) {
                                                MeshSerializer.o(MeshSerializer.m(str2), new Ib.g(A12).D(C1701a.this.f88404a, 10.0d));
                                            }
                                            this.f88409c.put(str, str2);
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                            MeshSerializer.g(str2);
                                            N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                                        }
                                    }
                                    K8.a.I(new RunnableC1704a());
                                }
                            }

                            public RunnableC1702a(final C15045a val$loadingPanel) {
                                this.f88406b = val$loadingPanel;
                            }

                            @Override
                            public void run() {
                                SteppedArrayList steppedArrayList = new SteppedArrayList();
                                HashMap hashMap = new HashMap();
                                List<Component> s02 = a.this.f88261b.s0(Component.e.SkinnedModelRenderer);
                                for (int i10 = 0; i10 < s02.size(); i10++) {
                                    String str = ((SkinnedModelRenderer) s02.get(i10)).meshFile;
                                    if (str != null) {
                                        steppedArrayList.add(str);
                                    }
                                }
                                O9.b.d(new RunnableC1703a(steppedArrayList, hashMap));
                            }
                        }

                        public C1701a(final float val$value) {
                            this.f88404a = val$value;
                        }

                        @Override
                        public void a(C15045a loadingPanel) {
                            K8.a.I(new RunnableC1702a(loadingPanel));
                        }
                    }

                    public class b implements Runnable {
                        public b() {
                        }

                        @Override
                        public void run() {
                            List<Component> s02 = a.this.f88261b.s0(Component.e.Armature);
                            for (int i10 = 0; i10 < s02.size(); i10++) {
                                Armature.buildBakedOf((Armature) s02.get(i10));
                            }
                            N7.c.v0("Done " + s02.size() + " armatures");
                        }
                    }

                    public C1700a() {
                    }

                    @Override
                    public void a(float value, boolean canceled) {
                        if (canceled) {
                            return;
                        }
                        if (value < 1.0f) {
                            C15045a.u1(true, new C1701a(value));
                        } else {
                            K8.a.I(new b());
                        }
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View view) {
                    Z6.e.B1("Decimate percentage", 1.0f, 0.0f, 1.0f, new C1700a());
                }
            }

            public m() {
                add(new C12908b("Build atlas", new C1693a()));
                add(new C12908b("Build collision", new b()));
                add(new C12908b("Bake armatures", new c()));
            }
        }

        public a(final GameObject val$o, final Activity val$activity, final Context val$context) {
            this.f88261b = val$o;
            this.f88262c = val$activity;
            this.f88263d = val$context;
            add(new C12908b(new C1627a(), new f()));
            add(new C12908b(R.drawable.empty_object, Lang.l(Lang.T.EMPTY), new g()));
            add(new C12908b(R.drawable.add_media_v2, Lang.l(Lang.T.OBJECT_UTILS_CREATE_CHILD_OBJECT), C12881a.n(val$o)));
            add(new C12908b());
            add(new C12908b(R.drawable.hierarchy, Lang.l(Lang.T.OBJECT_UTILS_CHANGE_PARENT), new h()));
            if (!val$o.c1()) {
                add(new C12908b());
                add(new C12908b(R.drawable.cube_shadow, "Export object", new i()));
                add(new C12908b(R.drawable.fab, "Create prefab", new j()));
                if (val$o.c0(Component.e.Armature) != null) {
                    add(new C12908b(R.drawable.walk, "Create mask from skeleton", new k()));
                }
                if (val$o.c0(Component.e.SkinnedModelRenderer) != null) {
                    add(new C12908b(R.drawable.walk, "Create mask from skeleton", new l()));
                }
            }
            if (!val$o.c1()) {
                add(new C12908b());
                add(new C12908b("Bake", new m()));
                add(new C12908b());
                if (C13317e.C(val$o, Component.e.SkinJoint)) {
                    add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_ADD_CHILD_BONE), new b()));
                    add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_ADD_SKELETON), new c()));
                    add(new C12908b());
                }
            }
            add(new C12908b(Lang.l(Lang.T.OBJECT_UTILS_BATCH), new d()));
            add(new C12908b());
            add(new C12908b("Dev tools", new C1674e()));
        }
    }

    public class b implements InterfaceC2640t {

        public final GameObject f88414a;

        public final Context f88415b;

        public class a implements InterfaceC2640t {
            public a() {
            }

            @Override
            public void a(int index) {
            }

            @Override
            public void b(Object o10, int index) {
                b bVar = b.this;
                C13317e.h((GameObject) o10, bVar.f88414a, bVar.f88415b);
            }
        }

        public b(final GameObject val$toObject, final Context val$context) {
            this.f88414a = val$toObject;
            this.f88415b = val$context;
        }

        @Override
        public void a(int index) {
        }

        @Override
        public void b(Object oo, int index) {
            GameObject gameObject = (GameObject) oo;
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                this.f88414a.r(L10.mo1248clone());
                gameObject.u1(L10);
            }
            new z().f(gameObject.z0(), new a());
        }
    }

    public class c implements InterfaceC2640t {

        public final Component.e f88417a;

        public final GameObject f88418b;

        public final Context f88419c;

        public class a implements InterfaceC2640t {
            public a() {
            }

            @Override
            public void a(int index) {
            }

            @Override
            public void b(Object o10, int index) {
                c cVar = c.this;
                C13317e.i((GameObject) o10, cVar.f88418b, cVar.f88419c, cVar.f88417a);
            }
        }

        public c(final Component.e val$type, final GameObject val$toObject, final Context val$context) {
            this.f88417a = val$type;
            this.f88418b = val$toObject;
            this.f88419c = val$context;
        }

        @Override
        public void a(int index) {
        }

        @Override
        public void b(Object oo, int index) {
            GameObject gameObject = (GameObject) oo;
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if (L10 != null && L10.getType() == this.f88417a) {
                    this.f88418b.r(L10.mo1248clone());
                    gameObject.u1(L10);
                }
            }
            new z().f(gameObject.z0(), new a());
        }
    }

    public class d implements InterfaceC2640t {

        public final Transform.G f88421a;

        public d(final Transform.G val$state) {
            this.f88421a = val$state;
        }

        @Override
        public void a(int index) {
        }

        @Override
        public void b(Object oo, int index) {
            C13317e.L((GameObject) oo, this.f88421a);
        }
    }

    public class C1706e implements InterfaceC2640t {

        public final String f88422a;

        public C1706e(final String val$material) {
            this.f88422a = val$material;
        }

        @Override
        public void a(int index) {
        }

        @Override
        public void b(Object oo, int index) {
            C13317e.d((GameObject) oo, this.f88422a);
        }
    }

    public class f implements InterfaceC2640t {

        public final String f88423a;

        public f(final String val$shader) {
            this.f88423a = val$shader;
        }

        @Override
        public void a(int index) {
        }

        @Override
        public void b(Object oo, int index) {
            C13317e.e((GameObject) oo, this.f88423a);
        }
    }

    public static boolean A(GameObject o10, Component.e type) {
        Component c02;
        return J(o10) && (c02 = o10.c0(type)) != null && c02.isEnabled();
    }

    public static boolean B(GameObject o10, String tittle) {
        if (J(o10)) {
            for (int i10 = 0; i10 < o10.N(); i10++) {
                if (o10.L(i10).getTitle().equalsIgnoreCase(tittle)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean C(GameObject o10, Component.e type) {
        return J(o10) && o10.c0(type) != null;
    }

    public static boolean D(GameObject o10, Component.e type) {
        Component c02;
        return J(o10) && (c02 = o10.c0(type)) != null && c02.isEnabled();
    }

    public static boolean E(GameObject o10, Component.e type) {
        Component c02 = o10.c0(type);
        return c02 != null && c02.isEnabled();
    }

    public static boolean F(GameObject object) {
        return (object == null || object.isGarbage() || object.transform == null || !object.isEnabled()) ? false : true;
    }

    public static boolean G(GameObject object) {
        return object == null || object.isGarbage();
    }

    public static boolean H(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if ((L10 instanceof PhysicsComponent) && L10.isEnabled()) {
                return true;
            }
        }
        return false;
    }

    public static void I(GameObject object, Context context, boolean forceTextureName) {
        LinkedList linkedList = new LinkedList();
        Component.e eVar = Component.e.ModelRenderer;
        linkedList.addAll(object.n0(eVar));
        linkedList.addAll(y(eVar, object));
        LinkedList<Material> linkedList2 = new LinkedList();
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            ModelRenderer modelRenderer = (ModelRenderer) ((Component) it.next());
            try {
                if (modelRenderer.f73747F != null) {
                    Iterator<E> it2 = linkedList2.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((Material) it2.next()) == modelRenderer.f73747F) {
                                break;
                            }
                        } else {
                            linkedList2.add(modelRenderer.f73747F);
                            break;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        LinkedList<h> linkedList3 = new LinkedList();
        for (Material material : linkedList2) {
            Iterator<E> it3 = linkedList3.iterator();
            while (true) {
                if (it3.hasNext()) {
                    h hVar = (h) it3.next();
                    if (material.E(hVar.f88428a, forceTextureName)) {
                        hVar.f88429b.add(material);
                        System.out.println("Found a another material, adding to unique material others list");
                        break;
                    }
                } else {
                    System.out.println("Found a unique material, adding to list");
                    linkedList3.add(new h(material));
                    break;
                }
            }
        }
        Iterator<E> it4 = linkedList.iterator();
        while (it4.hasNext()) {
            ModelRenderer modelRenderer2 = (ModelRenderer) ((Component) it4.next());
            try {
                if (modelRenderer2.f73747F != null) {
                    for (h hVar2 : linkedList3) {
                        if (hVar2.f88428a == modelRenderer2.f73747F) {
                            System.out.println("Modelrenderer already using unique material " + modelRenderer2.getMaterialFile());
                        } else {
                            Iterator<Material> it5 = hVar2.f88429b.iterator();
                            while (it5.hasNext()) {
                                if (it5.next() == modelRenderer2.f73747F) {
                                    System.out.println("Changing material from " + modelRenderer2.getMaterialFile() + " to " + hVar2.f88428a.f78885e);
                                    modelRenderer2.setMaterialFile(hVar2.f88428a.f78885e);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public static boolean J(GameObject object) {
        return (object == null || object.isGarbage()) ? false : true;
    }

    public static boolean K(Transform object) {
        return object != null;
    }

    public static void L(GameObject object, Transform.G state) {
        object.transform.N3(state);
        new z().f(object.z0(), new d(state));
    }

    public static void M(GameObject o10, View anchor, C15147a.e anchorSide) {
        a aVar = new a(o10, N7.c.o(), N7.c.t());
        if (!o10.c1()) {
            C12908b c12908b = new C12908b(C12908b.EnumC1575b.Folder, "");
            for (int i10 = 0; i10 < C14940d.p(); i10++) {
                C12908b a10 = C14940d.o(i10).a(o10);
                if (a10 != null) {
                    if (c12908b.f84530c != null) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= c12908b.f84530c.size()) {
                                c12908b.f84530c.add(a10);
                                break;
                            }
                            C12908b c12908b2 = c12908b.f84530c.get(i11);
                            if (c12908b2.f84529b.equals(a10.f84529b) && c12908b2.f84528a == a10.f84528a) {
                                c12908b2.c(a10.f84530c);
                                break;
                            }
                            i11++;
                        }
                    } else {
                        LinkedList linkedList = new LinkedList();
                        c12908b.f84530c = linkedList;
                        linkedList.add(a10);
                    }
                }
            }
            if (c12908b.f84530c != null) {
                aVar.add(new C12908b());
                aVar.addAll(c12908b.f84530c);
            }
        }
        Y6.a.F1(anchor, anchorSide, aVar);
    }

    public static int N(GameObject parent) {
        int size = parent.z0().size();
        Iterator<GameObject> it = parent.z0().iterator();
        while (it.hasNext()) {
            size += N(it.next());
        }
        return size;
    }

    public static void O(GameObject object, boolean upgradeChildren) {
        if (object == null) {
            return;
        }
        C14474a.a(object, upgradeChildren);
        if (upgradeChildren) {
            for (int i10 = 0; i10 < object.D(); i10++) {
                O(object.C(i10), true);
            }
        }
    }

    public static void a(GameObject parent, GameObject child) {
        b(parent, child, 0);
    }

    public static void b(GameObject parent, GameObject child, int tries) {
        try {
            parent.z0().add(child);
        } catch (Exception unused) {
            if (tries < 5) {
                b(parent, child, tries + 1);
            }
        }
    }

    public static void c(GameObject parent, GameObject child, int index, int tries) {
        try {
            parent.z0().add(index, child);
        } catch (ConcurrentModificationException unused) {
            if (tries < 3) {
                c(parent, child, index, tries + 1);
            }
        }
    }

    public static void d(GameObject object, String material) {
        for (int i10 = 0; i10 < object.N(); i10++) {
            Component L10 = object.L(i10);
            if (L10 != null && L10.getType() == Component.e.ModelRenderer) {
                ((ModelRenderer) L10).setMaterialFile(material);
            }
        }
        new z().f(object.z0(), new C1706e(material));
    }

    public static void e(GameObject object, String shader) {
        Material material;
        for (int i10 = 0; i10 < object.N(); i10++) {
            Component L10 = object.L(i10);
            if (L10 != null && L10.getType() == Component.e.ModelRenderer && (material = ((ModelRenderer) L10).f73747F) != null) {
                material.f0(shader);
            }
        }
        new z().f(object.z0(), new f(shader));
    }

    public static void f(GameObject gameObject, Context context) {
        h(gameObject, gameObject, context);
    }

    public static void g(GameObject gameObject, Context context, Component.e type) {
        i(gameObject, gameObject, context, type);
    }

    public static void h(GameObject object, GameObject toObject, Context context) {
        new z().f(object.z0(), new b(toObject, context));
    }

    public static void i(GameObject object, GameObject toObject, Context context, Component.e type) {
        new z().f(object.z0(), new c(type, toObject, context));
    }

    public static void j(GameObject object) {
        k(object, 0);
    }

    public static void k(GameObject object, int tries) {
        if (J(object)) {
            try {
                object.e();
            } catch (Exception unused) {
                if (tries < 5) {
                    k(object, tries + 1);
                }
            }
        }
    }

    public static GameObject l(GameObject object, Ac.b duplicableGUID) {
        if (duplicableGUID != null) {
            return object.getGuid().e(duplicableGUID) ? object : p(object, duplicableGUID);
        }
        throw new NullPointerException("duplicableGUID can`t be null");
    }

    public static GameObject m(GameObject object, String duplicableGUID) {
        return object.getGuid().f(duplicableGUID) ? object : q(object, duplicableGUID);
    }

    public static GameObject n(GameObject object, String SGUID) {
        return object.getGuid().h(SGUID) ? object : t(object, SGUID);
    }

    public static GameObject o(GameObject object, String SGUID) {
        return object.getGuid().i(SGUID) ? object : v(object, SGUID);
    }

    public static GameObject p(GameObject object, Ac.b duplicableGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null) {
                if (C10.getGuid().e(duplicableGUID)) {
                    return C10;
                }
                GameObject p10 = p(C10, duplicableGUID);
                if (p10 != null) {
                    return p10;
                }
            }
        }
        return null;
    }

    public static GameObject q(GameObject object, String duplicableGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null) {
                if (C10.getGuid().f(duplicableGUID)) {
                    return C10;
                }
                GameObject q10 = q(C10, duplicableGUID);
                if (q10 != null) {
                    return q10;
                }
            }
        }
        return null;
    }

    public static GameObject r(GameObject object, String SGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null) {
                if (C10.getGuid().f(SGUID)) {
                    return C10;
                }
                GameObject r10 = r(C10, SGUID);
                if (r10 != null) {
                    return r10;
                }
            }
        }
        return null;
    }

    public static GameObject s(GameObject object, String SGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null && C10.getGuid().f(SGUID)) {
                return C10;
            }
        }
        return null;
    }

    public static GameObject t(GameObject object, String SGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null) {
                if (C10.getGuid().h(SGUID)) {
                    return C10;
                }
                GameObject t10 = t(C10, SGUID);
                if (t10 != null) {
                    return t10;
                }
            }
        }
        return null;
    }

    public static GameObject u(GameObject object, String SGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null && C10.getGuid().h(SGUID)) {
                return C10;
            }
        }
        return null;
    }

    public static GameObject v(GameObject object, String SGUID) {
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null) {
                if (C10.getGuid().i(SGUID)) {
                    return C10;
                }
                GameObject v10 = v(C10, SGUID);
                if (v10 != null) {
                    return v10;
                }
            }
        }
        return null;
    }

    public static Component w(GameObject object, String SGUID) {
        Component w10;
        Component m02 = object.m0(SGUID);
        if (m02 != null) {
            return m02;
        }
        for (int i10 = 0; i10 < object.D(); i10++) {
            GameObject C10 = object.C(i10);
            if (C10 != null && (w10 = w(C10, SGUID)) != null) {
                return w10;
            }
        }
        return null;
    }

    public static void x(GameObject object) {
        if (object != null) {
            object.getGuid().l();
            for (int i10 = 0; i10 < object.D(); i10++) {
                x(object.C(i10));
            }
        }
    }

    public static List<Component> y(Component.e type, GameObject parent) {
        LinkedList linkedList = new LinkedList();
        for (GameObject gameObject : parent.z0()) {
            linkedList.addAll(gameObject.n0(type));
            linkedList.addAll(y(type, gameObject));
        }
        return linkedList;
    }

    public static int z(GameObject o10, Component component) {
        if (!J(o10)) {
            return -1;
        }
        for (int i10 = 0; i10 < o10.N(); i10++) {
            try {
                if (o10.L(i10) == component) {
                    return i10;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return -1;
            }
        }
        return -1;
    }
}
