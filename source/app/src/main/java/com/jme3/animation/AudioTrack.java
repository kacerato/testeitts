package com.jme3.animation;

import com.jme3.audio.AudioNode;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

@Deprecated
public class AudioTrack implements ClonableTrack {
    private static final Logger logger = Logger.getLogger(AudioTrack.class.getName());
    private AudioNode audio;
    private boolean initialized;
    private float length;
    private boolean played;
    private float startOffset;
    private boolean started;

    public class OnEndListener implements AnimEventListener {
        private OnEndListener() {
        }

        @Override
        public void onAnimChange(AnimControl animControl, AnimChannel animChannel, String str) {
        }

        @Override
        public void onAnimCycleDone(AnimControl animControl, AnimChannel animChannel, String str) {
            AudioTrack.this.stop();
        }
    }

    public AudioTrack() {
        this.startOffset = 0.0f;
        this.length = 0.0f;
        this.initialized = false;
        this.started = false;
        this.played = false;
    }

    private AudioNode findAudio(Spatial spatial) {
        if (spatial instanceof AudioNode) {
            AudioNode audioNode = (AudioNode) spatial;
            TrackInfo trackInfo = (TrackInfo) audioNode.getUserData("TrackInfo");
            if (trackInfo == null || !trackInfo.getTracks().contains(this)) {
                return null;
            }
            return audioNode;
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                AudioNode findAudio = findAudio(it.next());
                if (findAudio != null) {
                    return findAudio;
                }
            }
        }
        return null;
    }

    private void setUserData(AudioTrack audioTrack) {
        TrackInfo trackInfo = (TrackInfo) audioTrack.audio.getUserData("TrackInfo");
        if (trackInfo == null) {
            trackInfo = new TrackInfo();
            audioTrack.audio.setUserData("TrackInfo", trackInfo);
        }
        trackInfo.addTrack(audioTrack);
    }

    public void stop() {
        this.audio.stop();
        this.started = false;
    }

    @Override
    public void cleanUp() {
        TrackInfo trackInfo = (TrackInfo) this.audio.getUserData("TrackInfo");
        trackInfo.getTracks().remove(this);
        if (trackInfo.getTracks().isEmpty()) {
            return;
        }
        this.audio.setUserData("TrackInfo", null);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.initialized = false;
        this.started = false;
        this.played = false;
        this.audio = (AudioNode) cloner.clone(this.audio);
    }

    @Override
    public Track cloneForSpatial(Spatial spatial) {
        AudioTrack audioTrack = new AudioTrack();
        audioTrack.length = this.length;
        audioTrack.startOffset = this.startOffset;
        AudioNode findAudio = findAudio(spatial);
        audioTrack.audio = findAudio;
        if (findAudio == null) {
            logger.log(Level.WARNING, "{0} was not found in {1} or is not bound to this track", new Object[]{this.audio.getName(), spatial.getName()});
            audioTrack.audio = this.audio;
        }
        setUserData(audioTrack);
        return audioTrack;
    }

    public AudioNode getAudio() {
        return this.audio;
    }

    @Override
    public float[] getKeyFrameTimes() {
        return new float[]{this.startOffset};
    }

    @Override
    public float getLength() {
        return this.length;
    }

    public float getStartOffset() {
        return this.startOffset;
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Error cloning", e10);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.audio = (AudioNode) capsule.readSavable("audio", null);
        this.length = capsule.readFloat("length", this.length);
        this.startOffset = capsule.readFloat("startOffset", 0.0f);
    }

    public void setAudio(AudioNode audioNode) {
        if (this.audio != null) {
            ((TrackInfo) audioNode.getUserData("TrackInfo")).getTracks().remove(this);
        }
        this.audio = audioNode;
        setUserData(this);
    }

    public void setStartOffset(float f10) {
        this.startOffset = f10;
    }

    @Override
    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars) {
        if (f10 >= this.length) {
            return;
        }
        if (!this.initialized) {
            animControl.addListener(new OnEndListener());
            this.initialized = true;
        }
        if (this.started || f10 < this.startOffset) {
            return;
        }
        this.started = true;
        this.audio.playInstance();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.audio, "audio", (Savable) null);
        capsule.write(this.length, "length", 0.0f);
        capsule.write(this.startOffset, "startOffset", 0.0f);
    }

    @Override
    public AudioTrack m1254clone() {
        return new AudioTrack(this.audio, this.length, this.startOffset);
    }

    public AudioTrack(AudioNode audioNode, float f10) {
        this.startOffset = 0.0f;
        this.initialized = false;
        this.started = false;
        this.played = false;
        this.audio = audioNode;
        this.length = f10;
        setUserData(this);
    }

    public AudioTrack(AudioNode audioNode, float f10, float f11) {
        this(audioNode, f10);
        this.startOffset = f11;
    }
}
