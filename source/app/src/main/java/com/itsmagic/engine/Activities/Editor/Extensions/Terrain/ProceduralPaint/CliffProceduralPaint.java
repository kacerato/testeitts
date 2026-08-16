package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import C5.b;
import D5.e;
import D5.h;
import M7.c;
import M7.d;
import M7.g;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import f5.C13189d;
import java.util.List;
import r4.C15147a;

public class CliffProceduralPaint extends com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a {

    public Terrain f70530c;

    public G4.c f70531d;

    public G4.c f70532e;

    public class a implements d {

        public class C1078a implements G4.d {
            public C1078a() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                CliffProceduralPaint.this.f70531d = null;
                if (CliffProceduralPaint.this.f70532e != null) {
                    CliffProceduralPaint.this.f70532e.R0();
                    CliffProceduralPaint.this.f70532e = null;
                }
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public a() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            CliffProceduralPaint.this.u(steppedArrayList);
            CliffProceduralPaint.this.f70531d = C15147a.e(v10, steppedArrayList, "Cliff Paint", C15147a.e.Below, new C1078a(), N7.c.g(260), N7.c.f(160), true, true, true);
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", CliffProceduralPaint.this.f70530c.f77039Q.f86041b + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                CliffProceduralPaint.this.f70530c.f77039Q.f86041b = Math.max(0.0f, Math.min(90.0f, variable.float_value));
            }
        }
    }

    public class c implements e {

        public class a implements View.OnClickListener {

            public final ImageView f70537b;

            public class C1079a implements Terrain.V {

                public final List f70539a;

                public C1079a(final List val$entries) {
                    this.f70539a = val$entries;
                }

                @Override
                public void a() {
                    if (CliffProceduralPaint.this.f70532e != null) {
                        this.f70539a.clear();
                        CliffProceduralPaint.this.f70530c.getCustomTerrainLayerSelector(this.f70539a, this);
                        CliffProceduralPaint.this.f70532e.v1(this.f70539a);
                    }
                    a aVar = a.this;
                    CliffProceduralPaint.this.v(aVar.f70537b);
                }

                @Override
                public void b(int i10) {
                    CliffProceduralPaint.this.f70530c.f77039Q.f86039a = i10;
                    a aVar = a.this;
                    CliffProceduralPaint.this.v(aVar.f70537b);
                    if (CliffProceduralPaint.this.f70532e != null) {
                        CliffProceduralPaint.this.f70532e.R0();
                        CliffProceduralPaint.this.f70532e = null;
                    }
                }

                @Override
                public int c() {
                    return CliffProceduralPaint.this.f70530c.f77039Q.f86039a;
                }
            }

            public class b implements G4.d {
                public b() {
                }

                @Override
                public void a(G4.c entriesClassPanel) {
                    CliffProceduralPaint.this.f70532e = null;
                }

                @Override
                public void b(G4.c entriesClassPanel) {
                }
            }

            public a(final ImageView val$imageView) {
                this.f70537b = val$imageView;
            }

            @Override
            public void onClick(View v10) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                CliffProceduralPaint.this.f70530c.getCustomTerrainLayerSelector(steppedArrayList, new C1079a(steppedArrayList));
                CliffProceduralPaint.this.f70532e = C15147a.e(v10, steppedArrayList, "Layer", C15147a.e.Right, new b(), N7.c.g(200), N7.c.f(86), true, true, true);
            }
        }

        public c() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            TextView textView = (TextView) view.findViewById(R.id.tittle);
            if (textView != null) {
                textView.setText(SerializableShaderEntry.f81152f);
            }
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
            if (imageView == null) {
                return;
            }
            CliffProceduralPaint.this.v(imageView);
            imageView.setOnClickListener(new a(imageView));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CliffProceduralPaint() {
        super(r0, r0.b());
        f4.c cVar = f4.c.Cliff;
    }

    @Override
    public native void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    @Override
    public float[] g(Terrain terrain) {
        return new float[]{terrain.f77039Q.f86041b};
    }

    @Override
    public int[] i(Terrain terrain) {
        return new int[]{terrain.f77039Q.f86039a};
    }

    @Override
    public void l(List<g> elements, Activity activity, Panel3DView panel3DView, Terrain terrain) {
        super.l(elements, activity, panel3DView, terrain);
        this.f70530c = terrain;
        elements.add(new M7.c(R.drawable.generic_settings, new a(), c.b.Disconnected, activity).U(C13189d.f86106b).M(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    public final C5.b t() {
        return new C5.b(new c(), R.layout.inspector_component_texture, (Object) null);
    }

    public final void u(List<C5.b> entries) {
        entries.add(t());
        entries.add(new C5.b(new b(), "Cliff angle", b.a.SLFloatSlider, 0.0f, 90.0f, 0.0f));
    }

    public final void v(ImageView imageView) {
        try {
            Terrain terrain = this.f70530c;
            int i10 = terrain.f77039Q.f86039a;
            if (i10 < 0 || i10 >= terrain.layersCount()) {
                return;
            }
            Terrain terrain2 = this.f70530c;
            terrain2.drawLayerIconTo(imageView, terrain2.layerAt(i10));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
