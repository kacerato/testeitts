package com.jme3.terrain.geomipmap.lodcalc.util;

import com.jme3.bounding.BoundingBox;
import com.jme3.collision.CollisionResults;
import com.jme3.math.Matrix4f;
import com.jme3.math.Ray;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public class EntropyComputeUtil {
    private EntropyComputeUtil() {
    }

    public static float computeLodEntropy(Mesh mesh, Buffer buffer) {
        BoundingBox boundingBox = (BoundingBox) mesh.getBound();
        FloatBuffer floatBuffer = mesh.getFloatBuffer(VertexBuffer.Type.Position);
        Vector3f vector3f = new Vector3f();
        Ray ray = new Ray(vector3f, new Vector3f(0.0f, -1.0f, 0.0f));
        CollisionResults collisionResults = new CollisionResults();
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        VertexBuffer buffer2 = mesh.getBuffer(type);
        mesh.clearBuffer(type);
        if (buffer instanceof IntBuffer) {
            mesh.setBuffer(type, 3, (IntBuffer) buffer);
        } else if (buffer instanceof ShortBuffer) {
            mesh.setBuffer(type, 3, (ShortBuffer) buffer);
        } else {
            mesh.setBuffer(type, 3, (ByteBuffer) buffer);
        }
        mesh.createCollisionData();
        float f10 = 0.0f;
        for (int i10 = 0; i10 < floatBuffer.limit() / 3; i10++) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i10);
            float f11 = vector3f.f81612y;
            vector3f.addLocal(0.0f, boundingBox.getYExtent(), 0.0f);
            ray.setOrigin(vector3f);
            collisionResults.clear();
            mesh.collideWith(ray, Matrix4f.IDENTITY, boundingBox, collisionResults);
            if (collisionResults.size() > 0) {
                f10 = Math.max(Math.abs(f11 - collisionResults.getClosestCollision().getContactPoint().f81612y), f10);
            }
        }
        mesh.clearBuffer(VertexBuffer.Type.Index);
        mesh.setBuffer(buffer2);
        return f10;
    }
}
