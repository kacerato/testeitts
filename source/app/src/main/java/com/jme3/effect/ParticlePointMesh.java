package com.jme3.effect;

import com.jme3.math.Matrix3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class ParticlePointMesh extends ParticleMesh {
    private ParticleEmitter emitter;
    private int imagesX = 1;
    private int imagesY = 1;

    @Override
    public void initParticleData(ParticleEmitter particleEmitter, int i10) {
        setMode(Mesh.Mode.Points);
        this.emitter = particleEmitter;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(i10);
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        VertexBuffer buffer = getBuffer(type);
        if (buffer != null) {
            buffer.updateData(createVector3Buffer);
        } else {
            VertexBuffer vertexBuffer = new VertexBuffer(type);
            vertexBuffer.setupData(VertexBuffer.Usage.Stream, 3, VertexBuffer.Format.Float, createVector3Buffer);
            setBuffer(vertexBuffer);
        }
        int i11 = i10 * 4;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i11);
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
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10);
        VertexBuffer.Type type3 = VertexBuffer.Type.Size;
        VertexBuffer buffer3 = getBuffer(type3);
        if (buffer3 != null) {
            buffer3.updateData(createFloatBuffer);
        } else {
            VertexBuffer vertexBuffer3 = new VertexBuffer(type3);
            vertexBuffer3.setupData(VertexBuffer.Usage.Stream, 1, VertexBuffer.Format.Float, createFloatBuffer);
            setBuffer(vertexBuffer3);
        }
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(i11);
        VertexBuffer.Type type4 = VertexBuffer.Type.TexCoord;
        VertexBuffer buffer4 = getBuffer(type4);
        if (buffer4 != null) {
            buffer4.updateData(createFloatBuffer2);
        } else {
            VertexBuffer vertexBuffer4 = new VertexBuffer(type4);
            vertexBuffer4.setupData(VertexBuffer.Usage.Stream, 4, VertexBuffer.Format.Float, createFloatBuffer2);
            setBuffer(vertexBuffer4);
        }
        updateCounts();
    }

    @Override
    public void setImagesXY(int i10, int i11) {
        this.imagesX = i10;
        this.imagesY = i11;
    }

    @Override
    public void updateParticleData(Particle[] particleArr, Camera camera, Matrix3f matrix3f) {
        ParticlePointMesh particlePointMesh = this;
        VertexBuffer buffer = particlePointMesh.getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        VertexBuffer buffer2 = particlePointMesh.getBuffer(VertexBuffer.Type.Color);
        ByteBuffer byteBuffer = (ByteBuffer) buffer2.getData();
        VertexBuffer buffer3 = particlePointMesh.getBuffer(VertexBuffer.Type.Size);
        FloatBuffer floatBuffer2 = (FloatBuffer) buffer3.getData();
        VertexBuffer buffer4 = particlePointMesh.getBuffer(VertexBuffer.Type.TexCoord);
        FloatBuffer floatBuffer3 = (FloatBuffer) buffer4.getData();
        float f10 = particlePointMesh.emitter.getWorldScale().f81611x;
        floatBuffer.rewind();
        byteBuffer.rewind();
        floatBuffer2.rewind();
        floatBuffer3.rewind();
        int i10 = 0;
        while (i10 < particleArr.length) {
            Particle particle = particleArr[i10];
            floatBuffer.put(particle.position.f81611x).put(particle.position.f81612y).put(particle.position.f81613z);
            floatBuffer2.put(particle.size * f10);
            byteBuffer.putInt(particle.color.asIntABGR());
            int i11 = particle.imageIndex;
            int i12 = particlePointMesh.imagesX;
            float f11 = (i11 % i12) / i12;
            int i13 = particlePointMesh.imagesY;
            float f12 = (i11 / i12) / i13;
            floatBuffer3.put(f11).put(f12).put((1.0f / i12) + f11).put((1.0f / i13) + f12);
            i10++;
            particlePointMesh = this;
        }
        floatBuffer.flip();
        byteBuffer.flip();
        floatBuffer2.flip();
        floatBuffer3.flip();
        buffer.updateData(floatBuffer);
        buffer2.updateData(byteBuffer);
        buffer3.updateData(floatBuffer2);
        buffer4.updateData(floatBuffer3);
    }
}
