package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils;

import JAVARuntime.Gizmo;
import JAVARuntime.GizmoPath;
import aa.C3593a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import m.C14165a;
import z9.C16278e;

public class TerrainRaycaster {

    public static final ThreadLocal<float[]> f77294a;

    public class a extends ThreadLocal<float[]> {
        @Override
        public float[] initialValue() {
            return new float[7];
        }
    }

    static {
        System.loadLibrary("native-terrain-raycaster");
        f77294a = new a();
    }

    public static void a(Vector3 origin, Vector3 direction, C3593a hit, boolean ignoreGizmo, float distance) {
        if (ignoreGizmo) {
            return;
        }
        ColorINT colorINT = new ColorINT(255, 0, 0);
        GizmoPath gizmoPath = new GizmoPath();
        gizmoPath.setColor(colorINT.e0());
        if (hit == null || hit.i() == null) {
            Vector3 m1249clone = direction.m1249clone();
            m1249clone.normalizeLocal();
            Vector3 vector3 = new Vector3();
            vector3.set(origin);
            if (distance <= 0.0f) {
                distance = 999999.0f;
            }
            vector3.addLocal(m1249clone, distance);
            gizmoPath.addLine(origin.toJAVARuntime(), vector3.toJAVARuntime());
        } else {
            gizmoPath.addLine(origin.toJAVARuntime(), hit.i().toJAVARuntime());
        }
        gizmoPath.apply();
        Gizmo.drawEngine(gizmoPath);
    }

    public static C3593a b(Vector3 origin, Vector3 direction, Terrain terrain, boolean ignoreGizmo, float distance) {
        C3593a e10 = e(origin, direction, terrain, distance);
        a(origin, direction, e10, ignoreGizmo, distance);
        return e10;
    }

    public static boolean c(Vector3 origin, Vector3 direction, Terrain terrain, Vector3 outPoint) {
        C3593a e10 = e(origin, direction, terrain, 0.0f);
        if (e10 == null || e10.i() == null) {
            return false;
        }
        outPoint.set(e10.i());
        return true;
    }

    public static C3593a d(Vector3 origin, Vector3 direction, Terrain terrain, float distance) {
        C16278e table;
        NativeFloatBuffer c10;
        NativeFloatBuffer nativeFloatBuffer;
        if (terrain == null || !terrain.hasTable() || (table = terrain.getTable()) == null) {
            return null;
        }
        C16278e leveledTable = C14165a.a() ? terrain.getLeveledTable() : null;
        int resolution = terrain.getResolution();
        if (resolution <= 1) {
            return null;
        }
        float width = terrain.getWidth();
        float maxHeight = terrain.getMaxHeight();
        if (width <= 0.0f || maxHeight <= 0.0f || (c10 = table.c()) == null || !c10.isNative()) {
            return null;
        }
        if (leveledTable == null || ((nativeFloatBuffer = leveledTable.c()) != null && !nativeFloatBuffer.isNative())) {
            nativeFloatBuffer = null;
        }
        float[] fArr = f77294a.get();
        if (!nativeTraceRayHeightmap(c10.getPointerCritical(), nativeFloatBuffer != null ? nativeFloatBuffer.getPointerCritical() : 0L, resolution, width, maxHeight, terrain.getCachedGlobalPositionX(), terrain.getCachedGlobalPositionY(), terrain.getCachedGlobalPositionZ(), origin.getX(), origin.getY(), origin.getZ(), direction.getX(), direction.getY(), direction.getZ(), distance, fArr)) {
            return null;
        }
        C3593a c3593a = new C3593a();
        c3593a.v(new Vector3(fArr[0], fArr[1], fArr[2]));
        c3593a.s(new Vector3(fArr[3], fArr[4], fArr[5]));
        c3593a.u(direction.m1249clone());
        c3593a.setDistance(fArr[6]);
        c3593a.z(fArr[6]);
        c3593a.setGameObject(terrain.f79250n);
        c3593a.r(terrain.f79250n);
        return c3593a;
    }

    public static C3593a e(Vector3 origin, Vector3 direction, Terrain terrain, float distance) {
        if (origin == null || direction == null || terrain == null) {
            return null;
        }
        return d(origin, direction, terrain, distance);
    }

    private static native boolean nativeTraceRayHeightmap(long tableBufferPointer, long levelTableBufferPointer, int resolution, float width, float maxHeight, float terrainX, float terrainY, float terrainZ, float originX, float originY, float originZ, float dirX, float dirY, float dirZ, float distance, float[] outData);
}
