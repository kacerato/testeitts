package e6;

import Z6.c;
import Z6.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.DragPanelView;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeFileExecutor;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttribute;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine2.R;
import ga.C13305a;
import java.util.List;
import r4.C15147a;

public class C13030l extends EditorPanel {

    public final X f85321X;

    public final NoCodeData f85322Y;

    public final boolean f85323Z;

    public FloatingPanelArea f85324a0;

    public LinearLayout f85325b0;

    public ImageView f85326c0;

    public DragPanelView f85327d0;

    public ImageView f85328e0;

    public TextView f85329f0;

    public class a implements f.g {

        public final ga.H f85330a;

        public final ga.H f85331b;

        public a(final ga.H val$type, final ga.H val$listItemType) {
            this.f85330a = val$type;
            this.f85331b = val$listItemType;
        }

        @Override
        public void c(String text) {
            NoCodeAttribute noCodeAttribute = new NoCodeAttribute();
            noCodeAttribute.name = (text == null || text.trim().isEmpty()) ? "Attribute" : text.trim();
            noCodeAttribute.i(this.f85330a, this.f85331b);
            noCodeAttribute.visible = !C13030l.this.f85323Z;
            List E12 = C13030l.this.E1();
            if (E12 == null) {
                return;
            }
            E12.add(noCodeAttribute);
            C13030l.this.P1(true);
            C13030l.this.R1();
        }

        @Override
        public void onCancel() {
        }
    }

    public class b extends c.h {

        public final List f85333a;

        public final NoCodeAttribute f85334b;

        public b(final List val$attributes, final NoCodeAttribute val$attribute) {
            this.f85333a = val$attributes;
            this.f85334b = val$attribute;
        }

        @Override
        public void a(c.g dialog) {
            super.a(dialog);
            this.f85333a.remove(this.f85334b);
            C13030l.this.P1(true);
            C13030l.this.R1();
        }
    }

    public class c implements f.g {

        public final NoCodeAttribute f85336a;

        public c(final NoCodeAttribute val$attribute) {
            this.f85336a = val$attribute;
        }

        @Override
        public void c(String text) {
            NoCodeAttribute noCodeAttribute = this.f85336a;
            if (noCodeAttribute != null) {
                noCodeAttribute.name = (text == null || text.trim().isEmpty()) ? "Attribute" : text.trim();
                C13030l.this.P1(true);
                C13030l.this.R1();
            }
        }

        @Override
        public void onCancel() {
        }
    }

    public C13030l(X graphView, NoCodeData graphData, boolean editGlobalAttributes) {
        super(null, editGlobalAttributes ? Lang.l(Lang.T.GLOBAL_ATTRIBUTES) : Lang.l(Lang.T.ATTRIBUTES));
        this.f85321X = graphView;
        this.f85322Y = graphData;
        this.f85323Z = editGlobalAttributes;
        super.e1(false);
        super.a1(false);
    }

    public static boolean F1(View view, MotionEvent motionEvent) {
        return true;
    }

    public static FloatingPanelArea U1(View anchor, C15147a.e side, X view, NoCodeData data) {
        C13030l c13030l = new C13030l(view, data, false);
        FloatingPanelArea k10 = C15147a.k(anchor, c13030l, side, N7.c.g(280), N7.c.f(T6.a.f24083g0));
        c13030l.T1(k10);
        k10.T();
        return k10;
    }

