package N9;

import D5.e;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine2.R;
import o4.c;
import r4.C15147a;
import t5.j;

public class a {

    public class C0440a implements e {

        public final String f15846a;

        public final b f15847b;

        public class C0441a extends AbstractViewOnClickListenerC12733a {

            public final Gradient f15848b;

            public final ImageView f15849c;

            public class C0442a implements c {
                public C0442a() {
                }

                @Override
                public void a() {
                    Gradient gradient;
                    C0441a c0441a = C0441a.this;
                    ImageView imageView = c0441a.f15849c;
                    if (imageView == null || (gradient = c0441a.f15848b) == null) {
                        return;
                    }
                    imageView.setImageBitmap(gradient.h(50, 10));
                }
            }

            public class b implements C15147a.f {

                public final int f15852a;

                public final int f15853b;

                public b(final int val$totalW, final int val$totalH) {
                    this.f15852a = val$totalW;
                    this.f15853b = val$totalH;
                }

                @Override
                public void a(FloatingPanelArea floatingPanelArea) {
                    floatingPanelArea.I1(this.f15852a, this.f15853b, FloatingPanelArea.i.Fixed);
                }
            }

            public C0441a(final Gradient val$gradient, final ImageView val$curveView) {
                this.f15848b = val$gradient;
                this.f15849c = val$curveView;
            }

            @Override
            public void click(View view) {
                float g10 = N7.c.g(354);
                float f10 = N7.c.f(110);
                j jVar = new j(this.f15848b, C0440a.this.f15847b);
                jVar.d1(new C0442a());
                C15147a.i(view, jVar, C15147a.e.Left, g10, f10, new b(354, 110));
            }
        }

        public C0440a(final String val$tittle, final b val$listener) {
            this.f15846a = val$tittle;
            this.f15847b = val$listener;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            Gradient gradient = (Gradient) entry.f2073h;
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            imageView.setImageBitmap(gradient.h(50, 2));
            TextView textView = (TextView) view.findViewById(R.id.tittle);
            textView.setText(this.f15846a);
            if (this.f15846a == null) {
                textView.setVisibility(8);
            }
            imageView.setOnClickListener(new C0441a(gradient, imageView));
        }
    }

    public interface b {
        void a();
    }

    public static C5.b a(String tittle, Gradient gradient, Context context) {
        return b(tittle, gradient, context, null);
    }

    public static C5.b b(String tittle, Gradient gradient, Context context, b listener) {
        return new C5.b(new C0440a(tittle, listener), R.layout.inspector_component_slgradient, gradient);
    }
}
