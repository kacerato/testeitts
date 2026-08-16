package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint;

import C5.b;
import D5.h;
import M7.c;
import M7.g;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import f5.C13189d;
import java.util.List;
import r4.C15147a;
import v9.C15814d;
import x9.C16061a;
import z9.C16278e;

public abstract class a {

    public final f4.c f70648a;

    public final String f70649b;

    public class RunnableC1080a implements Runnable {

        public final float f70650b;

        public final float f70651c;

        public final float f70652d;

        public final float f70653e;

        public final float f70654f;

        public final int f70655g;

        public final float f70656h;

        public final C16278e f70657i;

        public final O8.a f70658j;

        public final List f70659k;

        public final Runnable f70660l;

        public final float f70661m;

        public final float f70662n;

        public final Terrain f70663o;

        public class RunnableC1081a implements Runnable {

            public final List f70665b;

            public final Vector2 f70666c;

            public final Vector2 f70667d;

            public RunnableC1081a(final List val$affectedChunksByLayers, final Vector2 val$brushStart, final Vector2 val$brushEnd) {
                this.f70665b = val$affectedChunksByLayers;
                this.f70666c = val$brushStart;
                this.f70667d = val$brushEnd;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < this.f70665b.size(); i10++) {
                    ((C15814d) this.f70665b.get(i10)).k();
                }
                Terrain terrain = RunnableC1080a.this.f70663o;
                Vector2 vector2 = this.f70666c;
                float f10 = vector2.f79838x;
                float f11 = vector2.f79839y;
                Vector2 vector22 = this.f70667d;
                terrain.onProceduralPaintApplied(f10, f11, vector22.f79838x, vector22.f79839y);
                Runnable runnable = RunnableC1080a.this.f70660l;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public RunnableC1080a(final float val$worldX, final float val$terrainX, final float val$worldY, final float val$terrainZ, final float val$size, final int val$terrainResolution, final float val$terrainWidth, final C16278e val$table, final O8.a val$brush, final List val$layers, final Runnable val$afterFinish, final float val$terrainMaxHeight, final float val$finalIntensity, final Terrain val$terrain) {
            this.f70650b = val$worldX;
            this.f70651c = val$terrainX;
            this.f70652d = val$worldY;
            this.f70653e = val$terrainZ;
            this.f70654f = val$size;
            this.f70655g = val$terrainResolution;
            this.f70656h = val$terrainWidth;
            this.f70657i = val$table;
            this.f70658j = val$brush;
            this.f70659k = val$layers;
            this.f70660l = val$afterFinish;
            this.f70661m = val$terrainMaxHeight;
            this.f70662n = val$finalIntensity;
            this.f70663o = val$terrain;
        }

