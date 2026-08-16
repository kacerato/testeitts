package F5;

import C5.b;
import C5.n;
import D5.h;
import JAVARuntime.Color;
import JAVARuntime.Texture;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.android.tools.r8.internal.C8746oN0;
import com.android.tools.r8.internal.Jo1;
import com.bumptech.glide.load.engine.i;
import com.google.android.flexbox.FlexboxLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.InspectorMemory;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Settings.DecalSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import dd.C12908b;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import r4.C15147a;
import rc.C15169a;
import ub.p;

public class c {

    public class A implements h {

        public final float[] f6501a;

        public final u0 f6502b;

        public A(final float[] val$var, final u0 val$onChanged) {
            this.f6501a = val$var;
            this.f6502b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6501a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6501a[1] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6501a[1] = variable.float_value;
                u0 u0Var = this.f6502b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class B implements h {

        public final float[] f6503a;

        public final float[] f6504b;

        public final u0 f6505c;

        public final C5.b f6506d;

        public B(final float[] val$var, final float[] val$reset, final u0 val$onChanged, final C5.b val$rectPosVector) {
            this.f6503a = val$var;
            this.f6504b = val$reset;
            this.f6505c = val$onChanged;
            this.f6506d = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            float[] fArr;
            float[] fArr2 = this.f6503a;
            if (fArr2 == null || (fArr = this.f6504b) == null) {
                return;
            }
            fArr2[0] = fArr[0];
            fArr2[1] = fArr[1];
            u0 u0Var = this.f6505c;
            if (u0Var != null) {
                u0Var.a();
            }
            D5.f fVar = this.f6506d.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6506d.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class C implements h {

        public final UVec2I f6507a;

        public C(final UVec2I val$var) {
            this.f6507a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6507a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6507a.e() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6507a.j(variable.int_value);
            }
        }
    }

    public class D implements h {

        public final UVec2I f6508a;

        public D(final UVec2I val$var) {
            this.f6508a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6508a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6508a.f() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6508a.k(variable.int_value);
            }
        }
    }

    public class E implements h {

        public final UVec2I f6509a;

        public final UVec2I f6510b;

        public final C5.b f6511c;

        public E(final UVec2I val$var, final UVec2I val$reset, final C5.b val$rectPosVector) {
            this.f6509a = val$var;
            this.f6510b = val$reset;
            this.f6511c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            UVec2I uVec2I;
            UVec2I uVec2I2 = this.f6509a;
            if (uVec2I2 == null || (uVec2I = this.f6510b) == null) {
                return;
            }
            uVec2I2.h(uVec2I);
            D5.f fVar = this.f6511c.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6511c.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class F implements h {

        public final Vec2I f6512a;

        public F(final Vec2I val$var) {
            this.f6512a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6512a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6512a.f() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6512a.j(variable.int_value);
            }
        }
    }

    public class G implements h {

        public final Vector3 f6513a;

        public G(final Vector3 val$var) {
            this.f6513a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6513a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6513a.getX() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6513a.setX(variable.float_value);
            }
        }
    }

    public class H implements h {

        public final Vec2I f6514a;

        public H(final Vec2I val$var) {
            this.f6514a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6514a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6514a.g() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6514a.k(variable.int_value);
            }
        }
    }

    public class I implements h {

        public final Vec2I f6515a;

        public final Vec2I f6516b;

        public final C5.b f6517c;

        public I(final Vec2I val$var, final Vec2I val$reset, final C5.b val$rectPosVector) {
            this.f6515a = val$var;
            this.f6516b = val$reset;
            this.f6517c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vec2I vec2I;
            Vec2I vec2I2 = this.f6515a;
            if (vec2I2 == null || (vec2I = this.f6516b) == null) {
                return;
            }
            vec2I2.i(vec2I);
            D5.f fVar = this.f6517c.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6517c.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class J implements h {

        public final Vector2 f6518a;

        public J(final Vector2 val$var) {
            this.f6518a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6518a == null) {
                return new Variable("", "0");
            }
            return new Variable("", ((int) this.f6518a.f79838x) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6518a.f79838x = variable.int_value;
            }
        }
    }

    public class K implements h {

        public final Vector2 f6519a;

        public K(final Vector2 val$var) {
            this.f6519a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6519a == null) {
                return new Variable("", "0");
            }
            return new Variable("", ((int) this.f6519a.f79839y) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6519a.f79839y = variable.int_value;
            }
        }
    }

    public class L implements h {

        public final Vector2 f6520a;

        public final Vector2 f6521b;

        public final C5.b f6522c;

        public L(final Vector2 val$var, final Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f6520a = val$var;
            this.f6521b = val$reset;
            this.f6522c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector2 vector2;
            Vector2 vector22 = this.f6520a;
            if (vector22 == null || (vector2 = this.f6521b) == null) {
                return;
            }
            vector22.x0(vector2);
            D5.f fVar = this.f6522c.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6522c.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class M implements h {

        public final Vector4 f6523a;

        public M(final Vector4 val$var) {
            this.f6523a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6523a == null) {
                return new Variable("", "0");
            }
            return new Variable("", ((int) this.f6523a.f79845x) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6523a.f79845x = variable.int_value;
            }
        }
    }

    public class N implements h {

        public final Vector4 f6524a;

        public N(final Vector4 val$var) {
            this.f6524a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6524a == null) {
                return new Variable("", "0");
            }
            return new Variable("", ((int) this.f6524a.f79846y) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6524a.f79846y = variable.int_value;
            }
        }
    }

    public class O implements h {

        public final Vector4 f6525a;

        public O(final Vector4 val$var) {
            this.f6525a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6525a == null) {
                return new Variable("", "0");
            }
            return new Variable("", ((int) this.f6525a.f79847z) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6525a.f79847z = variable.int_value;
            }
        }
    }

    public class P implements h {

        public final Vector4 f6526a;

