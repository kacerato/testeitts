package p000if;

import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.math.ColorRGBA;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.BitSet;
import java.util.Iterator;
import java.util.logging.Logger;
import jf.d;
import jme3utilities.debug.h;

public final class C13711g {

    public static final int f92113a = 4;

    public static final Logger f92114b = Logger.getLogger(C13711g.class.getName());

    public static final boolean f92115c = false;

    public static BitSet a(Spatial spatial, Armature armature) {
        int jointCount = armature.getJointCount();
        BitSet bitSet = new BitSet(jointCount);
        d(spatial, bitSet);
        for (int i10 = 0; i10 < jointCount; i10++) {
            if (bitSet.get(i10)) {
                for (Joint parent = armature.getJoint(i10).getParent(); parent != null; parent = parent.getParent()) {
                    bitSet.set(armature.getJointIndex(parent));
                }
            }
        }
        return bitSet;
    }

    public static BitSet b(Spatial spatial, Skeleton skeleton) {
        int boneCount = skeleton.getBoneCount();
        BitSet bitSet = new BitSet(boneCount);
        d(spatial, bitSet);
        for (int i10 = 0; i10 < boneCount; i10++) {
            if (bitSet.get(i10)) {
                for (Bone parent = skeleton.getBone(i10).getParent(); parent != null; parent = parent.getParent()) {
                    bitSet.set(skeleton.getBoneIndex(parent));
                }
            }
        }
        return bitSet;
    }

    public static void c(Mesh mesh, BitSet bitSet) {
        int maxNumWeights = mesh.getMaxNumWeights();
        if (maxNumWeights <= 0) {
            maxNumWeights = 1;
        }
        Buffer dataReadOnly = mesh.getBuffer(VertexBuffer.Type.BoneIndex).getDataReadOnly();
        dataReadOnly.rewind();
        dataReadOnly.remaining();
        int remaining = dataReadOnly.remaining() / 4;
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.BoneWeight);
        floatBuffer.rewind();
        floatBuffer.remaining();
        for (int i10 = 0; i10 < remaining; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                float f10 = floatBuffer.get();
                int r10 = d.r(dataReadOnly);
                if (i11 < maxNumWeights && f10 != 0.0f) {
                    bitSet.set(r10);
                }
            }
        }
    }

    public static void d(Spatial spatial, BitSet bitSet) {
        if (spatial instanceof Geometry) {
            Mesh mesh = ((Geometry) spatial).getMesh();
            if (C13720p.v(mesh)) {
                c(mesh, bitSet);
                return;
            }
            return;
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                d(it.next(), bitSet);
            }
        }
    }

    public static void e(h hVar, SkinningControl skinningControl) {
        Spatial spatial = skinningControl.getSpatial();
        Armature armature = skinningControl.getArmature();
        BitSet a10 = a(spatial, armature);
        int jointCount = armature.getJointCount();
        for (int i10 = 0; i10 < jointCount; i10++) {
            if (!a10.get(i10)) {
                hVar.m(i10, ColorRGBA.BlackNoAlpha);
            }
        }
    }

    public static void f(h hVar, SkeletonControl skeletonControl) {
        Spatial spatial = skeletonControl.getSpatial();
        Skeleton skeleton = skeletonControl.getSkeleton();
        BitSet b10 = b(spatial, skeleton);
        int boneCount = skeleton.getBoneCount();
        for (int i10 = 0; i10 < boneCount; i10++) {
            if (!b10.get(i10)) {
                hVar.m(i10, ColorRGBA.BlackNoAlpha);
            }
        }
    }
}
