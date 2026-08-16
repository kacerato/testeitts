package p000if;

import com.jme3.anim.SkinningControl;
import com.jme3.animation.SkeletonControl;
import com.jme3.app.StatsView;
import com.jme3.asset.AssetManager;
import com.jme3.audio.AudioNode;
import com.jme3.effect.ParticleEmitter;
import com.jme3.font.BitmapText;
import com.jme3.light.Light;
import com.jme3.material.MatParam;
import com.jme3.material.MatParamOverride;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.AssetLinkNode;
import com.jme3.scene.BatchNode;
import com.jme3.scene.CameraNode;
import com.jme3.scene.Geometry;
import com.jme3.scene.GeometryGroupNode;
import com.jme3.scene.LightNode;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.SimpleBatchNode;
import com.jme3.scene.Spatial;
import com.jme3.scene.UserData;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.control.AbstractControl;
import com.jme3.scene.control.Control;
import com.jme3.scene.debug.SkeletonDebugger;
import com.jme3.scene.instancing.InstancedGeometry;
import com.jme3.scene.instancing.InstancedNode;
import com.jme3.shader.VarType;
import com.jme3.texture.Texture;
import com.jme3.ui.Picture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import jf.f;
import jf.g;
import jf.h;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C13723s {

    public static final Logger f92155a = Logger.getLogger(C13723s.class.getName());

    public static final boolean f92156b = false;

    public static class a {

        public static final int[] f92157a;

        static {
            int[] iArr = new int[VarType.values().length];
            f92157a = iArr;
            try {
                iArr[VarType.Texture2D.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92157a[VarType.Texture3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92157a[VarType.TextureArray.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92157a[VarType.TextureCubeMap.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r6 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T extends Control> List<T> A(Spatial spatial, Class<T> cls, List<T> list) {
        List list2;
        if (list == null) {
            list2 = new ArrayList(4);
        }
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            Control control = spatial.getControl(i10);
            if (cls.isAssignableFrom(control.getClass()) && !list2.contains(control)) {
                list2.add(control);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                A(it.next(), cls, list2);
            }
        }
        return (List<T>) list2;
    }

    public static List<Geometry> B(Spatial spatial) {
        C13702E.t(spatial, "subtree");
        return G(spatial, Geometry.class, null);
    }

    public static List<Geometry> C(Spatial spatial, Material material, List<Geometry> list) {
        if (list == null) {
            list = new ArrayList<>(50);
        }
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (geometry.getMaterial() == material) {
                list.add(geometry);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                C(it.next(), material, list);
            }
        }
        return list;
    }

    public static List<Material> D(Spatial spatial, List<Material> list) {
        if (list == null) {
            list = new ArrayList<>(10);
        }
        if (spatial instanceof Geometry) {
            Material material = ((Geometry) spatial).getMaterial();
            if (!list.contains(material)) {
                list.add(material);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                D(it.next(), list);
            }
        }
        return list;
    }

    public static List<Geometry> E(Spatial spatial, Mesh mesh, List<Geometry> list) {
        if (list == null) {
            list = new ArrayList<>(50);
        }
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (geometry.getMesh() == mesh) {
                list.add(geometry);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                E(it.next(), mesh, list);
            }
        }
        return list;
    }

    public static List<Spatial> F(Spatial spatial) {
        C13702E.t(spatial, "subtree");
        return G(spatial, Spatial.class, null);
    }

    public static <T extends Spatial> List<T> G(Spatial spatial, Class<T> cls, List<T> list) {
        C13702E.t(spatial, "subtree");
        if (list == null) {
            list = new ArrayList<>(50);
        }
        if (cls.isAssignableFrom(spatial.getClass()) && !list.contains(spatial)) {
            list.add(spatial);
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                G(it.next(), cls, list);
            }
        }
        return list;
    }

    public static List<Texture> H(Spatial spatial, List<Texture> list) {
        if (list == null) {
            list = new ArrayList<>(32);
        }
        Iterator<Material> it = D(spatial, null).iterator();
        while (it.hasNext()) {
            Iterator<MatParam> it2 = it.next().getParams().iterator();
            while (it2.hasNext()) {
                a(list, it2.next());
            }
        }
        Iterator<Spatial> it3 = F(spatial).iterator();
        while (it3.hasNext()) {
            Iterator<MatParamOverride> it4 = it3.next().getLocalMatParamOverrides().iterator();
            while (it4.hasNext()) {
                a(list, it4.next());
            }
        }
        return list;
    }

    public static List<Geometry> I(Node node, List<Geometry> list) {
        C13702E.t(node, "subtree");
        if (list == null) {
            list = new ArrayList<>(50);
        }
        for (Spatial spatial : node.getChildren()) {
            Boolean bool = (Boolean) spatial.getUserData(UserData.JME_PHYSICSIGNORE);
            if (bool == null || !bool.booleanValue()) {
                if (spatial instanceof Node) {
                    I((Node) spatial, list);
                } else {
                    list.add((Geometry) spatial);
                }
            }
        }
        return list;
    }

    public static void J(Spatial spatial) {
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            geometry.updateModelBound();
            geometry.getMesh().clearCollisionData();
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                J(it.next());
            }
        }
    }

    public static Transform K(Spatial spatial, Spatial spatial2) {
        C13702E.t(spatial, "modelRoot");
        C13702E.t(spatial, "spatial");
        Transform transform = new Transform();
        while (spatial != spatial2) {
            f.i(transform, spatial.getLocalTransform(), transform);
            spatial = spatial.getParent();
        }
        Transform transform2 = new Transform();
        transform2.setScale(spatial2.getLocalScale());
        f.i(transform, transform2, transform);
        return transform;
    }

    public static void L(Spatial spatial) {
        while (spatial.getNumControls() > 0) {
            spatial.removeControl(spatial.getControl(0));
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                L(it.next());
            }
        }
    }

    public static void M(Spatial spatial, Vector3f vector3f) {
        C13702E.d(vector3f, "world location");
        if (w(spatial)) {
            throw new IllegalArgumentException("transform ignored");
        }
        Node parent = spatial.getParent();
        if (parent == null) {
            spatial.setLocalTranslation(vector3f);
        } else {
            spatial.setLocalTranslation(parent.worldToLocal(vector3f, (Vector3f) null));
        }
    }

    public static void N(Spatial spatial, Quaternion quaternion) {
        C13702E.t(quaternion, "world orientation");
        if (w(spatial)) {
            throw new IllegalArgumentException("transform ignored");
        }
        Node parent = spatial.getParent();
        if (parent == null) {
            spatial.setLocalRotation(quaternion);
            return;
        }
        Quaternion v10 = v(parent);
        v10.multLocal(quaternion);
        spatial.setLocalRotation(v10);
    }

    public static void O(Spatial spatial, float f10) {
        C13702E.E(f10, "world scale");
        if (w(spatial)) {
            throw new IllegalArgumentException("transform ignored");
        }
        Node parent = spatial.getParent();
        if (parent == null) {
            spatial.setLocalScale(f10);
            return;
        }
        Vector3f worldScale = parent.getWorldScale();
        if (worldScale.f81611x == 0.0f || worldScale.f81612y == 0.0f || worldScale.f81613z == 0.0f) {
            throw new IllegalArgumentException("parent scale = " + ((Object) worldScale));
        }
        Vector3f vector3f = new Vector3f(f10, f10, f10);
        vector3f.divideLocal(worldScale);
        spatial.setLocalScale(vector3f);
    }

    public static void P(Spatial spatial, Transform transform) {
        C13702E.t(transform, "world transform");
        if (w(spatial)) {
            throw new IllegalArgumentException("transform ignored");
        }
        Node parent = spatial.getParent();
        if (parent == null) {
            spatial.setLocalTransform(transform);
            return;
        }
        Transform m1289clone = transform.m1289clone();
        Vector3f translation = m1289clone.getTranslation();
        Quaternion rotation = m1289clone.getRotation();
        Vector3f scale = m1289clone.getScale();
        Transform worldTransform = parent.getWorldTransform();
        Vector3f translation2 = worldTransform.getTranslation();
        Quaternion rotation2 = worldTransform.getRotation();
        Vector3f scale2 = worldTransform.getScale();
        if (scale2.f81611x == 0.0f || scale2.f81612y == 0.0f || scale2.f81613z == 0.0f) {
            throw new IllegalArgumentException("zero in scale");
        }
        Quaternion inverse = rotation2.inverse();
        if (inverse == null) {
            throw new IllegalArgumentException("rotation not invertible");
        }
        scale.divideLocal(scale2);
        inverse.mult(rotation, rotation);
        translation.subtractLocal(translation2);
        g.s(rotation2, translation, translation);
        translation.divideLocal(scale2);
        spatial.setLocalTransform(m1289clone);
    }

    public static boolean Q(Spatial spatial, Collection<Spatial> collection) {
        boolean z10 = false;
        if (spatial == null || collection.isEmpty()) {
            return false;
        }
        if (collection.contains(spatial)) {
            return true;
        }
        if (!(spatial instanceof Node)) {
            return false;
        }
        Node node = (Node) spatial;
        Iterator<Spatial> it = collection.iterator();
        while (it.hasNext()) {
            z10 = it.next().hasAncestor(node);
            if (z10) {
                return z10;
            }
        }
        return z10;
    }

    public static float R(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        if (w(spatial)) {
            return 1.0f;
        }
        Vector3f worldScale = spatial.getWorldScale();
        if (h.D(worldScale)) {
            return worldScale.f81612y;
        }
        throw new IllegalArgumentException("non-uniform scaling");
    }

    public static void S(Spatial spatial, ColorRGBA[] colorRGBAArr, AssetManager assetManager) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                S(it.next(), colorRGBAArr, assetManager);
            }
        } else if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            Mesh mesh = geometry.getMesh();
            if (C13720p.v(mesh)) {
                geometry.setMaterial(C13720p.e(mesh, colorRGBAArr, assetManager));
            }
        }
    }

    public static Vector3f T(Spatial spatial, Vector3f vector3f) {
        C13702E.t(spatial, "spatial");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (w(spatial)) {
            vector3f.zero();
        } else {
            vector3f.set(spatial.getWorldTranslation());
        }
        return vector3f;
    }

    public static Quaternion U(Spatial spatial, Quaternion quaternion) {
        C13702E.t(spatial, "spatial");
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        if (w(spatial)) {
            quaternion.loadIdentity();
        } else {
            quaternion.set(spatial.getWorldRotation());
        }
        return quaternion;
    }

    public static Vector3f V(Spatial spatial, Vector3f vector3f) {
        C13702E.t(spatial, "spatial");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (w(spatial)) {
            vector3f.set(1.0f, 1.0f, 1.0f);
        } else {
            vector3f.set(spatial.getWorldScale());
        }
        return vector3f;
    }

    public static Transform W(Spatial spatial, Transform transform) {
        C13702E.t(spatial, "spatial");
        if (transform == null) {
            transform = new Transform();
        }
        if (w(spatial)) {
            transform.loadIdentity();
        } else {
            transform.set(spatial.getWorldTransform());
        }
        return transform;
    }

    public static void a(Collection<Texture> collection, MatParam matParam) {
        Texture texture;
        int i10 = a.f92157a[matParam.getVarType().ordinal()];
        if ((i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) || (texture = (Texture) matParam.getValue()) == null || b(collection, texture)) {
            return;
        }
        collection.add(texture);
    }

    public static boolean b(Iterable<Texture> iterable, Texture texture) {
        Iterator<Texture> it = iterable.iterator();
        while (it.hasNext()) {
            if (it.next() == texture) {
                return true;
            }
        }
        return false;
    }

    public static <T extends Control> int c(Spatial spatial, Class<T> cls) {
        int i10 = 0;
        if (spatial != null) {
            int numControls = spatial.getNumControls();
            int i11 = 0;
            while (i10 < numControls) {
                if (cls.isAssignableFrom(spatial.getControl(i10).getClass())) {
                    i11++;
                }
                i10++;
            }
            i10 = i11;
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                i10 += c(it.next(), cls);
            }
        }
        return i10;
    }

    public static int d(Spatial spatial) {
        if (spatial instanceof Geometry) {
            return C13720p.g(((Geometry) spatial).getMesh());
        }
        int i10 = 0;
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                int d10 = d(it.next());
                if (d10 > i10) {
                    i10 = d10;
                }
            }
        }
        return i10;
    }

    public static <T extends Spatial> int e(Spatial spatial, Class<T> cls) {
        int i10 = (spatial == null || !cls.isAssignableFrom(spatial.getClass())) ? 0 : 1;
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                i10 += e(it.next(), cls);
            }
        }
        return i10;
    }

    public static int f(Spatial spatial) {
        int size = spatial != null ? spatial.getUserDataKeys().size() : 0;
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                size += f(it.next());
            }
        }
        return size;
    }

    public static int g(Spatial spatial, Material material) {
        int i10 = 0;
        if (spatial instanceof Geometry) {
            return ((Geometry) spatial).getMaterial() == material ? 1 : 0;
        }
        if (!(spatial instanceof Node)) {
            return 0;
        }
        Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
        while (it.hasNext()) {
            i10 += g(it.next(), material);
        }
        return i10;
    }

    public static int h(Spatial spatial) {
        Iterator<Mesh> it = C13720p.w(spatial, null).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().getVertexCount();
        }
        return i10;
    }

    public static char i(Spatial spatial) {
        if (spatial instanceof AssetLinkNode) {
            return IIndexConstants.ANNOTATION_TYPE_SUFFIX;
        }
        if (spatial instanceof AudioNode) {
            return 'a';
        }
        if (spatial instanceof BatchNode) {
            return 'b';
        }
        if (spatial instanceof BitmapText) {
            return 't';
        }
        if (spatial instanceof CameraNode) {
            return 'c';
        }
        if (spatial instanceof GeometryGroupNode) {
            return 'G';
        }
        if (spatial instanceof InstancedGeometry) {
            return 'i';
        }
        if (spatial instanceof InstancedNode) {
            return 'N';
        }
        if (spatial instanceof LightNode) {
            return 'L';
        }
        if (spatial instanceof ParticleEmitter) {
            return 'e';
        }
        if (spatial instanceof Picture) {
            return 'p';
        }
        if (spatial instanceof SimpleBatchNode) {
            return 'B';
        }
        if (spatial instanceof SkeletonDebugger) {
            return 's';
        }
        if (spatial instanceof StatsView) {
            return 'S';
        }
        if (spatial.getClass().getSimpleName().equals("TerrainQuad")) {
            return 'q';
        }
        if (spatial instanceof Geometry) {
            return 'g';
        }
        return spatial instanceof Node ? 'n' : '?';
    }

    public static Geometry j(Spatial spatial) {
        Geometry geometry = null;
        if (spatial instanceof Geometry) {
            Geometry geometry2 = (Geometry) spatial;
            if (C13720p.v(geometry2.getMesh())) {
                return geometry2;
            }
            return null;
        }
        if (!(spatial instanceof Node)) {
            return null;
        }
        Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
        while (it.hasNext()) {
            geometry = j(it.next());
            if (geometry != null) {
                return geometry;
            }
        }
        return geometry;
    }

    public static <T extends Spatial> T k(Node node, Class<T> cls) {
        Iterator<Spatial> it = node.getChildren().iterator();
        while (it.hasNext()) {
            T t10 = (T) it.next();
            if (cls.isAssignableFrom(t10.getClass())) {
                return t10;
            }
        }
        return null;
    }

    public static Spatial l(Node node, String str) {
        C13702E.t(str, "child name");
        for (Spatial spatial : node.getChildren()) {
            if (str.equals(spatial.getName())) {
                return spatial;
            }
        }
        return null;
    }

    public static Spatial m(Control control, Spatial spatial) {
        C13702E.t(control, "control");
        C13702E.t(spatial, "subtree");
        Spatial spatial2 = control instanceof AbstractControl ? ((AbstractControl) control).getSpatial() : null;
        if (spatial2 == null) {
            if (C13718n.d(control, spatial) != -1) {
                return spatial;
            }
            if (spatial instanceof Node) {
                Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
                while (it.hasNext() && (spatial2 = m(control, it.next())) == null) {
                }
            }
        }
        return spatial2;
    }

    @Deprecated
    public static int n(Spatial spatial, Control control) {
        C13702E.t(spatial, "spatial");
        C13702E.t(control, "control");
        int numControls = spatial.getNumControls();
        for (int i10 = 0; i10 < numControls; i10++) {
            if (spatial.getControl(i10) == control) {
                return i10;
            }
        }
        return -1;
    }

    public static <T extends Light> T o(Spatial spatial, Class<T> cls) {
        C13702E.t(cls, "light class");
        Iterator<Light> it = spatial.getLocalLightList().iterator();
        while (it.hasNext()) {
            T t10 = (T) it.next();
            if (cls.isAssignableFrom(t10.getClass())) {
                return t10;
            }
        }
        return null;
    }

    public static Light p(Spatial spatial, String str) {
        C13702E.t(str, "light name");
        Iterator<Light> it = spatial.getLocalLightList().iterator();
        while (it.hasNext()) {
            Light next = it.next();
            if (str.equals(next.getName())) {
                return next;
            }
        }
        return null;
    }

    public static Vector3f[] q(Geometry geometry, boolean z10) {
        Vector3f vector3f = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        Vector3f vector3f2 = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f[] vector3fArr = {vector3f2, vector3f};
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        Mesh mesh = geometry.getMesh();
        int vertexCount = mesh.getVertexCount();
        for (int i10 = 0; i10 < vertexCount; i10++) {
            C13720p.Z(mesh, VertexBuffer.Type.Position, i10, vector3f3);
            if (!z10 || geometry.isIgnoreTransform()) {
                vector3f4.set(vector3f3);
            } else {
                geometry.localToWorld(vector3f3, vector3f4);
            }
            h.b(vector3f2, vector3f4);
            h.a(vector3f, vector3f4);
        }
        return vector3fArr;
    }

    public static Vector3f[] r(Spatial spatial) {
        if (spatial instanceof Geometry) {
            return q((Geometry) spatial, true);
        }
        if (!(spatial instanceof Node)) {
            throw new IllegalArgumentException("spatial should be a geometry or a node");
        }
        Vector3f vector3f = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        Vector3f vector3f2 = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f[] vector3fArr = {vector3f2, vector3f};
        Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
        while (it.hasNext()) {
            Vector3f[] r10 = r(it.next());
            h.b(vector3f2, r10[0]);
            h.a(vector3f, r10[1]);
        }
        return vector3fArr;
    }

    public static Spatial s(Spatial spatial, String str) {
        if (str.equals(spatial.getName())) {
            return spatial;
        }
        Spatial spatial2 = null;
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext() && (spatial2 = s(it.next(), str)) == null) {
            }
        }
        return spatial2;
    }

    public static MatParamOverride t(Spatial spatial, String str) {
        C13702E.t(spatial, "spatial");
        C13702E.j(str, "parameterName");
        for (MatParamOverride matParamOverride : spatial.getLocalMatParamOverrides()) {
            if (str.equals(matParamOverride.getName())) {
                return matParamOverride;
            }
        }
        return null;
    }

    public static boolean u(Spatial spatial, Light light) {
        C13702E.t(light, "light");
        Iterator<Light> it = spatial.getLocalLightList().iterator();
        while (it.hasNext()) {
            if (it.next() == light) {
                return true;
            }
        }
        return false;
    }

    public static Quaternion v(Spatial spatial) {
        Quaternion inverse = spatial.getWorldRotation().inverse();
        if (inverse != null) {
            return inverse;
        }
        throw new IllegalArgumentException("orientation not invertible");
    }

    public static boolean w(Spatial spatial) {
        return (spatial instanceof Geometry) && ((Geometry) spatial).isIgnoreTransform();
    }

    public static boolean x(Spatial spatial) {
        return spatial.getParent() == null;
    }

    public static List<Mesh> y(Spatial spatial, List<Mesh> list) {
        if (list == null) {
            list = new ArrayList<>(10);
        }
        if (spatial instanceof Geometry) {
            Mesh mesh = ((Geometry) spatial).getMesh();
            if (C13720p.v(mesh) && !list.contains(mesh)) {
                list.add(mesh);
            }
        } else if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                y(it.next(), list);
            }
        }
        return list;
    }

    public static List<Spatial> z(Spatial spatial, List<Spatial> list) {
        if (list == null) {
            list = new ArrayList<>(4);
        }
        if (spatial != null) {
            int numControls = spatial.getNumControls();
            for (int i10 = 0; i10 < numControls; i10++) {
                Control control = spatial.getControl(i10);
                if ((control instanceof SkinningControl) || (control instanceof SkeletonControl)) {
                    list.add(spatial);
                    break;
                }
            }
            if (spatial instanceof Node) {
                Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
                while (it.hasNext()) {
                    list = z(it.next(), list);
                }
            }
        }
        return list;
    }
}
