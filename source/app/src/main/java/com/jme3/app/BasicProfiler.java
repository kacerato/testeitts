package com.jme3.app;

import com.jme3.profile.AppProfiler;
import com.jme3.profile.AppStep;
import com.jme3.profile.SpStep;
import com.jme3.profile.VpStep;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import eg.C13143u0;
import java.nio.FloatBuffer;

public class BasicProfiler implements AppProfiler {
    private int frameIndex;
    private long[] frames;
    private long lastUpdate;
    private Mesh mesh;
    private long renderTime;
    private int size;
    private long startTime;
    private long updateInterval;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$profile$AppStep;

        static {
            int[] iArr = new int[AppStep.values().length];
            $SwitchMap$com$jme3$profile$AppStep = iArr;
            try {
                iArr[AppStep.BeginFrame.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$profile$AppStep[AppStep.RenderFrame.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$profile$AppStep[AppStep.EndFrame.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BasicProfiler() {
        this(1280);
    }

    @Override
    public void appStep(AppStep appStep) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$profile$AppStep[appStep.ordinal()];
        if (i10 == 1) {
            this.startTime = System.nanoTime();
            return;
        }
        if (i10 == 2) {
            long nanoTime = System.nanoTime();
            this.renderTime = nanoTime;
            this.frames[this.frameIndex * 2] = nanoTime - this.startTime;
        } else {
            if (i10 != 3) {
                return;
            }
            long nanoTime2 = System.nanoTime();
            long[] jArr = this.frames;
            int i11 = this.frameIndex;
            jArr[(i11 * 2) + 1] = nanoTime2 - this.renderTime;
            int i12 = i11 + 1;
            this.frameIndex = i12;
            if (i12 >= this.size) {
                this.frameIndex = 0;
            }
            if (this.startTime - this.lastUpdate > this.updateInterval) {
                updateMesh();
                this.lastUpdate = this.startTime;
            }
        }
    }

    @Override
    public void appSubStep(String... strArr) {
    }

    public final void createMesh() {
        if (this.mesh == null) {
            Mesh mesh = new Mesh();
            this.mesh = mesh;
            mesh.setMode(Mesh.Mode.Lines);
        }
        this.mesh.setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(this.size * 12));
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(this.size * 16);
        for (int i10 = 0; i10 < this.size; i10++) {
            createFloatBuffer.put(0.5f).put(0.5f).put(0.0f).put(1.0f);
            createFloatBuffer.put(1.0f).put(1.0f).put(0.0f).put(1.0f);
            createFloatBuffer.put(0.0f).put(0.5f).put(0.5f).put(1.0f);
            createFloatBuffer.put(0.0f).put(1.0f).put(1.0f).put(1.0f);
        }
        this.mesh.setBuffer(VertexBuffer.Type.Color, 4, createFloatBuffer);
    }

    public int getFrameCount() {
        return this.size;
    }

    public Mesh getMesh() {
        return this.mesh;
    }

    public long getUpdateInterval() {
        return this.updateInterval;
    }

    public final void setFrameCount(int i10) {
        if (this.size == i10) {
            return;
        }
        this.size = i10;
        this.frames = new long[i10 * 2];
        createMesh();
        if (this.frameIndex >= i10) {
            this.frameIndex = 0;
        }
    }

    public void setUpdateInterval(long j10) {
        this.updateInterval = j10;
    }

    @Override
    public void spStep(SpStep spStep, String... strArr) {
    }

    public void updateMesh() {
        FloatBuffer floatBuffer = (FloatBuffer) this.mesh.getBuffer(VertexBuffer.Type.Position).getData();
        floatBuffer.rewind();
        for (int i10 = 0; i10 < this.size; i10++) {
            long[] jArr = this.frames;
            int i11 = i10 * 2;
            float f10 = ((float) jArr[i11]) * 1.0E-6f;
            float f11 = ((float) jArr[i11 + 1]) * 1.0E-6f;
            float f12 = i10;
            floatBuffer.put(f12).put(0.0f).put(0.0f);
            floatBuffer.put(f12).put(f10).put(0.0f);
            floatBuffer.put(f12).put(f10).put(0.0f);
            floatBuffer.put(f12).put(f11).put(0.0f);
        }
        this.mesh.setBuffer(VertexBuffer.Type.Position, 3, floatBuffer);
    }

    @Override
    public void vpStep(VpStep vpStep, ViewPort viewPort, RenderQueue.Bucket bucket) {
    }

    public BasicProfiler(int i10) {
        this.frameIndex = 0;
        this.updateInterval = C13143u0.f85788e;
        this.lastUpdate = 0L;
        setFrameCount(i10);
    }
}