        @Override
        public void run() {
            Vector2 vector2 = new Vector2(this.f70650b - this.f70651c, this.f70652d - this.f70653e);
            float f10 = vector2.f79838x;
            float f11 = this.f70654f;
            Vector2 vector22 = new Vector2(f10 - (f11 * 0.5f), vector2.f79839y - (f11 * 0.5f));
            float f12 = vector2.f79838x;
            float f13 = this.f70654f;
            Vector2 vector23 = new Vector2(f12 + (f13 * 0.5f), vector2.f79839y + (f13 * 0.5f));
            float f14 = (this.f70655g - 1) / this.f70656h;
            int floor = (int) Math.floor(vector22.f79838x * f14);
            int floor2 = (int) Math.floor(vector22.f79839y * f14);
            int ceil = ((int) Math.ceil(vector23.f79838x * f14)) + 1;
            int ceil2 = ((int) Math.ceil(vector23.f79839y * f14)) + 1;
            int max = Math.max(0, Math.min(this.f70655g, floor));
            int max2 = Math.max(0, Math.min(this.f70655g, floor2));
            int max3 = Math.max(0, Math.min(this.f70655g, ceil));
            int max4 = Math.max(0, Math.min(this.f70655g, ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(vector2.f79838x * f14);
                int round2 = Math.round(vector2.f79839y * f14);
                max = Math.max(0, Math.min(this.f70655g - 1, round));
                max2 = Math.max(0, Math.min(this.f70655g - 1, round2));
                max3 = Math.min(this.f70655g, max + 1);
                max4 = Math.min(this.f70655g, max2 + 1);
            }
            int i10 = max;
            int i11 = max2;
            int i12 = max3;
            int i13 = max4;
            NativeFloatBuffer c10 = this.f70657i.c();
            O8.a aVar = this.f70658j;
            NativeFloatBuffer a10 = aVar != null ? aVar.a() : null;
            long[] h10 = a.this.h(this.f70659k);
            if (c10 == null || h10 == null) {
                Runnable runnable = this.f70660l;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            a aVar2 = a.this;
            long pointerCritical = c10.getPointerCritical();
            int i14 = this.f70655g;
            float f15 = this.f70656h;
            float f16 = this.f70661m;
            float f17 = vector22.f79838x;
            float f18 = vector22.f79839y;
            float f19 = this.f70654f;
            float f20 = this.f70662n;
            int[] i15 = a.this.i(this.f70663o);
            float[] g10 = a.this.g(this.f70663o);
            long pointerCritical2 = a10 != null ? a10.getPointerCritical() : 0L;
            O8.a aVar3 = this.f70658j;
            aVar2.applyNative(pointerCritical, h10, i14, i10, i11, i12, i13, f15, f16, f17, f18, f19, f20, i15, g10, pointerCritical2, aVar3 != null ? aVar3.f16548e : 0, aVar3 != null ? aVar3.f16549f : 0);
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            float f21 = vector2.f79838x;
            float f22 = this.f70654f;
            Vector2 vector24 = new Vector2(f21 - f22, vector2.f79839y - f22);
            float f23 = vector2.f79838x;
            float f24 = this.f70654f;
            Vector2 vector25 = new Vector2(f23 + f24, vector2.f79839y + f24);
            for (int i16 = 0; i16 < this.f70663o.chunksCount(); i16++) {
                C15814d chunkAt = this.f70663o.chunkAt(i16);
                float I10 = chunkAt.I();
                if (I10 < vector25.f79838x) {
                    float J10 = chunkAt.J();
                    if (J10 < vector25.f79839y) {
                        if (vector24.f79838x < I10 + chunkAt.B()) {
                            if (vector24.f79839y < J10 + chunkAt.B()) {
                                steppedArrayList.add(chunkAt);
                            }
                        }
                    }
                }
            }
            K8.a.I(new RunnableC1081a(steppedArrayList, vector22, vector23));
        }
    }

    public class b implements M7.d {

        public final Terrain f70669a;

        public class C1082a implements G4.d {
            public C1082a() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public b(final Terrain val$terrain) {
            this.f70669a = val$terrain;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            a.this.j(steppedArrayList, this.f70669a);
            C15147a.e(v10, steppedArrayList, a.this.f() + " Paint", C15147a.e.Below, new C1082a(), N7.c.g(260), N7.c.f(Math.max(110, (steppedArrayList.size() * 52) + 58)), true, true, true);
        }
    }

    public class c implements D5.e {

        public final String f70672a;

        public final Terrain f70673b;

        public final f f70674c;

        public class ViewOnClickListenerC1083a implements View.OnClickListener {

            public G4.c f70676b;

            public final ImageView f70677c;

            public class C1084a implements Terrain.V {

                public final List f70679a;

                public C1084a(final List val$selectorEntries) {
                    this.f70679a = val$selectorEntries;
                }

                @Override
                public void a() {
                    if (ViewOnClickListenerC1083a.this.f70676b != null) {
                        this.f70679a.clear();
                        c.this.f70673b.getCustomTerrainLayerSelector(this.f70679a, this);
                        ViewOnClickListenerC1083a.this.f70676b.v1(this.f70679a);
                    }
                    ViewOnClickListenerC1083a viewOnClickListenerC1083a = ViewOnClickListenerC1083a.this;
                    c cVar = c.this;
                    a.this.m(cVar.f70673b, viewOnClickListenerC1083a.f70677c, cVar.f70674c.get());
                }

                @Override
                public void b(int i10) {
                    c.this.f70674c.b(i10);
                    ViewOnClickListenerC1083a viewOnClickListenerC1083a = ViewOnClickListenerC1083a.this;
                    c cVar = c.this;
                    a.this.m(cVar.f70673b, viewOnClickListenerC1083a.f70677c, cVar.f70674c.get());
                    G4.c cVar2 = ViewOnClickListenerC1083a.this.f70676b;
                    if (cVar2 != null) {
                        cVar2.R0();
                        ViewOnClickListenerC1083a.this.f70676b = null;
                    }
                }

                @Override
                public int c() {
                    return c.this.f70674c.get();
                }
            }

            public class b implements G4.d {
                public b() {
                }

                @Override
                public void a(G4.c entriesClassPanel) {
                    ViewOnClickListenerC1083a.this.f70676b = null;
                }

                @Override
                public void b(G4.c entriesClassPanel) {
                }
            }

            public ViewOnClickListenerC1083a(final ImageView val$imageView) {
                this.f70677c = val$imageView;
            }

            @Override
            public void onClick(View v10) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                c.this.f70673b.getCustomTerrainLayerSelector(steppedArrayList, new C1084a(steppedArrayList));
                this.f70676b = C15147a.e(v10, steppedArrayList, "Layer", C15147a.e.Right, new b(), N7.c.g(200), N7.c.f(86), true, true, true);
            }
        }

        public c(final String val$title, final Terrain val$terrain, final f val$value) {
            this.f70672a = val$title;
            this.f70673b = val$terrain;
            this.f70674c = val$value;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            TextView textView = (TextView) view.findViewById(R.id.tittle);
            if (textView != null) {
                textView.setText(this.f70672a);
            }
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
            if (imageView == null) {
                return;
            }
            a.this.m(this.f70673b, imageView, this.f70674c.get());
            imageView.setOnClickListener(new ViewOnClickListenerC1083a(imageView));
        }
    }

    public class d implements h {

        public final float f70682a;

        public final float f70683b;

        public final e f70684c;

        public d(final float val$min, final float val$max, final e val$value) {
            this.f70682a = val$min;
            this.f70683b = val$max;
            this.f70684c = val$value;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f70684c.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                float f10 = variable.float_value;
                float f11 = this.f70682a;
                if (f10 < f11) {
                    f10 = f11;
                }
                float f12 = this.f70683b;
                if (f10 > f12) {
                    f10 = f12;
                }
                this.f70684c.a(f10);
            }
        }
    }

