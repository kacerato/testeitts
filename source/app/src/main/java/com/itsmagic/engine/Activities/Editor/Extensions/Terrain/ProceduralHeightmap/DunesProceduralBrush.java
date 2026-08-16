package com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap;

import M7.c;
import M7.d;
import M7.g;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine2.R;
import e4.AbstractC13004a;
import e4.EnumC13007d;
import f5.C13189d;
import java.util.List;
import r4.C15147a;
import t5.k;

public class DunesProceduralBrush extends AbstractC13004a {

    public class a implements d {

        public final Terrain f70509a;

        public class C1077a extends k.f {
            public C1077a() {
            }

            @Override
            public void b(int value) {
                a.this.f70509a.f77037P.f85048a = Math.max(1, Math.min(8, value));
            }

            @Override
            public int get() {
                return a.this.f70509a.f77037P.f85048a;
            }
        }

        public a(final Terrain val$terrain) {
            this.f70509a = val$terrain;
        }

        @Override
        public void onClick(View v10, Context context, c tbButton) {
            k.a(v10, "Dunes", context, C15147a.e.Below, new C1077a());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DunesProceduralBrush() {
        super(r0, r0.b());
        EnumC13007d enumC13007d = EnumC13007d.Dunes;
    }

    @Override
    public native void applyNative(long tablePointer, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float terrainOriginX, float terrainOriginZ, float brushStartX, float brushStartY, float brushSize, float intensity, int proceduralOption, float directionX, float directionY, long seed);

    @Override
    public void d(List<g> elements, Activity activity, Panel3DView panel3DView, Terrain terrain) {
        super.d(elements, activity, panel3DView, terrain);
        elements.add(new c(R.drawable.brush_obj_count, new a(terrain), c.b.Disconnected, activity).U(C13189d.f86106b).M(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }
}