        public P(final Vector4 val$var) {
            this.f6526a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6526a == null) {
                return new Variable("", "0");
            }
            return new Variable("", ((int) this.f6526a.f79844w) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6526a.f79844w = variable.int_value;
            }
        }
    }

    public class Q implements h {

        public final Vector4 f6527a;

        public final Vector4 f6528b;

        public final C5.b f6529c;

        public Q(final Vector4 val$var, final Vector4 val$reset, final C5.b val$rectPosVector) {
            this.f6527a = val$var;
            this.f6528b = val$reset;
            this.f6529c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector4 vector4;
            Vector4 vector42 = this.f6527a;
            if (vector42 == null || (vector4 = this.f6528b) == null) {
                return;
            }
            vector42.l(vector4);
            D5.f fVar = this.f6529c.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6529c.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class R implements h {

        public final Vector3 f6530a;

        public R(final Vector3 val$var) {
            this.f6530a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6530a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6530a.getY() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6530a.setY(variable.float_value);
            }
        }
    }

    public class S implements h {

        public final float[] f6531a;

        public final u0 f6532b;

        public S(final float[] val$var, final u0 val$onChanged) {
            this.f6531a = val$var;
            this.f6532b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6531a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6531a[0] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6531a[0] = variable.float_value;
                u0 u0Var = this.f6532b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class T implements h {

        public final float[] f6533a;

        public final u0 f6534b;

        public T(final float[] val$var, final u0 val$onChanged) {
            this.f6533a = val$var;
            this.f6534b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6533a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6533a[1] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6533a[1] = variable.float_value;
                u0 u0Var = this.f6534b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class U implements h {

        public final float[] f6535a;

        public final u0 f6536b;

        public U(final float[] val$var, final u0 val$onChanged) {
            this.f6535a = val$var;
            this.f6536b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6535a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6535a[2] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6535a[2] = variable.float_value;
                u0 u0Var = this.f6536b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class V implements h {

        public final float[] f6537a;

        public final u0 f6538b;

        public V(final float[] val$var, final u0 val$onChanged) {
            this.f6537a = val$var;
            this.f6538b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6537a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6537a[3] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6537a[3] = variable.float_value;
                u0 u0Var = this.f6538b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class W implements h {

        public final float[] f6539a;

        public final float[] f6540b;

        public final u0 f6541c;

        public final C5.b f6542d;

        public W(final float[] val$var, final float[] val$reset, final u0 val$onChanged, final C5.b val$rectPosVector) {
            this.f6539a = val$var;
            this.f6540b = val$reset;
            this.f6541c = val$onChanged;
            this.f6542d = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            float[] fArr;
            float[] fArr2 = this.f6539a;
            if (fArr2 == null || (fArr = this.f6540b) == null) {
                return;
            }
            fArr2[0] = fArr[0];
            fArr2[1] = fArr[1];
            fArr2[2] = fArr[2];
            fArr2[4] = fArr[4];
            u0 u0Var = this.f6541c;
            if (u0Var != null) {
                u0Var.a();
            }
            D5.f fVar = this.f6542d.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6542d.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = this.f6542d.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
            D5.f fVar4 = this.f6542d.f2081p[3].f2076k;
            if (fVar4 != null) {
                fVar4.a();
            }
        }
    }

    public class X implements h {

        public final b f6543a;

        public X(final b val$listener) {
            this.f6543a = val$listener;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            b bVar = this.f6543a;
            if (bVar != null) {
                bVar.onClick();
            }
        }
    }

    public class Y implements h {

        public final d f6544a;

        public final List f6545b;

        public Y(final d val$listener, final List val$types) {
            this.f6544a = val$listener;
            this.f6545b = val$types;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6544a.b((String) this.f6545b.get(variable.int_value));
            }
        }
    }

    public class Z implements D5.e {

        public final String f6546a;

        public final F5.a f6547b;

        public class a extends AbstractViewOnClickListenerC12733a {

            public final FrameLayout[] f6548b;

            public final FrameLayout f6549c;

            public final int f6550d;

            public a(final FrameLayout[] val$lastSelectedIMG, final FrameLayout val$frameLayout, final int val$finalI) {
                this.f6548b = val$lastSelectedIMG;
                this.f6549c = val$frameLayout;
                this.f6550d = val$finalI;
            }

            @Override
            public void click(View v10) {
                FrameLayout frameLayout = this.f6548b[0];
                if (frameLayout != null) {
                    frameLayout.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.TREE_LIST_ROW1)));
                    this.f6548b[0] = null;
                }
                this.f6549c.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
                this.f6548b[0] = this.f6549c;
                Z.this.f6547b.b(this.f6550d);
            }
        }

        public Z(final String val$tittle, final F5.a val$brushListener) {
            this.f6546a = val$tittle;
            this.f6547b = val$brushListener;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
            String str = this.f6546a;
            if (str == null || str.isEmpty()) {
                textView.setVisibility(8);
            } else {
                textView.setText(this.f6546a);
            }
            FlexboxLayout flexboxLayout = (FlexboxLayout) view.findViewById(com.itsmagic.engine2.R.id.flexbox);
            int l02 = Nc.b.l0(2.0f, context);
            int l03 = Nc.b.l0(4.0f, context);
            int b10 = K8.a.f10987r.b();
            int selected = this.f6547b.getSelected();
            if (selected >= b10 || selected < 0) {
                selected = 0;
            }
            FrameLayout[] frameLayoutArr = {null};
            int l04 = Nc.b.l0(48.0f, context);
            for (int i10 = 0; i10 < b10; i10++) {
                String c10 = K8.a.f10987r.c(i10);
                FrameLayout frameLayout = new FrameLayout(context);
                flexboxLayout.addView(frameLayout);
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                layoutParams.width = l04;
                layoutParams.height = l04;
                frameLayout.setLayoutParams(layoutParams);
                frameLayout.setPadding(l02, l02, l02, l02);
                FrameLayout frameLayout2 = new FrameLayout(context);
                frameLayout.addView(frameLayout2);
                frameLayout2.setBackground(ContextCompat.getDrawable(context, com.itsmagic.engine2.R.drawable.rounded_brush_background));
                frameLayout2.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.CARD)));
                if (i10 == selected) {
                    frameLayout2.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
                    frameLayoutArr[0] = frameLayout2;
                } else {
                    frameLayout2.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.TREE_LIST_ROW1)));
                }
                ViewGroup.LayoutParams layoutParams2 = frameLayout2.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = -1;
                frameLayout2.setLayoutParams(layoutParams2);
                frameLayout2.setPadding(l03, l03, l03, l03);
                ImageView imageView = new ImageView(context);
                frameLayout2.addView(imageView);
                ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
                layoutParams3.width = -1;
                layoutParams3.height = -1;
                imageView.setLayoutParams(layoutParams3);
                Vc.e.D(imageView, c10, context);
                frameLayout2.setOnClickListener(new a(frameLayoutArr, frameLayout2, i10));
            }
        }
    }

    public class C2503a implements D5.e {

        public final String f6552a;

        public final q0 f6553b;

        public class C0121a extends AbstractViewOnClickListenerC12733a {

            public final Context f6554b;

            public final ImageView f6555c;

            public class C0122a extends SteppedArrayList<C12908b> {

                public class C0123a implements dd.d {
                    public C0123a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.b bVar = new M3.b();
                        bVar.s1("Decals");
                        C15147a.g(v10, bVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C2503a.this.f6553b.b(-1);
                        C0121a c0121a = C0121a.this;
                        C2503a.this.d(c0121a.f6554b, c0121a.f6555c, -1);
                    }
                }

                public C0122a() {
                    add(new C12908b(com.itsmagic.engine2.R.drawable.hpop_add, "Add more", new C0123a()));
                    add(new C12908b(com.itsmagic.engine2.R.drawable.hpop_add, "None", new b()));
                    add(new C12908b());
                }
            }

            public class b implements C12908b.a {

                public final String f6560a;

                public b(final String val$ipp) {
                    this.f6560a = val$ipp;
                }

                @Override
                public void a(Context context, ImageView imageView) {
                    if (this.f6560a == null) {
                        Vc.e.U(imageView, com.itsmagic.engine2.R.drawable.wo_uimage);
                        return;
                    }
                    String str = Tc.b.O(this.f6560a) + ".texture";
                    if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str).exists()) {
                        Vc.e.Q(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str, context, com.itsmagic.engine2.R.drawable.empty_image, i.f59186b);
                        return;
                    }
                    Vc.e.Q(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + this.f6560a, context, com.itsmagic.engine2.R.drawable.empty_image, i.f59186b);
                }
            }

            public class C0124c implements dd.d {

                public final int f6562a;

                public C0124c(final int val$finalI) {
                    this.f6562a = val$finalI;
                }

                @Override
                public void onSelected(View v10) {
                    C2503a.this.f6553b.b(this.f6562a);
                    C0121a c0121a = C0121a.this;
                    C2503a.this.d(c0121a.f6554b, c0121a.f6555c, this.f6562a);
                }
            }

            public C0121a(final Context val$context, final ImageView val$colorImage) {
                this.f6554b = val$context;
                this.f6555c = val$colorImage;
            }

            @Override
            public void click(View view) {
                C0122a c0122a = new C0122a();
                DecalSettings b10 = K8.a.l().b();
                for (int i10 = 0; i10 < b10.s(); i10++) {
                    c0122a.add(new C12908b(com.itsmagic.engine2.R.drawable.hpop_add, "Decal " + i10, new C0124c(i10)).e(new b(b10.r(i10))));
                }
                Y6.a.F1(view, C15147a.e.Left, c0122a);
            }
        }

        public C2503a(final String val$title, final q0 val$decalListener) {
            this.f6552a = val$title;
            this.f6553b = val$decalListener;
        }

        public final void d(Context context, ImageView colorImage, int index) {
            if (index < 0) {
                Vc.e.U(colorImage, com.itsmagic.engine2.R.drawable.empty_image);
                return;
            }
            try {
                String r10 = K8.a.l().b().r(index);
                if (r10 == null || r10.trim().isEmpty()) {
                    Vc.e.U(colorImage, com.itsmagic.engine2.R.drawable.empty_image);
                } else {
                    String str = Tc.b.O(r10) + ".texture";
                    if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str).exists()) {
                        Vc.e.Q(colorImage, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str, context, com.itsmagic.engine2.R.drawable.empty_image, i.f59186b);
                    } else {
                        Vc.e.Q(colorImage, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + r10, context, com.itsmagic.engine2.R.drawable.empty_image, i.f59186b);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ((TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle)).setText(this.f6552a);
            ImageView imageView = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.imageView6);
            d(context, imageView, this.f6553b.get());
            imageView.setOnClickListener(new C0121a(context, imageView));
        }
    }

    public class a0 implements D5.e {

        public final String f6564a;

        public final f f6565b;

        public class a extends AbstractViewOnClickListenerC12733a {

            public final FrameLayout[] f6566b;

            public final FrameLayout f6567c;

            public final int f6568d;

            public a(final FrameLayout[] val$lastSelectedIMG, final FrameLayout val$frameLayout, final int val$finalI) {
                this.f6566b = val$lastSelectedIMG;
                this.f6567c = val$frameLayout;
                this.f6568d = val$finalI;
            }

            @Override
            public void click(View v10) {
                FrameLayout frameLayout = this.f6566b[0];
                if (frameLayout != null) {
                    frameLayout.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.TREE_LIST_ROW1)));
                    this.f6566b[0] = null;
                }
                this.f6567c.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
                this.f6566b[0] = this.f6567c;
                a0.this.f6565b.b(this.f6568d);
            }
        }

        public a0(final String val$tittle, final f val$listener) {
            this.f6564a = val$tittle;
            this.f6565b = val$listener;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            Context context2 = context;
            TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
            String str = this.f6564a;
            if (str == null || str.isEmpty()) {
                textView.setVisibility(8);
            } else {
                textView.setText(this.f6564a);
            }
            FlexboxLayout flexboxLayout = (FlexboxLayout) view.findViewById(com.itsmagic.engine2.R.id.flexbox);
            int l02 = Nc.b.l0(2.0f, context2);
            int l03 = Nc.b.l0(4.0f, context2);
            int count = this.f6565b.count();
            int selected = this.f6565b.getSelected();
            char c10 = 0;
            int i10 = (selected >= count || selected < 0) ? 0 : selected;
            FrameLayout[] frameLayoutArr = new FrameLayout[1];
            frameLayoutArr[0] = null;
            int l04 = Nc.b.l0(48.0f, context2);
            int i11 = 0;
            while (i11 < count) {
                String a10 = this.f6565b.a(i11);
                FrameLayout frameLayout = new FrameLayout(context2);
                flexboxLayout.addView(frameLayout);
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                layoutParams.width = l04;
                layoutParams.height = l04;
                frameLayout.setLayoutParams(layoutParams);
                frameLayout.setPadding(l02, l02, l02, l02);
                FrameLayout frameLayout2 = new FrameLayout(context2);
                frameLayout.addView(frameLayout2);
                frameLayout2.setBackground(ContextCompat.getDrawable(context2, com.itsmagic.engine2.R.drawable.rounded_brush_background));
                frameLayout2.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.CARD)));
                if (i11 == i10) {
                    frameLayout2.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
                    frameLayoutArr[c10] = frameLayout2;
                } else {
                    frameLayout2.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.TREE_LIST_ROW1)));
                }
                ViewGroup.LayoutParams layoutParams2 = frameLayout2.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = -1;
                frameLayout2.setLayoutParams(layoutParams2);
                frameLayout2.setPadding(l03, l03, l03, l03);
                ImageView imageView = new ImageView(context2);
                frameLayout2.addView(imageView);
                ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
                layoutParams3.width = -1;
                layoutParams3.height = -1;
                imageView.setLayoutParams(layoutParams3);
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + Tc.b.O(a10) + ".meta/thumb.png");
                if (file.exists()) {
                    Vc.e.F(imageView, file);
                } else {
                    try {
                        D7.b.c(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + a10), imageView);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    Vc.e.U(imageView, com.itsmagic.engine2.R.drawable.cube_v2);
                }
                frameLayout2.setOnClickListener(new a(frameLayoutArr, frameLayout2, i11));
                i11++;
                context2 = context;
                c10 = 0;
            }
        }
    }

    public class C2504b implements h {

        public final Vector3 f6570a;

        public final Vector3 f6571b;

        public final C5.b f6572c;

        public C2504b(final Vector3 val$var, final Vector3 val$reset, final C5.b val$rectPosVector) {
            this.f6570a = val$var;
            this.f6571b = val$reset;
            this.f6572c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector3 vector3 = this.f6570a;
            if (vector3 != null) {
                vector3.set(this.f6571b);
                D5.f fVar = this.f6572c.f2081p[0].f2076k;
                if (fVar != null) {
                    fVar.a();
                }
                D5.f fVar2 = this.f6572c.f2081p[1].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
                D5.f fVar3 = this.f6572c.f2081p[2].f2076k;
                if (fVar3 != null) {
                    fVar3.a();
                }
            }
        }
    }

    public class b0 implements D5.e {

        public final e f6573a;

        public final int f6574b;

        public class a extends AbstractViewOnClickListenerC12733a {
            public a() {
            }

            @Override
            public void click(View v10) {
                b0 b0Var = b0.this;
                b0Var.f6573a.c(b0Var.f6574b);
                b0.this.f6573a.a();
            }
        }

        public b0(final e val$listener, final int val$finalI) {
            this.f6573a = val$listener;
            this.f6574b = val$finalI;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ((ImageView) view.findViewById(com.itsmagic.engine2.R.id.trashButton)).setOnClickListener(new a());
        }
    }

    public class C0125c implements h {

        public final float[] f6576a;

        public final u0 f6577b;

        public C0125c(final float[] val$var, final u0 val$onChanged) {
            this.f6576a = val$var;
            this.f6577b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6576a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6576a[0] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6576a[0] = variable.float_value;
                u0 u0Var = this.f6577b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class c0 implements h {

        public final Vector3 f6578a;

        public c0(final Vector3 val$var) {
            this.f6578a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6578a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6578a.getZ() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6578a.setZ(variable.float_value);
            }
        }
    }

    public class C2505d implements h {

        public final float[] f6579a;

        public final u0 f6580b;

        public C2505d(final float[] val$var, final u0 val$onChanged) {
            this.f6579a = val$var;
            this.f6580b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6579a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6579a[1] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6579a[1] = variable.float_value;
                u0 u0Var = this.f6580b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class d0 implements D5.b {

        public final e f6581a;

        public d0(final e val$listener) {
            this.f6581a = val$listener;
        }

        @Override
        public void a(View view) {
            this.f6581a.e();
            this.f6581a.a();
        }
    }

    public class C2506e implements h {

        public final float[] f6582a;

        public final u0 f6583b;

        public C2506e(final float[] val$var, final u0 val$onChanged) {
            this.f6582a = val$var;
            this.f6583b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6582a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6582a[2] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6582a[2] = variable.float_value;
                u0 u0Var = this.f6583b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class e0 implements h {

        public final List f6584a;

        public final r0 f6585b;

        public e0(final List val$contantsList, final r0 val$listener) {
            this.f6584a = val$contantsList;
            this.f6585b = val$listener;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    this.f6585b.set(this.f6584a.get(variable.int_value));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                r0 r0Var = this.f6585b;
                if (r0Var != null) {
                    r0Var.a();
                }
            }
        }
    }

    public class C2507f implements h {

        public final float[] f6586a;

        public final float[] f6587b;

        public final u0 f6588c;

        public final C5.b f6589d;

        public C2507f(final float[] val$var, final float[] val$reset, final u0 val$onChanged, final C5.b val$rectPosVector) {
            this.f6586a = val$var;
            this.f6587b = val$reset;
            this.f6588c = val$onChanged;
            this.f6589d = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            float[] fArr;
            float[] fArr2 = this.f6586a;
            if (fArr2 == null || (fArr = this.f6587b) == null) {
                return;
            }
            fArr2[0] = fArr[0];
            fArr2[1] = fArr[1];
            fArr2[2] = fArr[2];
            u0 u0Var = this.f6588c;
            if (u0Var != null) {
                u0Var.a();
            }
            D5.f fVar = this.f6589d.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6589d.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = this.f6589d.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
        }
    }

    public class f0 implements h {

        public final t0 f6590a;

        public final Texture f6591b;

        public f0(final t0 val$listener, final Texture val$finalVar) {
            this.f6590a = val$listener;
            this.f6591b = val$finalVar;
        }

        @Override
        public Variable get() {
            Texture texture = this.f6591b;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return new Variable("", ((ub.g) pVar).getFile());
                }
            }
            return new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                String str = variable.str_value;
                if (str == null || str.isEmpty()) {
                    this.f6590a.b(null);
                    this.f6590a.a();
                } else {
                    this.f6590a.b(new Texture(new ub.g(variable.str_value)));
                    this.f6590a.a();
                }
            }
        }
    }

    public class C2508g implements h {

        public final Vector3 f6592a;

        public final u0 f6593b;

        public C2508g(final Vector3 val$var, final u0 val$onChanged) {
            this.f6592a = val$var;
            this.f6593b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6592a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6592a.getX() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6592a.setX(variable.float_value);
                u0 u0Var = this.f6593b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class g0 implements h {

        public final p0 f6594a;

        public final Color f6595b;

        public g0(final p0 val$listener, final Color val$color) {
            this.f6594a = val$listener;
            this.f6595b = val$color;
        }

        @Override
        public Variable get() {
            return new Variable("temp", this.f6595b.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            this.f6594a.b(variable.color_value.e0());
            this.f6594a.a();
        }
    }

    public class C2509h implements h {

        public final Vector3 f6596a;

        public final u0 f6597b;

        public C2509h(final Vector3 val$var, final u0 val$onChanged) {
            this.f6596a = val$var;
            this.f6597b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6596a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6596a.getY() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6596a.setY(variable.float_value);
                u0 u0Var = this.f6597b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class h0 implements h {

        public final s0 f6598a;

        public final int f6599b;

        public h0(final s0 val$listener, final int val$shadowResolutionID) {
            this.f6598a = val$listener;
            this.f6599b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", TextureConfig.f79814s[this.f6599b] + "x" + TextureConfig.f79814s[this.f6599b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6598a.b(variable.int_value);
            }
        }
    }

    public class C2510i implements h {

        public final Vector3 f6600a;

        public final u0 f6601b;

        public C2510i(final Vector3 val$var, final u0 val$onChanged) {
            this.f6600a = val$var;
            this.f6601b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6600a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6600a.getZ() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6600a.setZ(variable.float_value);
                u0 u0Var = this.f6601b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class i0 implements h {

        public final s0 f6602a;

        public final int f6603b;

        public i0(final s0 val$listener, final int val$shadowResolutionID) {
            this.f6602a = val$listener;
            this.f6603b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", TextureConfig.f79814s[this.f6603b] + "x" + TextureConfig.f79814s[this.f6603b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6602a.b(variable.int_value);
            }
        }
    }

    public class C2511j implements h {

        public final Vector3 f6604a;

        public final Vector3 f6605b;

        public final u0 f6606c;

        public final C5.b f6607d;

        public C2511j(final Vector3 val$var, final Vector3 val$reset, final u0 val$onChanged, final C5.b val$rectPosVector) {
            this.f6604a = val$var;
            this.f6605b = val$reset;
            this.f6606c = val$onChanged;
            this.f6607d = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector3 vector3;
            Vector3 vector32 = this.f6604a;
            if (vector32 == null || (vector3 = this.f6605b) == null) {
                return;
            }
            vector32.set(vector3);
            u0 u0Var = this.f6606c;
            if (u0Var != null) {
                u0Var.a();
            }
            D5.f fVar = this.f6607d.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6607d.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = this.f6607d.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
        }
    }

    public class j0 implements h {

        public final Vector3 f6608a;

        public final Vector3 f6609b;

        public final C5.b f6610c;

        public j0(final Vector3 val$var, final Vector3 val$reset, final C5.b val$rectPosVector) {
            this.f6608a = val$var;
            this.f6609b = val$reset;
            this.f6610c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector3 vector3;
            Vector3 vector32 = this.f6608a;
            if (vector32 == null || (vector3 = this.f6609b) == null) {
                return;
            }
            vector32.set(vector3);
            D5.f fVar = this.f6610c.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6610c.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
            D5.f fVar3 = this.f6610c.f2081p[2].f2076k;
            if (fVar3 != null) {
                fVar3.a();
            }
        }
    }

    public class C2512k implements h {

        public final Quaternion f6611a;

        public C2512k(final Quaternion val$quaternion) {
            this.f6611a = val$quaternion;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f6611a.B().getX() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    Vector3 B10 = this.f6611a.B();
                    this.f6611a.v(variable.float_value, B10.getY(), B10.getZ());
                } catch (Exception unused) {
                }
            }
        }
    }

    public class k0 implements h {

        public final Vector3 f6612a;

        public k0(final Vector3 val$var) {
            this.f6612a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6612a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6612a.getX() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6612a.setX(variable.float_value);
            }
        }
    }

    public class C2513l implements D5.e {

        public LinearLayout f6613a;

        public ImageView f6614b;

        public boolean f6615c = false;

        public List<C5.b> f6616d;

        public final o0 f6617e;

        public final String f6618f;

        public final InspectorMemory f6619g;

        public final Context f6620h;

        public final LayoutInflater f6621i;

        public class a extends AbstractViewOnClickListenerC12733a {
            public a() {
            }

            @Override
            public void click(View view) {
                C2513l c2513l = C2513l.this;
                c2513l.f6615c = !c2513l.f6615c;
                c2513l.g();
                C2513l c2513l2 = C2513l.this;
                if (c2513l2.f6615c) {
                    c2513l2.f6616d = c2513l2.f6617e.b(new SteppedArrayList());
                }
                C2513l.this.d();
            }
        }

        public class b implements n {
            public b() {
            }

            @Override
            public void refresh(int position) {
                if (C2513l.this.f6617e.a()) {
                    C2513l c2513l = C2513l.this;
                    c2513l.f6616d = c2513l.f6617e.b(new SteppedArrayList());
                    C2513l.this.d();
                }
            }
        }

        public C2513l(final o0 val$listener, final String val$tittleText, final InspectorMemory val$inspectorMemory, final Context val$context, final LayoutInflater val$layoutInflater) {
            this.f6617e = val$listener;
            this.f6618f = val$tittleText;
            this.f6619g = val$inspectorMemory;
            this.f6620h = val$context;
            this.f6621i = val$layoutInflater;
        }

        public void d() {
            if (this.f6615c) {
                Vc.e.V(this.f6614b, com.itsmagic.engine2.R.drawable.tree_list_open_v4, this.f6620h);
                this.f6614b.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
            } else {
                Vc.e.V(this.f6614b, com.itsmagic.engine2.R.drawable.tree_list_closed_v3_inverse, this.f6620h);
                this.f6614b.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.MID_ICON_TINT)));
            }
            this.f6613a.removeAllViews();
            if (!this.f6615c) {
                this.f6613a.setVisibility(8);
                return;
            }
            this.f6613a.setVisibility(0);
            for (C5.b bVar : this.f6616d) {
                b.a aVar = bVar.f2079n;
                if (aVar == b.a.Vector) {
                    C5.h.y(this.f6613a, this.f6621i, bVar, 0, this.f6620h);
                } else if (aVar == b.a.Component) {
                    C5.h.w(this.f6613a, this.f6621i, bVar, 0, this.f6620h, new b());
                } else {
                    C5.h.x(this.f6613a, this.f6621i, bVar, 0, true, this.f6620h);
                }
            }
        }

        public final void e() {
            String c10;
            InspectorMemory inspectorMemory = this.f6619g;
            if (inspectorMemory == null || (c10 = inspectorMemory.c(f())) == null) {
                return;
            }
            this.f6615c = Boolean.parseBoolean(c10);
        }

        public final String f() {
            return this.f6617e.getClass().getName() + "/" + this.f6618f;
        }

        public final void g() {
            InspectorMemory inspectorMemory = this.f6619g;
            if (inspectorMemory == null) {
                return;
            }
            inspectorMemory.d(f(), Boolean.toString(this.f6615c));
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            this.f6613a = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.entries);
            this.f6614b = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.open);
            TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
            e();
            view.findViewById(com.itsmagic.engine2.R.id.region).setOnClickListener(new a());
            textView.setText(Tc.b.d(this.f6618f));
            this.f6616d = this.f6617e.b(new SteppedArrayList());
            d();
        }
    }

    public class l0 implements h {

        public final Vector3 f6624a;

        public l0(final Vector3 val$var) {
            this.f6624a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6624a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6624a.getY() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6624a.setY(variable.float_value);
            }
        }
    }

    public class C2514m implements h {

        public final Quaternion f6625a;

        public C2514m(final Quaternion val$quaternion) {
            this.f6625a = val$quaternion;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f6625a.B().getY() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    Vector3 B10 = this.f6625a.B();
                    this.f6625a.v(B10.getX(), variable.float_value, B10.getZ());
                } catch (Exception unused) {
                }
            }
        }
    }

    public class m0 implements h {

        public final Vector3 f6626a;

        public m0(final Vector3 val$var) {
            this.f6626a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6626a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6626a.getZ() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6626a.setZ(variable.float_value);
            }
        }
    }

    public class C2515n implements h {

        public final Quaternion f6627a;

        public C2515n(final Quaternion val$quaternion) {
            this.f6627a = val$quaternion;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f6627a.B().getZ() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    Vector3 B10 = this.f6627a.B();
                    this.f6627a.v(B10.getX(), B10.getY(), variable.float_value);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static class n0<T> implements r0<T> {
        @Override
        public void a() {
        }

        @Override
        public boolean b(T v10) {
            return true;
        }

        @Override
        public String c(T enumObject) {
            return enumObject.toString();
        }

        @Override
        public void set(T value) {
        }
    }

    public class C2516o implements h {

        public final Quaternion f6628a;

        public final Quaternion f6629b;

        public final C5.b f6630c;

        public C2516o(final Quaternion val$quaternion, final Quaternion val$reset, final C5.b val$rectRotVector) {
            this.f6628a = val$quaternion;
            this.f6629b = val$reset;
            this.f6630c = val$rectRotVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            try {
                this.f6628a.u0(this.f6629b);
                D5.f fVar = this.f6630c.f2081p[0].f2076k;
                if (fVar != null) {
                    fVar.a();
                }
                D5.f fVar2 = this.f6630c.f2081p[1].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
                D5.f fVar3 = this.f6630c.f2081p[2].f2076k;
                if (fVar3 != null) {
                    fVar3.a();
                }
            } catch (Exception unused) {
            }
        }
    }

    public interface o0 {
        default boolean a() {
            return false;
        }

        List<C5.b> b(List<C5.b> entries);
    }

    public class C2517p implements h {

        public final Quaternion f6631a;

        public C2517p(final Quaternion val$quaternion) {
            this.f6631a = val$quaternion;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f6631a.B().getX() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    Vector3 B10 = this.f6631a.B();
                    this.f6631a.v(variable.float_value, B10.getY(), B10.getZ());
                } catch (Exception unused) {
                }
            }
        }
    }

    public interface p0 {
        void a();

        void b(Color color);
    }

    public class C2518q implements h {

        public final Quaternion f6632a;

        public C2518q(final Quaternion val$quaternion) {
            this.f6632a = val$quaternion;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f6632a.B().getY() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    Vector3 B10 = this.f6632a.B();
                    this.f6632a.v(B10.getX(), variable.float_value, B10.getZ());
                } catch (Exception unused) {
                }
            }
        }
    }

    public interface q0 {
        void b(int index);

        int get();
    }

    public class C2519r implements h {

        public final Quaternion f6633a;

        public C2519r(final Quaternion val$quaternion) {
            this.f6633a = val$quaternion;
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", this.f6633a.B().getZ() + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    Vector3 B10 = this.f6633a.B();
                    this.f6633a.v(B10.getX(), B10.getY(), variable.float_value);
                } catch (Exception unused) {
                }
            }
        }
    }

    public interface r0<T> {
        void a();

        boolean b(T v10);

        String c(T enumObject);

        void set(T value);
    }

    public class C2520s implements h {

        public final Quaternion f6634a;

        public final Quaternion f6635b;

        public final C5.b f6636c;

        public C2520s(final Quaternion val$quaternion, final Quaternion val$reset, final C5.b val$entries) {
            this.f6634a = val$quaternion;
            this.f6635b = val$reset;
            this.f6636c = val$entries;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            try {
                this.f6634a.u0(this.f6635b);
                D5.f fVar = this.f6636c.f2081p[0].f2076k;
                if (fVar != null) {
                    fVar.a();
                }
                D5.f fVar2 = this.f6636c.f2081p[1].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
                D5.f fVar3 = this.f6636c.f2081p[2].f2076k;
                if (fVar3 != null) {
                    fVar3.a();
                }
            } catch (Exception unused) {
            }
        }
    }

    public interface s0 {
        void a();

        void b(int id2);
    }

    public class C2521t implements h {

        public final Vector2 f6637a;

        public C2521t(final Vector2 val$var) {
            this.f6637a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6637a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6637a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6637a.f79838x = variable.float_value;
            }
        }
    }

    public interface t0 {
        void a();

        void b(Texture texture);
    }

    public class C2522u implements h {

        public final Vector2 f6638a;

        public C2522u(final Vector2 val$var) {
            this.f6638a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f6638a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6638a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6638a.f79839y = variable.float_value;
            }
        }
    }

    public interface u0 {
        void a();
    }

    public class C2523v implements h {

        public final Vector2 f6639a;

        public final Vector2 f6640b;

        public final C5.b f6641c;

        public C2523v(final Vector2 val$var, final Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f6639a = val$var;
            this.f6640b = val$reset;
            this.f6641c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector2 vector2;
            Vector2 vector22 = this.f6639a;
            if (vector22 == null || (vector2 = this.f6640b) == null) {
                return;
            }
            vector22.x0(vector2);
            D5.f fVar = this.f6641c.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6641c.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class C2524w implements h {

        public final Vector2 f6642a;

        public final u0 f6643b;

        public C2524w(final Vector2 val$var, final u0 val$onChanged) {
            this.f6642a = val$var;
            this.f6643b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6642a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6642a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6642a.f79838x = variable.float_value;
                u0 u0Var = this.f6643b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class C2525x implements h {

        public final Vector2 f6644a;

        public final u0 f6645b;

        public C2525x(final Vector2 val$var, final u0 val$onChanged) {
            this.f6644a = val$var;
            this.f6645b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6644a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6644a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6644a.f79839y = variable.float_value;
                u0 u0Var = this.f6645b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public class C2526y implements h {

        public final Vector2 f6646a;

        public final Vector2 f6647b;

        public final u0 f6648c;

        public final C5.b f6649d;

        public C2526y(final Vector2 val$var, final Vector2 val$reset, final u0 val$onChanged, final C5.b val$rectPosVector) {
            this.f6646a = val$var;
            this.f6647b = val$reset;
            this.f6648c = val$onChanged;
            this.f6649d = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Vector2 vector2;
            Vector2 vector22 = this.f6646a;
            if (vector22 == null || (vector2 = this.f6647b) == null) {
                return;
            }
            vector22.x0(vector2);
            u0 u0Var = this.f6648c;
            if (u0Var != null) {
                u0Var.a();
            }
            D5.f fVar = this.f6649d.f2081p[0].f2076k;
            if (fVar != null) {
                fVar.a();
            }
            D5.f fVar2 = this.f6649d.f2081p[1].f2076k;
            if (fVar2 != null) {
                fVar2.a();
            }
        }
    }

    public class C2527z implements h {

        public final float[] f6650a;

        public final u0 f6651b;

        public C2527z(final float[] val$var, final u0 val$onChanged) {
            this.f6650a = val$var;
            this.f6651b = val$onChanged;
        }

        @Override
        public Variable get() {
            if (this.f6650a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f6650a[0] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f6650a[0] = variable.float_value;
                u0 u0Var = this.f6651b;
                if (u0Var != null) {
                    u0Var.a();
                }
            }
        }
    }

    public static C5.b A(String tittle, float[] var) {
        return B(tittle, var, null);
    }

    public static C5.b B(String tittle, float[] var, float[] reset) {
        return C(tittle, var, reset, null);
    }

    public static C5.b C(String tittle, float[] var, float[] reset, u0 onChanged) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        C2527z c2527z = new C2527z(var, onChanged);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c2527z, "X", aVar);
        bVar.f2081p[1] = new C5.b(new A(var, onChanged), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new B(var, reset, onChanged, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b D(String tittle, Vector2 var, Vector2 reset) {
        C5.b bVar = new C5.b(new C5.a(tittle, false));
        bVar.f2064Q.f2043p = Theme.i(Theme.T.ACCENT_GREEN);
        C5.b bVar2 = new C5.b((String) null, b.a.Vector, new C5.b[2]);
        C5.b[] bVarArr = bVar2.f2081p;
        C2521t c2521t = new C2521t(var);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c2521t, "X", aVar);
        bVar2.f2081p[1] = new C5.b(new C2522u(var), "Y", aVar);
        bVar.f2064Q.f2042o.add(bVar2);
        bVar.f2064Q.f2042o.add(new C5.b(new C2523v(var, reset, bVar2), "R", b.a.Button).n(true));
        return bVar;
    }

    public static C5.b E(String tittle, UVec2I var) {
        return F(tittle, var, null);
    }

    public static C5.b F(String tittle, UVec2I var, UVec2I reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        C c10 = new C(var);
        b.a aVar = b.a.SLIntWrap;
        bVarArr[0] = new C5.b(c10, "X", aVar);
        bVar.f2081p[1] = new C5.b(new D(var), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new E(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b G(String tittle, Vec2I var) {
        return H(tittle, var, null);
    }

    public static C5.b H(String tittle, Vec2I var, Vec2I reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        F f10 = new F(var);
        b.a aVar = b.a.SLIntWrap;
        bVarArr[0] = new C5.b(f10, "X", aVar);
        bVar.f2081p[1] = new C5.b(new H(var), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new I(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b I(String tittle, Vector2 var) {
        return J(tittle, var, null);
    }

    public static C5.b J(String tittle, Vector2 var, Vector2 reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        J j10 = new J(var);
        b.a aVar = b.a.SLIntWrap;
        bVarArr[0] = new C5.b(j10, "X", aVar);
        bVar.f2081p[1] = new C5.b(new K(var), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new L(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b K(String tittle, Vector3 var) {
        return L(tittle, var, null);
    }

    public static C5.b L(String tittle, Vector3 var, Vector3 reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 4 : 3]);
        C5.b[] bVarArr = bVar.f2081p;
        k0 k0Var = new k0(var);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(k0Var, "X", aVar);
        bVar.f2081p[1] = new C5.b(new l0(var), "Y", aVar);
        bVar.f2081p[2] = new C5.b(new m0(var), "z", aVar);
        if (reset != null) {
            bVar.f2081p[3] = new C5.b(new C2504b(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b M(String tittle, Vector3 var, Vector3 reset, u0 onChanged) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 4 : 3]);
        C5.b[] bVarArr = bVar.f2081p;
        C2508g c2508g = new C2508g(var, onChanged);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c2508g, "X", aVar);
        bVar.f2081p[1] = new C5.b(new C2509h(var, onChanged), "Y", aVar);
        bVar.f2081p[2] = new C5.b(new C2510i(var, onChanged), Signature.SIG_BOOLEAN, aVar);
        if (reset != null) {
            bVar.f2081p[3] = new C5.b(new C2511j(var, reset, onChanged, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b N(String tittle, float[] var) {
        return O(tittle, var, null);
    }

    public static C5.b O(String tittle, float[] var, float[] reset) {
        return P(tittle, var, reset, null);
    }

    public static C5.b P(String tittle, float[] var, float[] reset, u0 onChanged) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 4 : 3]);
        C5.b[] bVarArr = bVar.f2081p;
        C0125c c0125c = new C0125c(var, onChanged);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c0125c, "X", aVar);
        bVar.f2081p[1] = new C5.b(new C2505d(var, onChanged), "Y", aVar);
        bVar.f2081p[2] = new C5.b(new C2506e(var, onChanged), Signature.SIG_BOOLEAN, aVar);
        if (reset != null) {
            bVar.f2081p[3] = new C5.b(new C2507f(var, reset, onChanged, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b Q(String tittle, Vector3 var) {
        return R(tittle, var, null);
    }

    public static C5.b R(String tittle, Vector3 var, Vector3 reset) {
        return S(tittle, var, reset, Theme.i(Theme.T.ACCENT_GREEN));
    }

    public static C5.b S(String tittle, Vector3 var, Vector3 reset, int color) {
        C5.b bVar = new C5.b(new C5.a(tittle, false));
        bVar.f2064Q.f2043p = color;
        C5.b bVar2 = new C5.b((String) null, b.a.Vector, new C5.b[reset != null ? 4 : 3]);
        C5.b[] bVarArr = bVar2.f2081p;
        G g10 = new G(var);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(g10, "X", aVar);
        bVar2.f2081p[1] = new C5.b(new R(var), "Y", aVar);
        bVar2.f2081p[2] = new C5.b(new c0(var), Signature.SIG_BOOLEAN, aVar);
        if (reset != null) {
            bVar2.f2081p[3] = new C5.b(new j0(var, reset, bVar2), "R", b.a.Button).n(true);
        }
        bVar.f2064Q.f2042o.add(bVar2);
        return bVar;
    }

    public static C5.b T(String tittle, float[] var) {
        return U(tittle, var, null);
    }

    public static C5.b U(String tittle, float[] var, float[] reset) {
        return V(tittle, var, reset, null);
    }

    public static C5.b V(String tittle, float[] var, float[] reset, u0 onChanged) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 5 : 4]);
        C5.b[] bVarArr = bVar.f2081p;
        S s10 = new S(var, onChanged);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(s10, "X", aVar);
        bVar.f2081p[1] = new C5.b(new T(var, onChanged), "Y", aVar);
        bVar.f2081p[2] = new C5.b(new U(var, onChanged), Signature.SIG_BOOLEAN, aVar);
        bVar.f2081p[3] = new C5.b(new V(var, onChanged), ExifInterface.LONGITUDE_WEST, aVar);
        if (reset != null) {
            bVar.f2081p[4] = new C5.b(new W(var, reset, onChanged, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b W(String tittle, Vector4 var) {
        return X(tittle, var, null);
    }

    public static C5.b X(String tittle, Vector4 var, Vector4 reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 5 : 4]);
        C5.b[] bVarArr = bVar.f2081p;
        M m10 = new M(var);
        b.a aVar = b.a.SLIntWrap;
        bVarArr[0] = new C5.b(m10, "X", aVar);
        bVar.f2081p[1] = new C5.b(new N(var), "Y", aVar);
        bVar.f2081p[2] = new C5.b(new O(var), Signature.SIG_BOOLEAN, aVar);
        bVar.f2081p[3] = new C5.b(new P(var), ExifInterface.LONGITUDE_WEST, aVar);
        if (reset != null) {
            bVar.f2081p[4] = new C5.b(new Q(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static void Y(FloatingPanelArea floatingPanelArea) {
        floatingPanelArea.I1(306, 200, FloatingPanelArea.i.Fixed);
        floatingPanelArea.N1(false);
    }

    public static C5.b a(Context context, a brushListener) {
        return b(context, "Brush", brushListener);
    }

    public static C5.b b(Context context, String tittle, a brushListener) {
        return new C5.b(new Z(tittle, brushListener), com.itsmagic.engine2.R.layout.inspector_brush, (Object) null);
    }

    public static C5.b c(String tittle, b listener) {
        return new C5.b(new X(listener), tittle, b.a.Button);
    }

    public static C5.b d(InspectorMemory inspectorMemory, String tittleText, o0 listener) {
        return new C5.b(new C2513l(listener, tittleText, inspectorMemory, N7.c.t(), N7.c.B()), com.itsmagic.engine2.R.layout.inspector_component_colpasable, (Object) null);
    }

    public static C5.b e(String tittleText, o0 listener) {
        return d(null, tittleText, listener);
    }

    public static C5.b f(String tittleText, InspectorMemory inspectorMemory, o0 listener) {
        return d(inspectorMemory, tittleText, listener);
    }

    public static C5.b g(String tittle, Color color, p0 listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        if (color != null) {
            return new C5.b(new g0(listener, color), tittle, b.a.Color, N7.c.t());
        }
        throw new NullPointerException("Color can't be null");
    }

    public static C5.b h(String title, q0 decalListener) {
        return new C5.b(new C2503a(title, decalListener), com.itsmagic.engine2.R.layout.inspector_component_texture, (Object) null);
    }

    public static C5.b i(String tittle, Class enumClass, Object value, r0 listener) {
        return j(tittle, enumClass, value, listener, b.a.SLDropdown);
    }

    public static C5.b j(String tittle, Class enumClass, Object value, r0 listener, b.a type) {
        if (!enumClass.isEnum()) {
            throw new RuntimeException("enumClass should be an enum");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (Object obj : enumClass.getEnumConstants()) {
            if (listener.b(obj)) {
                steppedArrayList.add(listener.c(obj));
                steppedArrayList2.add(obj);
            }
        }
        return new C5.b(new e0(steppedArrayList2, listener), value != null ? listener.c(value) : "", steppedArrayList, type, tittle);
    }

    public static C5.b k(String tittle, d listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.addAll(Arrays.asList(C15169a.f108811t.e()));
        steppedArrayList.sort(Comparator.comparingInt(new C8746oN0()).thenComparing(new Jo1()));
        return new C5.b(new Y(listener, steppedArrayList), listener.get(), steppedArrayList, b.a.SLDropdown, tittle);
    }

    public static C5.b l(String tittle, InspectorEditor editor, e listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        C5.b bVar = new C5.b(new C5.a(tittle, false, editor));
        bVar.f2064Q.f2043p = Theme.i(Theme.T.PANEL_TOPBAR);
        for (int i10 = 0; i10 < listener.d(); i10++) {
            C5.b bVar2 = new C5.b((String) null, b.a.Vector, new C5.b[2]);
            bVar2.f2081p[0] = new C5.b(new b0(listener, i10), com.itsmagic.engine2.R.layout.inspector_delete, (Object) null);
            C5.b[] bVarArr = bVar2.f2081p;
            bVarArr[0].f2055H = true;
            bVarArr[1] = listener.b(i10);
            bVar.f2064Q.f2042o.add(bVar2);
        }
        bVar.f2064Q.f2042o.add(new C5.b(new d0(listener), Lang.l(Lang.T.ADD_NEW), b.a.Button));
        return bVar;
    }

    public static C5.b m(Context context, f listener) {
        return n(context, "Prefab", listener);
    }

    public static C5.b n(Context context, String tittle, f listener) {
        return new C5.b(new a0(tittle, listener), com.itsmagic.engine2.R.layout.inspector_brush, (Object) null);
    }

    public static C5.b o(String tittle, Quaternion quaternion) {
        return p(tittle, quaternion, null);
    }

    public static C5.b p(String tittle, Quaternion quaternion, Quaternion reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 4 : 3]);
        C5.b[] bVarArr = bVar.f2081p;
        C2517p c2517p = new C2517p(quaternion);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c2517p, "X", aVar, 20.0f);
        bVar.f2081p[1] = new C5.b(new C2518q(quaternion), "Y", aVar, 20.0f);
        bVar.f2081p[2] = new C5.b(new C2519r(quaternion), Signature.SIG_BOOLEAN, aVar, 20.0f);
        if (reset != null) {
            bVar.f2081p[3] = new C5.b(new C2520s(quaternion, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public static C5.b q(String tittle, Quaternion quaternion, Quaternion reset) {
        return r(tittle, quaternion, reset, Theme.i(Theme.T.ACCENT_GREEN));
    }

    public static C5.b r(String tittle, Quaternion quaternion, Quaternion reset, int color) {
        return s(tittle, quaternion, reset, Theme.i(Theme.T.ACCENT_GREEN), null);
    }

    public static C5.b s(String tittle, Quaternion quaternion, Quaternion reset, int color, InspectorEditor editor) {
        C5.b bVar = new C5.b(new C5.a(tittle, true, editor));
        bVar.f2064Q.f2043p = color;
        C5.b bVar2 = new C5.b((String) null, b.a.Vector, new C5.b[3]);
        C5.b[] bVarArr = bVar2.f2081p;
        C2512k c2512k = new C2512k(quaternion);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c2512k, "X", aVar, 20.0f);
        bVar2.f2081p[1] = new C5.b(new C2514m(quaternion), "Y", aVar, 20.0f);
        bVar2.f2081p[2] = new C5.b(new C2515n(quaternion), Signature.SIG_BOOLEAN, aVar, 20.0f);
        bVar.f2064Q.f2042o.add(bVar2);
        bVar.f2064Q.f2042o.add(new C5.b(new C2516o(quaternion, reset, bVar2), Lang.l(Lang.T.RESET), b.a.Button).n(true));
        return bVar;
    }

    public static C5.b t(String tittle, Quaternion quaternion, Quaternion reset, InspectorEditor editor) {
        return s(tittle, quaternion, reset, Theme.i(Theme.T.ACCENT_GREEN), editor);
    }

    public static C5.b u(String tittle, int value, int maxID, s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 0;
        for (int i11 : TextureConfig.f79814s) {
            if (i10 > maxID) {
                break;
            }
            steppedArrayList.add(i11 + "x" + i11);
            i10++;
        }
        return new C5.b(new i0(listener, value), TextureConfig.f79814s[value] + "x" + TextureConfig.f79814s[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    public static C5.b v(String tittle, int value, s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : TextureConfig.f79814s) {
            steppedArrayList.add(i10 + "x" + i10);
        }
        return new C5.b(new h0(listener, value), TextureConfig.f79814s[value] + "x" + TextureConfig.f79814s[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    public static C5.b w(String tittle, Texture texture, t0 listener) {
        if (listener != null) {
            return new C5.b(new f0(listener, texture), tittle, b.a.Texture, N7.c.t());
        }
        throw new NullPointerException("listener can't be null");
    }

    public static C5.b x(String tittle, Vector2 var) {
        return y(tittle, var, null);
    }

    public static C5.b y(String tittle, Vector2 var, Vector2 reset) {
        return z(tittle, var, reset, null);
    }

    public static C5.b z(String tittle, Vector2 var, Vector2 reset, u0 onChanged) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        C2524w c2524w = new C2524w(var, onChanged);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(c2524w, "X", aVar);
        bVar.f2081p[1] = new C5.b(new C2525x(var, onChanged), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new C2526y(var, reset, onChanged, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }
}
