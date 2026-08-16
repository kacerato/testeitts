package jme3utilities.debug;

import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13722r;

public class g extends Mesh {

    public static final int f94084b = 3;

    public static final Logger f94085c = Logger.getLogger(g.class.getName());

    public static final boolean f94086d = false;

    public g() {
    }

    @Override
    public g mo1295clone() {
        return (g) super.mo1295clone();
    }

    public final void b(int i10) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10 * 4);
        VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.Color);
        vertexBuffer.setupData(VertexBuffer.Usage.Stream, 4, VertexBuffer.Format.Float, createFloatBuffer);
        setBuffer(vertexBuffer);
    }

    public final IndexBuffer c(int i10, int i11) {
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(i10, i11 * 2);
        setBuffer(VertexBuffer.Type.Index, 1, createIndexBuffer.getFormat(), createIndexBuffer.getBuffer());
        return createIndexBuffer;
    }

    public final void d(int i10) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10 * 3);
        VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.Position);
        vertexBuffer.setupData(VertexBuffer.Usage.Stream, 3, VertexBuffer.Format.Float, createFloatBuffer);
        setBuffer(vertexBuffer);
    }

    public void e(h hVar) {
        FloatBuffer floatBuffer = getFloatBuffer(VertexBuffer.Type.Color);
        floatBuffer.clear();
        int i10 = hVar.i();
        ColorRGBA colorRGBA = new ColorRGBA();
        for (int i11 = 0; i11 < i10; i11++) {
            hVar.g(i11, colorRGBA);
            floatBuffer.put(colorRGBA.f81598r).put(colorRGBA.f81597g).put(colorRGBA.f81596b).put(colorRGBA.f81595a);
        }
        floatBuffer.flip();
        getBuffer(VertexBuffer.Type.Color).updateData(floatBuffer);
    }

    public void f(Armature armature, Skeleton skeleton) {
        FloatBuffer floatBuffer = getFloatBuffer(VertexBuffer.Type.Position);
        floatBuffer.clear();
        int jointCount = armature != null ? armature.getJointCount() : skeleton != null ? skeleton.getBoneCount() : 0;
        for (int i10 = 0; i10 < jointCount; i10++) {
            Vector3f modelSpacePosition = armature == null ? skeleton.getBone(i10).getModelSpacePosition() : armature.getJoint(i10).getModelTransform().getTranslation();
            floatBuffer.put(modelSpacePosition.f81611x).put(modelSpacePosition.f81612y).put(modelSpacePosition.f81613z);
        }
        floatBuffer.flip();
        getBuffer(VertexBuffer.Type.Position).updateData(floatBuffer);
        updateBound();
    }

    public g(Armature armature, Skeleton skeleton, Mesh.Mode mode) {
        int i10;
        int i11;
        if (armature != null) {
            i10 = armature.getJointCount();
            i11 = C13722r.j(armature);
        } else if (skeleton != null) {
            i10 = skeleton.getBoneCount();
            i11 = C13722r.i(skeleton);
        } else {
            i10 = 0;
            i11 = 0;
        }
        int i12 = i10 - i11;
        b(i10);
        d(i10);
        if (mode == Mesh.Mode.Lines) {
            IndexBuffer c10 = c(i10, i12);
            for (int i13 = 0; i13 < i10; i13++) {
                if (armature == null) {
                    Bone parent = skeleton.getBone(i13).getParent();
                    if (parent != null) {
                        c10.put(skeleton.getBoneIndex(parent));
                        c10.put(i13);
                    }
                } else {
                    Joint parent2 = armature.getJoint(i13).getParent();
                    if (parent2 != null) {
                        c10.put(parent2.getId());
                        c10.put(i13);
                    }
                }
            }
            c10.getBuffer().flip();
        }
        setMode(mode);
    }
}
