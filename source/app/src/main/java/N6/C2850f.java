package N6;

import Z6.c;
import Z6.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.DragPanelView;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphAttribute;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import r4.C15147a;

public class C2850f extends EditorPanel {

    public final H f15560X;

    public final ShaderGraphData f15561Y;

    public FloatingPanelArea f15562Z;

    public LinearLayout f15563a0;

    public ImageView f15564b0;

    public DragPanelView f15565c0;

    public ImageView f15566d0;

    public TextView f15567e0;

    public class a extends c.h {

        public final ShaderGraphAttribute f15568a;

        public a(final ShaderGraphAttribute val$a) {
            this.f15568a = val$a;
        }

        @Override
        public void a(c.g dialog) {
            super.a(dialog);
            if (C2850f.this.f15561Y.settings != null && C2850f.this.f15561Y.settings.attributes != null) {
                C2850f.this.f15561Y.settings.attributes.remove(this.f15568a);
            }
            C2850f.this.f15561Y.k();
            if (C2850f.this.f15560X != null) {
                C2850f.this.f15560X.b0();
            }
            C2850f.this.E1();
        }
    }

    public class b implements dd.d {

        public final View f15570a;

        public b(final View val$anchor) {
            this.f15570a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15570a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
        }
    }

    public class c implements dd.d {

        public final View f15572a;

