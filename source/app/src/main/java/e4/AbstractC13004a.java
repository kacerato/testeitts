package e4;

import M7.g;
import android.app.Activity;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import v9.C15814d;
import z9.C16278e;

public abstract class AbstractC13004a {

    public final EnumC13007d f85024a;

    public final String f85025b;

    public class RunnableC1581a implements Runnable {

        public final float f85026b;

        public final float f85027c;

        public final float f85028d;

        public final float f85029e;

        public final float f85030f;

        public final Terrain f85031g;

        public final int f85032h;

        public final float f85033i;

        public final C16278e f85034j;

        public final Runnable f85035k;

        public final float f85036l;

        public final float f85037m;

        public final int f85038n;

        public final float f85039o;

        public final float f85040p;

        public final long f85041q;

        public class RunnableC1582a implements Runnable {

            public final List f85043b;

            public final Vector2 f85044c;

            public final Vector2 f85045d;

            public RunnableC1582a(final List val$affectedChunksByHeight, final Vector2 val$brushStart, final Vector2 val$brushEnd) {
                this.f85043b = val$affectedChunksByHeight;
                this.f85044c = val$brushStart;
                this.f85045d = val$brushEnd;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < this.f85043b.size(); i10++) {
                    ((C15814d) this.f85043b.get(i10)).i(RunnableC1581a.this.f85031g);
                }
                Terrain terrain = RunnableC1581a.this.f85031g;
                Vector2 vector2 = this.f85044c;
                float f10 = vector2.f79838x;
                float f11 = vector2.f79839y;
                Vector2 vector22 = this.f85045d;
                terrain.onProceduralBrushApplied(f10, f11, vector22.f79838x, vector22.f79839y);
                Runnable runnable = RunnableC1581a.this.f85035k;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public RunnableC1581a(final float val$worldX, final float val$terrainX, final float val$worldY, final float val$terrainZ, final float val$size, final Terrain val$terrain, final int val$terrainResolution, final float val$terrainWidth, final C16278e val$table, final Runnable val$afterFinish, final float val$terrainMaxHeight, final float val$finalIntensity, final int val$proceduralOption, final float val$directionX, final float val$directionY, final long val$strokeSeed) {
            this.f85026b = val$worldX;
            this.f85027c = val$terrainX;
            this.f85028d = val$worldY;
            this.f85029e = val$terrainZ;
            this.f85030f = val$size;
            this.f85031g = val$terrain;
            this.f85032h = val$terrainResolution;
            this.f85033i = val$terrainWidth;
            this.f85034j = val$table;
            this.f85035k = val$afterFinish;
            this.f85036l = val$terrainMaxHeight;
            this.f85037m = val$finalIntensity;
            this.f85038n = val$proceduralOption;
            this.f85039o = val$directionX;
            this.f85040p = val$directionY;
            this.f85041q = val$strokeSeed;
        }