    public static FloatingPanelArea W1(View anchor, C15147a.e side, X view, NoCodeData data) {
        C13030l c13030l = new C13030l(view, data, true);
        FloatingPanelArea k10 = C15147a.k(anchor, c13030l, side, N7.c.g(250), N7.c.f(T6.a.f24083g0));
        c13030l.T1(k10);
        k10.T();
        return k10;
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public View C0() {
        DragPanelView dragPanelView;
        Context M10 = M();
        View inflate = N7.c.B().inflate(R.layout.nocode_attributes_popup, (ViewGroup) null);
        if (inflate == null) {
            return new FrameLayout(M10);
        }
        inflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean F12;
                F12 = C13030l.F1(view, motionEvent);
                return F12;
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
        this.f85325b0 = (LinearLayout) inflate.findViewById(R.id.attributesListContainer);
        this.f85326c0 = (ImageView) inflate.findViewById(R.id.attributesAddBtn);
        this.f85327d0 = (DragPanelView) inflate.findViewById(R.id.attributesMoveBtn);
        this.f85328e0 = (ImageView) inflate.findViewById(R.id.attributesCloseBtn);
        TextView textView = (TextView) inflate.findViewById(R.id.attributesSubtitle);
        this.f85329f0 = textView;
        if (textView != null) {
            textView.setText(this.f85323Z ? Lang.l(Lang.T.GLOBAL_ATTRIBUTES) : Lang.l(Lang.T.ATTRIBUTES));
        }
        ImageView imageView = this.f85326c0;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    C13030l.this.V1(view);
                }
            });
        }
        FloatingPanelArea floatingPanelArea = this.f85324a0;
        if (floatingPanelArea != null && (dragPanelView = this.f85327d0) != null) {
            floatingPanelArea.H1(dragPanelView);
        }
        ImageView imageView2 = this.f85328e0;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    C13030l.this.G1(view);
                }
            });
        }
        R1();
        return inflate;
    }

    public final List<NoCodeAttribute> E1() {
        NoCodeData noCodeData = this.f85322Y;
        if (noCodeData == null) {
            return null;
        }
        if (this.f85323Z) {
            return noCodeData.e0();
        }
        noCodeData.H();
        return this.f85322Y.attributes;
    }

    public final void G1(View view) {
        R0();
    }

    public final void J1(NoCodeAttribute noCodeAttribute, CompoundButton compoundButton, boolean z10) {
        noCodeAttribute.visible = z10;
        P1(false);
    }

    public final void K1(NoCodeAttribute noCodeAttribute, List list, View view) {
        Z6.c.z1("Delete", "Delete attribute '" + noCodeAttribute.name + "'?", new b(list, noCodeAttribute));
    }

    public final void L1(NoCodeAttribute noCodeAttribute, View view) {
        X x10 = this.f85321X;
        if (x10 != null) {
            x10.p(noCodeAttribute);
            R0();
        }
    }

    public final void M1(NoCodeAttribute noCodeAttribute, View view) {
        X x10 = this.f85321X;
        if (x10 != null) {
            x10.s(noCodeAttribute);
            R0();
        }
    }

    public final void O1(NoCodeAttribute noCodeAttribute, ga.H h10, ga.H h11) {
        NoCodeData noCodeData = this.f85322Y;
        GameObject h02 = noCodeData != null ? noCodeData.h0() : null;
        NoCodeData noCodeData2 = this.f85322Y;
        noCodeAttribute.a(h10, h11, h02, noCodeData2 != null ? noCodeData2.i0() : null);
        if (this.f85323Z) {
            noCodeAttribute.visible = false;
        }
        P1(true);
        R1();
    }

    public final void P1(boolean rebuildGraph) {
        if (this.f85323Z) {
            K8.a.l().k();
            NoCodeData noCodeData = this.f85322Y;
            if (noCodeData != null && noCodeData.i0() != null) {
                this.f85322Y.i0().reloadInspector();
            }
            X x10 = this.f85321X;
            if (x10 != null) {
                if (rebuildGraph) {
                    x10.m0();
                    return;
                } else {
                    x10.i0();
                    return;
                }
            }
            return;
        }
        NoCodeData noCodeData2 = this.f85322Y;
        if (noCodeData2 == null) {
            return;
        }
        noCodeData2.y0();
        if (this.f85322Y.i0() != null) {
            this.f85322Y.i0().reloadInspector();
        }
        if (this.f85322Y.i0() instanceof NoCodeFileExecutor) {
            ((NoCodeFileExecutor) this.f85322Y.i0()).storeRuntimeAttributeValues();
        }
        X x11 = this.f85321X;
        if (x11 != null) {
            if (rebuildGraph) {
                this.f85322Y.C0();
            } else {
                x11.i0();
            }
        }
    }

    public final void N1(View anchor, ga.H type, ga.H listItemType) {
        Z6.f.v1(anchor, C15147a.e.Below, "Attribute name", Lang.l(Lang.T.ATTRIBUTE), new a(type, listItemType));
    }

    public final void R1() {
        final List<NoCodeAttribute> E12 = E1();
        LinearLayout linearLayout = this.f85325b0;
        if (linearLayout == null || E12 == null) {
            return;
        }
        linearLayout.removeAllViews();
        LayoutInflater from = LayoutInflater.from(M());
        for (final NoCodeAttribute noCodeAttribute : E12) {
            if (noCodeAttribute != null) {
                View inflate = from.inflate(R.layout.nocode_attribute_item, (ViewGroup) this.f85325b0, false);
                TextView textView = (TextView) inflate.findViewById(R.id.attributeTitle);
                TextView textView2 = (TextView) inflate.findViewById(R.id.attributeSubtitle);
                CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.attributeVisibleToggle);
                View findViewById = inflate.findViewById(R.id.attributeVisibleContainer);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.attributeDeleteBtn);
                View findViewById2 = inflate.findViewById(R.id.attributeAddNodeBtn);
                View findViewById3 = inflate.findViewById(R.id.attributeSetNodeBtn);
                if (textView != null) {
                    textView.setText(noCodeAttribute.name);
                    textView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            C13030l.this.H1(noCodeAttribute, view);
                        }
                    });
                }
                if (textView2 != null) {
                    textView2.setText(C13305a.e(noCodeAttribute.type, noCodeAttribute.g()));
                    textView2.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            C13030l.this.I1(noCodeAttribute, view);
                        }
                    });
                }
                if (this.f85323Z) {
                    noCodeAttribute.visible = false;
                    if (findViewById != null) {
                        findViewById.setVisibility(8);
                    } else if (checkBox != null) {
                        checkBox.setVisibility(8);
                    }
                } else if (checkBox != null) {
                    checkBox.setChecked(noCodeAttribute.visible);
                    checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                        @Override
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                            C13030l.this.J1(noCodeAttribute, compoundButton, z10);
                        }
                    });
                }
                if (imageView != null) {
                    imageView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            C13030l.this.K1(noCodeAttribute, E12, view);
                        }
                    });
                }
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            C13030l.this.L1(noCodeAttribute, view);
                        }
                    });
                }
                if (findViewById3 != null) {
                    findViewById3.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            C13030l.this.M1(noCodeAttribute, view);
                        }
                    });
                }
                this.f85325b0.addView(inflate, new LinearLayout.LayoutParams(-1, -2));
            }
        }
    }

    public final void H1(View anchor, NoCodeAttribute attribute) {
        Z6.f.v1(anchor, C15147a.e.Below, "Attribute name", attribute != null ? attribute.name : Lang.l(Lang.T.ATTRIBUTE), new c(attribute));
    }

    public final void T1(FloatingPanelArea floatingPanelArea) {
        this.f85324a0 = floatingPanelArea;
    }

    public final void V1(final View anchor) {
        if (E1() == null) {
            return;
        }
        Y6.a.F1(anchor, C15147a.e.Below, C13305a.b(new C13305a.d() {
            @Override
            public final void a(ga.H h10, ga.H h11) {
                C13030l.this.N1(anchor, h10, h11);
            }
        }));
    }

    public final void I1(View anchor, final NoCodeAttribute attribute) {
        if (attribute == null) {
            return;
        }
        Y6.a.F1(anchor, C15147a.e.Below, C13305a.b(new C13305a.d() {
            @Override
            public final void a(ga.H h10, ga.H h11) {
                C13030l.this.O1(attribute, h10, h11);
            }
        }));
    }

    @Override
    public EditorPanel k() {
        return new C13030l(this.f85321X, this.f85322Y, this.f85323Z);
    }
}