    public interface e {
        void a(float value);

        float get();
    }

    public interface f {
        void b(int value);

        int get();
    }

    static {
        System.loadLibrary("native-terrain-procedural-paints");
    }

    public a(String displayName) {
        if (displayName != null && !displayName.isEmpty()) {
            this.f70648a = null;
            this.f70649b = displayName;
            return;
        }
        throw new IllegalArgumentException("displayName can't be null or empty");
    }

    public abstract void applyNative(long heightTablePointer, long[] layerPointers, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, float intensity, int[] layerOptions, float[] floatOptions, long brushAlphaPointer, int brushWidth, int brushHeight);

    public void c(List<C5.b> entries, String title, float min, float max, e value) {
        entries.add(new C5.b(new d(min, max, value), title, b.a.SLFloatSlider, min, max, 0.0f));
    }

    public void d(List<C5.b> entries, Terrain terrain, String title, f value) {
        entries.add(new C5.b(new c(title, terrain, value), R.layout.inspector_component_texture, (Object) null));
    }

    public final void e(Terrain terrain, float intensity, float size, Vector2 worldLocation, O8.a brush, Runnable afterFinish) {
        if (terrain == null || worldLocation == null) {
            if (afterFinish != null) {
                afterFinish.run();
                return;
            }
            return;
        }
        if (!terrain.isDataLoaded() || size <= 0.0f || terrain.layersCount() <= 0) {
            if (afterFinish != null) {
                afterFinish.run();
                return;
            }
            return;
        }
        C16278e table = terrain.getTable();
        if (table == null) {
            if (afterFinish != null) {
                afterFinish.run();
                return;
            }
            return;
        }
        int layersCount = terrain.layersCount();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < layersCount; i10++) {
            C16061a layerDataFor = terrain.layerDataFor(terrain.layerAt(i10));
            if (layerDataFor != null) {
                steppedArrayList.add(layerDataFor);
            }
        }
        if (steppedArrayList.isEmpty()) {
            if (afterFinish != null) {
                afterFinish.run();
            }
        } else {
            O9.b.d(new RunnableC1080a(worldLocation.f79838x, terrain.getCachedGlobalPositionX(), worldLocation.f79839y, terrain.getCachedGlobalPositionZ(), size, terrain.getResolution(), terrain.width, table, brush, steppedArrayList, afterFinish, terrain.maxHeight, intensity, terrain));
        }
    }

    public String f() {
        return this.f70649b;
    }

    public float[] g(Terrain terrain) {
        return new float[0];
    }

    public final long[] h(List<C16061a> layerDataList) {
        long[] jArr = new long[layerDataList.size()];
        for (int i10 = 0; i10 < layerDataList.size(); i10++) {
            NativeFloatBuffer c10 = layerDataList.get(i10).c();
            if (c10 == null) {
                return null;
            }
            jArr[i10] = c10.getPointerCritical();
        }
        return jArr;
    }

    public int[] i(Terrain terrain) {
        return new int[0];
    }

    public void j(List<C5.b> entries, Terrain terrain) {
    }

    public f4.c k() {
        return this.f70648a;
    }

    public void l(List<g> elements, Activity activity, Panel3DView panel3DView, Terrain terrain) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        j(steppedArrayList, terrain);
        if (steppedArrayList.isEmpty()) {
            return;
        }
        elements.add(new M7.c(R.drawable.generic_settings, new b(terrain), c.b.Disconnected, activity).U(C13189d.f86106b).M(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    public final void m(Terrain terrain, ImageView imageView, int layerIndex) {
        if (layerIndex >= 0) {
            try {
                if (layerIndex < terrain.layersCount()) {
                    terrain.drawLayerIconTo(imageView, terrain.layerAt(layerIndex));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public a(f4.c type, String displayName) {
        if (type != null) {
            if (displayName != null && !displayName.isEmpty()) {
                this.f70648a = type;
                this.f70649b = displayName;
                return;
            }
            throw new IllegalArgumentException("displayName can't be null or empty");
        }
        throw new NullPointerException("type can't be null");
    }
}