        @Override
        public void run() {
            Vector2 vector2 = new Vector2(this.f85026b - this.f85027c, this.f85028d - this.f85029e);
            float f10 = vector2.f79838x;
            float f11 = this.f85030f;
            Vector2 vector22 = new Vector2(f10 - (f11 * 0.5f), vector2.f79839y - (f11 * 0.5f));
            float f12 = vector2.f79838x;
            float f13 = this.f85030f;
            Vector2 vector23 = new Vector2(f12 + (f13 * 0.5f), vector2.f79839y + (f13 * 0.5f));
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < this.f85031g.chunksCount(); i10++) {
                C15814d chunkAt = this.f85031g.chunkAt(i10);
                float I10 = chunkAt.I();
                if (I10 < vector23.f79838x) {
                    float J10 = chunkAt.J();
                    if (J10 < vector23.f79839y) {
                        if (vector22.f79838x < I10 + chunkAt.B()) {
                            if (vector22.f79839y < J10 + chunkAt.B()) {
                                steppedArrayList.add(chunkAt);
                            }
                        }
                    }
                }
            }
            float f14 = (this.f85032h - 1) / this.f85033i;
            int floor = (int) Math.floor(vector22.f79838x * f14);
            int floor2 = (int) Math.floor(vector22.f79839y * f14);
            int ceil = ((int) Math.ceil(vector23.f79838x * f14)) + 1;
            int ceil2 = ((int) Math.ceil(vector23.f79839y * f14)) + 1;
            int max = Math.max(0, Math.min(this.f85032h, floor));
            int max2 = Math.max(0, Math.min(this.f85032h, floor2));
            int max3 = Math.max(0, Math.min(this.f85032h, ceil));
            int max4 = Math.max(0, Math.min(this.f85032h, ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(vector2.f79838x * f14);
                int round2 = Math.round(vector2.f79839y * f14);
                max = Math.max(0, Math.min(this.f85032h - 1, round));
                max2 = Math.max(0, Math.min(this.f85032h - 1, round2));
                max3 = Math.min(this.f85032h, max + 1);
                max4 = Math.min(this.f85032h, max2 + 1);
            } else {
                if (max3 == max) {
                    max3 = Math.min(this.f85032h, max + 1);
                }
                if (max4 == max2) {
                    max4 = Math.min(this.f85032h, max2 + 1);
                }
            }
            int i11 = max;
            int i12 = max2;
            int i13 = max3;
            int i14 = max4;
            NativeFloatBuffer c10 = this.f85034j.c();
            if (c10 != null) {
                AbstractC13004a.this.applyNative(c10.getPointerCritical(), this.f85032h, i11, i12, i13, i14, this.f85033i, this.f85036l, this.f85027c, this.f85029e, vector22.f79838x, vector22.f79839y, this.f85030f, this.f85037m, this.f85038n, this.f85039o, this.f85040p, this.f85041q);
                K8.a.I(new RunnableC1582a(steppedArrayList, vector22, vector23));
            } else {
                Runnable runnable = this.f85035k;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }
    }

    static {
        System.loadLibrary("native-terrain-procedural-brushes");
    }

    public AbstractC13004a(EnumC13007d type, String displayName) {
        if (type == null) {
            throw new NullPointerException("type can't be null");
        }
        if (displayName == null || displayName.isEmpty()) {
            throw new IllegalArgumentException("displayName can't be null or empty");
        }
        this.f85024a = type;
        this.f85025b = displayName;
    }

    public final void a(Terrain terrain, float intensity, float size, Vector2 worldLocation, Runnable afterFinish) {
        if (terrain == null || worldLocation == null) {
            if (afterFinish != null) {
                afterFinish.run();
                return;
            }
            return;
        }
        if (!terrain.isDataLoaded() || size <= 0.0f) {
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
        float cachedGlobalPositionX = terrain.getCachedGlobalPositionX();
        float cachedGlobalPositionZ = terrain.getCachedGlobalPositionZ();
        int resolution = terrain.getResolution();
        float f10 = terrain.width;
        float f11 = terrain.maxHeight;
        float f12 = worldLocation.f79838x;
        float f13 = worldLocation.f79839y;
        long proceduralBrushStrokeSeed = terrain.getProceduralBrushStrokeSeed();
        Vector2 vector2 = new Vector2();
        terrain.getProceduralBrushDirection(vector2);
        O9.b.d(new RunnableC1581a(f12, cachedGlobalPositionX, f13, cachedGlobalPositionZ, size, terrain, resolution, f10, table, afterFinish, f11, intensity, terrain.f77037P.f85048a, vector2.f79838x, vector2.f79839y, proceduralBrushStrokeSeed));
    }

    public abstract void applyNative(long tablePointer, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float terrainOriginX, float terrainOriginZ, float brushStartX, float brushStartY, float brushSize, float intensity, int proceduralOption, float directionX, float directionY, long seed);

    public String b() {
        return this.f85025b;
    }

    public EnumC13007d c() {
        return this.f85024a;
    }

    public void d(List<g> elements, Activity activity, Panel3DView panel3DView, Terrain terrain) {
    }
}
