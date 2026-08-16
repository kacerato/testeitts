package com.jme3.effect;

import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class ParticleTriMesh extends ParticleMesh {
    private ParticleEmitter emitter;
    private int imagesX = 1;
    private int imagesY = 1;
    private boolean uniqueTexCoords = false;

    @Override
    public void initParticleData(ParticleEmitter particleEmitter, int i10) {
        setMode(Mesh.Mode.Triangles);
        this.emitter = particleEmitter;
        int i11 = i10 * 4;
        Buffer createVector3Buffer = BufferUtils.createVector3Buffer(i11);
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        VertexBuffer buffer = getBuffer(type);
        if (buffer != null) {
            buffer.updateData(createVector3Buffer);
        } else {
            VertexBuffer vertexBuffer = new VertexBuffer(type);
            vertexBuffer.setupData(VertexBuffer.Usage.Stream, 3, VertexBuffer.Format.Float, createVector3Buffer);
            setBuffer(vertexBuffer);
        }
        Buffer createByteBuffer = BufferUtils.createByteBuffer(i10 * 16);
        VertexBuffer.Type type2 = VertexBuffer.Type.Color;
        VertexBuffer buffer2 = getBuffer(type2);
        if (buffer2 != null) {
            buffer2.updateData(createByteBuffer);
        } else {
            VertexBuffer vertexBuffer2 = new VertexBuffer(type2);
            vertexBuffer2.setupData(VertexBuffer.Usage.Stream, 4, VertexBuffer.Format.UnsignedByte, createByteBuffer);
            vertexBuffer2.setNormalized(true);
            setBuffer(vertexBuffer2);
        }
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(i11);
        this.uniqueTexCoords = false;
        for (int i12 = 0; i12 < i10; i12++) {
            createVector2Buffer.put(0.0f).put(1.0f);
            createVector2Buffer.put(1.0f).put(1.0f);
            createVector2Buffer.put(0.0f).put(0.0f);
            createVector2Buffer.put(1.0f).put(0.0f);
        }
        createVector2Buffer.flip();
        VertexBuffer.Type type3 = VertexBuffer.Type.TexCoord;
        VertexBuffer buffer3 = getBuffer(type3);
        if (buffer3 != null) {
            buffer3.updateData(createVector2Buffer);
        } else {
            VertexBuffer vertexBuffer3 = new VertexBuffer(type3);
            vertexBuffer3.setupData(VertexBuffer.Usage.Static, 2, VertexBuffer.Format.Float, createVector2Buffer);
            setBuffer(vertexBuffer3);
        }
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(i10 * 6);
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = i13 * 4;
            short s10 = (short) (i14 + 1);
            short s11 = (short) (i14 + 2);
            createShortBuffer.put(s10).put((short) i14).put(s11);
            createShortBuffer.put(s10).put(s11).put((short) (i14 + 3));
        }
        createShortBuffer.flip();
        VertexBuffer.Type type4 = VertexBuffer.Type.Index;
        VertexBuffer buffer4 = getBuffer(type4);
        if (buffer4 != null) {
            buffer4.updateData(createShortBuffer);
        } else {
            VertexBuffer vertexBuffer4 = new VertexBuffer(type4);
            vertexBuffer4.setupData(VertexBuffer.Usage.Static, 3, VertexBuffer.Format.UnsignedShort, createShortBuffer);
            setBuffer(vertexBuffer4);
        }
        updateCounts();
    }

    @Override
    public void setImagesXY(int i10, int i11) {
        this.imagesX = i10;
        this.imagesY = i11;
        if (i10 == 1 && i11 == 1) {
            return;
        }
        this.uniqueTexCoords = true;
        getBuffer(VertexBuffer.Type.TexCoord).setUsage(VertexBuffer.Usage.Stream);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0252  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateParticleData(Particle[] particleArr, Camera camera, Matrix3f matrix3f) {
        boolean z10;
        Vector3f vector3f;
        Vector3f vector3f2;
        Particle[] particleArr2 = particleArr;
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        VertexBuffer buffer2 = getBuffer(VertexBuffer.Type.Color);
        ByteBuffer byteBuffer = (ByteBuffer) buffer2.getData();
        VertexBuffer buffer3 = getBuffer(VertexBuffer.Type.TexCoord);
        FloatBuffer floatBuffer2 = (FloatBuffer) buffer3.getData();
        Vector3f up = camera.getUp();
        Vector3f left = camera.getLeft();
        Vector3f direction = camera.getDirection();
        matrix3f.multLocal(up);
        matrix3f.multLocal(left);
        matrix3f.multLocal(direction);
        boolean isFacingVelocity = this.emitter.isFacingVelocity();
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        if (!isFacingVelocity) {
            vector3f3.set(up);
            vector3f4.set(left);
        }
        floatBuffer.clear();
        byteBuffer.clear();
        floatBuffer2.clear();
        Vector3f faceNormal = this.emitter.getFaceNormal();
        int i10 = 0;
        while (i10 < particleArr2.length) {
            Particle particle = particleArr2[i10];
            VertexBuffer vertexBuffer = buffer;
            if (particle.life == 0.0f) {
                floatBuffer.put(0.0f).put(0.0f).put(0.0f);
                floatBuffer.put(0.0f).put(0.0f).put(0.0f);
                floatBuffer.put(0.0f).put(0.0f).put(0.0f);
                floatBuffer.put(0.0f).put(0.0f).put(0.0f);
                z10 = isFacingVelocity;
                vector3f2 = up;
                vector3f = direction;
            } else {
                if (isFacingVelocity) {
                    vector3f4.set(particle.velocity).normalizeLocal();
                    direction.cross(vector3f4, vector3f3);
                    vector3f3.multLocal(particle.size);
                    vector3f4.multLocal(particle.size);
                } else {
                    if (faceNormal != null) {
                        vector3f3.set(faceNormal).crossLocal(Vector3f.UNIT_X);
                        faceNormal.cross(vector3f3, vector3f4);
                        vector3f3.multLocal(particle.size);
                        vector3f4.multLocal(particle.size);
                        if (particle.angle != 0.0f) {
                            TempVars tempVars = TempVars.get();
                            tempVars.vect1.set(faceNormal).normalizeLocal();
                            z10 = isFacingVelocity;
                            vector3f = direction;
                            tempVars.quat1.fromAngleNormalAxis(particle.angle, tempVars.vect1);
                            tempVars.quat1.multLocal(vector3f4);
                            tempVars.quat1.multLocal(vector3f3);
                            tempVars.release();
                        }
                    } else {
                        z10 = isFacingVelocity;
                        vector3f = direction;
                        float f10 = particle.angle;
                        if (f10 != 0.0f) {
                            float cos = FastMath.cos(f10) * particle.size;
                            float sin = FastMath.sin(particle.angle) * particle.size;
                            vector3f4.f81611x = (left.f81611x * cos) + (up.f81611x * sin);
                            vector3f4.f81612y = (left.f81612y * cos) + (up.f81612y * sin);
                            vector3f4.f81613z = (left.f81613z * cos) + (up.f81613z * sin);
                            float f11 = -sin;
                            vector3f3.f81611x = (left.f81611x * f11) + (up.f81611x * cos);
                            vector3f3.f81612y = (left.f81612y * f11) + (up.f81612y * cos);
                            vector3f3.f81613z = (left.f81613z * f11) + (up.f81613z * cos);
                        } else {
                            vector3f3.set(up);
                            vector3f4.set(left);
                            vector3f3.multLocal(particle.size);
                            vector3f4.multLocal(particle.size);
                        }
                    }
                    floatBuffer.put(particle.position.f81611x + vector3f4.f81611x + vector3f3.f81611x).put(particle.position.f81612y + vector3f4.f81612y + vector3f3.f81612y).put(particle.position.f81613z + vector3f4.f81613z + vector3f3.f81613z);
                    floatBuffer.put((particle.position.f81611x - vector3f4.f81611x) + vector3f3.f81611x).put((particle.position.f81612y - vector3f4.f81612y) + vector3f3.f81612y).put((particle.position.f81613z - vector3f4.f81613z) + vector3f3.f81613z);
                    floatBuffer.put((particle.position.f81611x + vector3f4.f81611x) - vector3f3.f81611x).put((particle.position.f81612y + vector3f4.f81612y) - vector3f3.f81612y).put((particle.position.f81613z + vector3f4.f81613z) - vector3f3.f81613z);
                    floatBuffer.put((particle.position.f81611x - vector3f4.f81611x) - vector3f3.f81611x).put((particle.position.f81612y - vector3f4.f81612y) - vector3f3.f81612y).put((particle.position.f81613z - vector3f4.f81613z) - vector3f3.f81613z);
                    if (this.uniqueTexCoords) {
                        vector3f2 = up;
                    } else {
                        int i11 = particle.imageIndex;
                        int i12 = this.imagesX;
                        float f12 = (i11 % i12) / i12;
                        int i13 = this.imagesY;
                        vector3f2 = up;
                        float f13 = (i11 / i12) / i13;
                        float f14 = (1.0f / i12) + f12;
                        float f15 = (1.0f / i13) + f13;
                        floatBuffer2.put(f12).put(f15);
                        floatBuffer2.put(f14).put(f15);
                        floatBuffer2.put(f12).put(f13);
                        floatBuffer2.put(f14).put(f13);
                    }
                    int asIntABGR = particle.color.asIntABGR();
                    byteBuffer.putInt(asIntABGR);
                    byteBuffer.putInt(asIntABGR);
                    byteBuffer.putInt(asIntABGR);
                    byteBuffer.putInt(asIntABGR);
                }
                z10 = isFacingVelocity;
                vector3f = direction;
                floatBuffer.put(particle.position.f81611x + vector3f4.f81611x + vector3f3.f81611x).put(particle.position.f81612y + vector3f4.f81612y + vector3f3.f81612y).put(particle.position.f81613z + vector3f4.f81613z + vector3f3.f81613z);
                floatBuffer.put((particle.position.f81611x - vector3f4.f81611x) + vector3f3.f81611x).put((particle.position.f81612y - vector3f4.f81612y) + vector3f3.f81612y).put((particle.position.f81613z - vector3f4.f81613z) + vector3f3.f81613z);
                floatBuffer.put((particle.position.f81611x + vector3f4.f81611x) - vector3f3.f81611x).put((particle.position.f81612y + vector3f4.f81612y) - vector3f3.f81612y).put((particle.position.f81613z + vector3f4.f81613z) - vector3f3.f81613z);
                floatBuffer.put((particle.position.f81611x - vector3f4.f81611x) - vector3f3.f81611x).put((particle.position.f81612y - vector3f4.f81612y) - vector3f3.f81612y).put((particle.position.f81613z - vector3f4.f81613z) - vector3f3.f81613z);
                if (this.uniqueTexCoords) {
                }
                int asIntABGR2 = particle.color.asIntABGR();
                byteBuffer.putInt(asIntABGR2);
                byteBuffer.putInt(asIntABGR2);
                byteBuffer.putInt(asIntABGR2);
                byteBuffer.putInt(asIntABGR2);
            }
            i10++;
            particleArr2 = particleArr;
            isFacingVelocity = z10;
            buffer = vertexBuffer;
            direction = vector3f;
            up = vector3f2;
        }
        VertexBuffer vertexBuffer2 = buffer;
        floatBuffer.clear();
        byteBuffer.clear();
        floatBuffer2.clear();
        if (this.uniqueTexCoords) {
            buffer3.updateData(floatBuffer2);
        }
        vertexBuffer2.updateData(floatBuffer);
        buffer2.updateData(byteBuffer);
    }
}