        public c(final View val$anchor) {
            this.f15572a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15572a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER01);
        }
    }

    public class d implements dd.d {

        public final View f15574a;

        public d(final View val$anchor) {
            this.f15574a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15574a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        }
    }

    public class e implements dd.d {

        public final View f15576a;

        public e(final View val$anchor) {
            this.f15576a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15576a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        }
    }

    public class C0437f implements dd.d {

        public final View f15578a;

        public C0437f(final View val$anchor) {
            this.f15578a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15578a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4);
        }
    }

    public class g implements dd.d {

        public final View f15580a;

        public g(final View val$anchor) {
            this.f15580a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15580a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR);
        }
    }

    public class h implements dd.d {

        public final View f15582a;

        public h(final View val$anchor) {
            this.f15582a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15582a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        }
    }

    public class i implements dd.d {

        public final View f15584a;

        public i(final View val$anchor) {
            this.f15584a = val$anchor;
        }

        @Override
        public void onSelected(View v10) {
            C2850f.this.D1(this.f15584a, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP);
        }
    }

    public class j implements f.g {

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f15586a;

        public j(final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C val$type) {
            this.f15586a = val$type;
        }

        @Override
        public void c(String text) {
            Vector4 vector4;
            ShaderGraphAttribute shaderGraphAttribute = new ShaderGraphAttribute();
            shaderGraphAttribute.name = (text == null || text.trim().isEmpty()) ? "Attribute" : text.trim();
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = this.f15586a;
            shaderGraphAttribute.type = c10;
            if (c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR && (vector4 = shaderGraphAttribute.f81227v4) != null) {
                vector4.n(1.0f);
                shaderGraphAttribute.f81227v4.o(1.0f);
                shaderGraphAttribute.f81227v4.p(1.0f);
                shaderGraphAttribute.f81227v4.m(1.0f);
            }
            if (C2850f.this.f15561Y.settings != null && C2850f.this.f15561Y.settings.attributes != null) {
                C2850f.this.f15561Y.settings.attributes.add(shaderGraphAttribute);
            }
            C2850f.this.f15561Y.k();
            if (C2850f.this.f15560X != null) {
                C2850f.this.f15560X.b0();
            }
            C2850f.this.E1();
        }

        @Override
        public void onCancel() {
        }
    }

    public C2850f(H graphView, ShaderGraphData graphData) {
        super(null, Lang.l(Lang.T.PROPERTIES));
        this.f15560X = graphView;
        this.f15561Y = graphData;
        super.e1(false);
        super.a1(false);
    }

    public void E1() {
        H h10;
        LinearLayout linearLayout = this.f15563a0;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        ShaderGraphData shaderGraphData = this.f15561Y;
        if (shaderGraphData == null) {
            return;
        }
        if (shaderGraphData.settings == null) {
            shaderGraphData.settings = new ShaderGraphSettings();
        }
        ShaderGraphSettings shaderGraphSettings = this.f15561Y.settings;
        if (shaderGraphSettings.attributes == null) {
            shaderGraphSettings.attributes = new SteppedArrayList();
        }
        ShaderGraphData shaderGraphData2 = this.f15561Y;
        if (shaderGraphData2.settings.isPostProcessing) {
            boolean i10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.i(shaderGraphData2);
            if (i10) {
                this.f15561Y.k();
            }
            if (i10 && (h10 = this.f15560X) != null) {
                h10.b0();
            }
        }
        LayoutInflater from = LayoutInflater.from(M());
        for (final ShaderGraphAttribute shaderGraphAttribute : this.f15561Y.settings.attributes) {
            if (shaderGraphAttribute != null) {
                boolean z10 = false;
                View inflate = from.inflate(R.layout.shader_graph_attribute_item, (ViewGroup) this.f15563a0, false);
                TextView textView = (TextView) inflate.findViewById(R.id.attributeTitle);
                TextView textView2 = (TextView) inflate.findViewById(R.id.attributeSubtitle);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.attributeDeleteBtn);
                ImageView imageView2 = (ImageView) inflate.findViewById(R.id.attributeAddNodeBtn);
                if (textView != null) {
                    textView.setText(shaderGraphAttribute.name);
                }
                if (textView2 != null) {
                    textView2.setText(I1(shaderGraphAttribute.type));
                }
                if (this.f15561Y.settings.isPostProcessing && com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.k(shaderGraphAttribute)) {
                    z10 = true;
                }
                if (imageView != null) {
                    if (z10) {
                        imageView.setVisibility(4);
                    } else {
                        imageView.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public final void onClick(View view) {
                                C2850f.this.B1(shaderGraphAttribute, view);
                            }
                        });
                    }
                }
                if (imageView2 != null) {
                    imageView2.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            C2850f.this.C1(shaderGraphAttribute, view);
                        }
                    });
                }
                this.f15563a0.addView(inflate, new LinearLayout.LayoutParams(-1, -2));
            }
        }
    }

    private void F1(FloatingPanelArea floatingPanelArea) {
        this.f15562Z = floatingPanelArea;
    }

    public static FloatingPanelArea G1(View anchor, C15147a.e side, H graphView, ShaderGraphData graphData) {
        C2850f c2850f = new C2850f(graphView, graphData);
        FloatingPanelArea k10 = C15147a.k(anchor, c2850f, side, N7.c.g(250), N7.c.f(T6.a.f24083g0));
        c2850f.F1(k10);
        k10.T();
        k10.F1(true);
        k10.E1(false);
        return k10;
    }

    public void z1(View anchor) {
        if (this.f15561Y == null) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C12908b("Number", new b(anchor)));
        steppedArrayList.add(new C12908b("Number 01", new c(anchor)));
        steppedArrayList.add(new C12908b("Float2", new d(anchor)));
        steppedArrayList.add(new C12908b("Float3", new e(anchor)));
        steppedArrayList.add(new C12908b("Float4", new C0437f(anchor)));
        steppedArrayList.add(new C12908b(SerializableShaderEntry.f81153g, new g(anchor)));
        steppedArrayList.add(new C12908b(SerializableShaderEntry.f81152f, new h(anchor)));
        steppedArrayList.add(new C12908b("Cubemap", new i(anchor)));
        Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList);
    }

    public static String I1(com.itsmagic.engine.Engines.Graphics.ShaderGraph.C t10) {
        return t10 == null ? "UNKNOWN" : t10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER01 ? "Number 01" : t10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR ? SerializableShaderEntry.f81153g : t10.name();
    }

    public static boolean y1(View view, MotionEvent motionEvent) {
        return true;
    }

    public final void A1(View view) {
        R0();
    }

    public final void B1(ShaderGraphAttribute shaderGraphAttribute, View view) {
        Z6.c.z1("Delete", "Delete attribute '" + shaderGraphAttribute.name + "'?", new a(shaderGraphAttribute));
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public View C0() {
        DragPanelView dragPanelView;
        Context M10 = M();
        View inflate = N7.c.B().inflate(R.layout.shader_graph_attributes_popup, (ViewGroup) null);
        if (inflate == null) {
            return new FrameLayout(M10);
        }
        inflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean y12;
                y12 = C2850f.y1(view, motionEvent);
                return y12;
            }
        });
        if (inflate.getBackground() != null) {
            int k02 = Nc.b.k0(6.0f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Theme.i(Theme.T.CARD));
            gradientDrawable.setCornerRadius(k02);
            inflate.setBackground(gradientDrawable);
        }
        View findViewById = inflate.findViewById(R.id.attributesTopbar);
        if (findViewById != null) {
            int k03 = Nc.b.k0(6.0f);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            float f10 = k03;
            gradientDrawable2.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
            findViewById.setBackground(gradientDrawable2);
        }
        this.f15563a0 = (LinearLayout) inflate.findViewById(R.id.attributesListContainer);
        this.f15564b0 = (ImageView) inflate.findViewById(R.id.attributesAddBtn);
        this.f15565c0 = (DragPanelView) inflate.findViewById(R.id.attributesMoveBtn);
        this.f15566d0 = (ImageView) inflate.findViewById(R.id.attributesCloseBtn);
        TextView textView = (TextView) inflate.findViewById(R.id.attributesSubtitle);
        this.f15567e0 = textView;
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.PROPERTIES));
        }
        ImageView imageView = this.f15564b0;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    C2850f.this.z1(view);
                }
            });
        }
        FloatingPanelArea floatingPanelArea = this.f15562Z;
        if (floatingPanelArea != null && (dragPanelView = this.f15565c0) != null) {
            floatingPanelArea.H1(dragPanelView);
        }
        ImageView imageView2 = this.f15566d0;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    C2850f.this.A1(view);
                }
            });
        }
        E1();
        return inflate;
    }

    public final void C1(ShaderGraphAttribute shaderGraphAttribute, View view) {
        H h10 = this.f15560X;
        if (h10 != null) {
            h10.p(shaderGraphAttribute);
            R0();
        }
    }

    public final void D1(View anchor, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        ShaderGraphData shaderGraphData = this.f15561Y;
        if (shaderGraphData == null) {
            return;
        }
        if ((type != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE && type != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP) || com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.a(shaderGraphData)) {
            Z6.f.v1(anchor, C15147a.e.Below, "Attribute name", "Attribute", new j(type));
            return;
        }
        N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED) + " (8)");
    }
}
