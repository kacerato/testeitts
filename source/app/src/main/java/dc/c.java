package Dc;

import com.itsmagic.engine.Engines.Physics.DTOs.NativeIndexedMesh;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.bullet.collision.shapes.infos.BoundingValueHierarchy;
import com.jme3.bullet.collision.shapes.infos.CompoundMesh;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p000if.C13702E;

public class c extends MeshCollisionShape implements Cloneable {

    public static final int f5087b = 1024;

    public static final int f5088c = 2097151;

    public static final Constructor<BoundingValueHierarchy> f5089d = e(BoundingValueHierarchy.class);

    public static final Method f5090e;

    public static final Method f5091f;

    public static final Method f5092g;

    public static final Method f5093h;

    public static final Field f5094i;

    public static final Field f5095j;

    public static final Field f5096k;

    public static final boolean f5097l = false;

    static {
        Class<Boolean> cls = Boolean.TYPE;
        Class<Long> cls2 = Long.TYPE;
        f5090e = h(MeshCollisionShape.class, "createShape", cls, cls, cls2);
        f5091f = h(MeshCollisionShape.class, "setOptimizedBvh", cls2, cls2, Vector3f.class);
        f5092g = h(NativePhysicsObject.class, "setNativeIdNotTracked", cls2);
        f5093h = h(NativePhysicsObject.class, "unassignNativeObject", new Class[0]);
        f5094i = g(MeshCollisionShape.class, "bvh");
        f5095j = g(MeshCollisionShape.class, "nativeMesh");
        f5096k = g(MeshCollisionShape.class, "useCompression");
    }

    public c() {
        this.useCompression = true;
    }

    private static a a(NativeIndexedMesh... submeshes) {
        C13702E.n(submeshes, "submeshes");
        a aVar = new a();
        for (NativeIndexedMesh nativeIndexedMesh : submeshes) {
            aVar.a(nativeIndexedMesh);
        }
        return aVar;
    }

    public static NativeIndexedMesh[] b(a mesh) {
        C13702E.t(mesh, "mesh");
        int countSubmeshes = mesh.countSubmeshes();
        C13702E.H(countSubmeshes > 0, "mesh must contain at least one submesh");
        NativeIndexedMesh[] nativeIndexedMeshArr = new NativeIndexedMesh[countSubmeshes];
        for (int i10 = 0; i10 < countSubmeshes; i10++) {
            nativeIndexedMeshArr[i10] = mesh.getSubmesh(i10);
        }
        return nativeIndexedMeshArr;
    }

    public static Constructor<BoundingValueHierarchy> e(Class<BoundingValueHierarchy> type) {
        try {
            Constructor<BoundingValueHierarchy> declaredConstructor = type.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Field g(Class<?> type, String name) {
        try {
            Field declaredField = type.getDeclaredField(name);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Method h(Class<?> type, String name, Class<?>... parameterTypes) {
        try {
            Method declaredMethod = type.getDeclaredMethod(name, parameterTypes);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static long j(boolean useCompression, boolean buildBvh, long meshId) {
        try {
            return ((Long) f5090e.invoke(null, Boolean.valueOf(useCompression), Boolean.valueOf(buildBvh), Long.valueOf(meshId))).longValue();
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void k(long shapeId, long bvhId, Vector3f scaleVector) {
        try {
            f5091f.invoke(null, Long.valueOf(shapeId), Long.valueOf(bvhId), scaleVector);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static BoundingValueHierarchy m(long bvhId) {
        try {
            BoundingValueHierarchy newInstance = f5089d.newInstance(null);
            f5092g.invoke(newInstance, Long.valueOf(bvhId));
            return newInstance;
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void o(Field field, Object target, Object value) {
        try {
            field.set(target, value);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        }
    }

    public c clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object original) {
        super.cloneFields(cloner, original);
        this.nativeMesh = (CompoundMesh) cloner.clone((a) this.nativeMesh);
    }

    public void d() {
        if (hasAssignedNativeObject()) {
            unassignNativeObject();
        }
    }

    public final void i(long bvhId, boolean useCompression, a mesh) {
        long j10;
        boolean z10 = false;
        try {
            o(f5095j, this, mesh);
            o(f5096k, this, Boolean.valueOf(useCompression));
            j10 = j(useCompression, false, mesh.nativeId());
        } catch (Error | RuntimeException e10) {
            e = e10;
            j10 = 0;
        }
        try {
            setNativeId(j10);
            z10 = true;
            setContactFilterEnabled(this.enableContactFilter);
            setScale(this.scale);
            setMargin(this.margin);
            o(f5094i, this, m(bvhId));
            k(j10, bvhId, this.scale);
        } catch (Error e11) {
            e = e11;
            if (z10 && j10 != 0) {
                unassignNativeObject();
            }
            throw e;
        } catch (RuntimeException e12) {
            e = e12;
            if (z10) {
                unassignNativeObject();
            }
            throw e;
        }
    }

    public c(a mesh) {
        this(true, mesh);
    }

    public c(boolean useCompression, a mesh) {
        C13702E.t(mesh, "mesh");
        C13702E.H(mesh.countTriangles() > 0, "at least one triangle");
        this.nativeMesh = mesh;
        this.useCompression = useCompression;
        createShape();
    }

    public c(NativeIndexedMesh... submeshes) {
        this(true, submeshes);
    }

    public c(boolean useCompression, NativeIndexedMesh... submeshes) {
        this(useCompression, a(submeshes));
    }

    public c(long bvhId, boolean useCompression, a mesh) {
        C13702E.x(bvhId, "bvhId");
        C13702E.t(mesh, "mesh");
        C13702E.H(mesh.countTriangles() > 0, "at least one triangle");
        i(bvhId, useCompression, mesh);
    }

    public c(long bvhId, boolean useCompression, NativeIndexedMesh... submeshes) {
        this(bvhId, useCompression, a(submeshes));
    }
}
