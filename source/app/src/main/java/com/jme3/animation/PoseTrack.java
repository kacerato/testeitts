package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.TempVars;
import java.io.IOException;

@Deprecated
public final class PoseTrack implements Track {
    private PoseFrame[] frames;
    private int targetMeshIndex;
    private float[] times;

    public static class PoseFrame implements Savable, Cloneable {
        Pose[] poses;
        float[] weights;

        public PoseFrame(Pose[] poseArr, float[] fArr) {
            this.poses = poseArr;
            this.weights = fArr;
        }

        @Override
        public void read(JmeImporter jmeImporter) throws IOException {
            InputCapsule capsule = jmeImporter.getCapsule(this);
            this.weights = capsule.readFloatArray("weights", null);
            Savable[] readSavableArray = capsule.readSavableArray("poses", null);
            if (readSavableArray != null) {
                Pose[] poseArr = new Pose[readSavableArray.length];
                this.poses = poseArr;
                System.arraycopy(readSavableArray, 0, poseArr, 0, readSavableArray.length);
            }
        }

        @Override
        public void write(JmeExporter jmeExporter) throws IOException {
            OutputCapsule capsule = jmeExporter.getCapsule(this);
            capsule.write(this.poses, "poses", (Savable[]) null);
            capsule.write(this.weights, "weights", (float[]) null);
        }

        public PoseFrame m1260clone() {
            try {
                PoseFrame poseFrame = (PoseFrame) super.clone();
                poseFrame.weights = (float[]) this.weights.clone();
                Pose[] poseArr = this.poses;
                if (poseArr != null) {
                    poseFrame.poses = new Pose[poseArr.length];
                    int i10 = 0;
                    while (true) {
                        Pose[] poseArr2 = this.poses;
                        if (i10 >= poseArr2.length) {
                            break;
                        }
                        poseFrame.poses[i10] = poseArr2[i10].m1258clone();
                        i10++;
                    }
                }
                return poseFrame;
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }

        public PoseFrame() {
        }
    }

    public PoseTrack(int i10, float[] fArr, PoseFrame[] poseFrameArr) {
        this.targetMeshIndex = i10;
        this.times = fArr;
        this.frames = poseFrameArr;
    }

    @Override
    public float[] getKeyFrameTimes() {
        return this.times;
    }

    @Override
    public float getLength() {
        float[] fArr = this.times;
        if (fArr == null) {
            return 0.0f;
        }
        return fArr[fArr.length - 1] - fArr[0];
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.targetMeshIndex = capsule.readInt("meshIndex", 0);
        this.times = capsule.readFloatArray("times", null);
        Savable[] readSavableArray = capsule.readSavableArray("frames", null);
        if (readSavableArray != null) {
            PoseFrame[] poseFrameArr = new PoseFrame[readSavableArray.length];
            this.frames = poseFrameArr;
            System.arraycopy(readSavableArray, 0, poseFrameArr, 0, readSavableArray.length);
        }
    }

    @Override
    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars) {
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.targetMeshIndex, "meshIndex", 0);
        capsule.write(this.frames, "frames", (Savable[]) null);
        capsule.write(this.times, "times", (float[]) null);
    }

    @Override
    public PoseTrack m1259clone() {
        try {
            PoseTrack poseTrack = (PoseTrack) super.clone();
            poseTrack.times = (float[]) this.times.clone();
            PoseFrame[] poseFrameArr = this.frames;
            if (poseFrameArr != null) {
                poseTrack.frames = new PoseFrame[poseFrameArr.length];
                int i10 = 0;
                while (true) {
                    PoseFrame[] poseFrameArr2 = this.frames;
                    if (i10 >= poseFrameArr2.length) {
                        break;
                    }
                    poseTrack.frames[i10] = poseFrameArr2[i10].m1260clone();
                    i10++;
                }
            }
            return poseTrack;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public PoseTrack() {
    }
}
