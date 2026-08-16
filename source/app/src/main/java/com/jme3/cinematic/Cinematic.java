package com.jme3.cinematic;

import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.app.state.AppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.cinematic.events.AbstractCinematicEvent;
import com.jme3.cinematic.events.CameraEvent;
import com.jme3.cinematic.events.CinematicEvent;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.CameraNode;
import com.jme3.scene.Node;
import com.jme3.scene.control.CameraControl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Cinematic extends AbstractCinematicEvent implements AppState {
    private static final Logger logger = Logger.getLogger(Cinematic.class.getName());
    private Map<String, CameraNode> cameras;
    private final List<CinematicEvent> cinematicEvents;
    private CameraNode currentCam;
    private Map<String, Map<Object, Object>> eventsData;

    private String f81570id;
    private boolean initialized;
    private int lastFetchedKeyFrame;
    private float nextEnqueue;
    private Node scene;
    protected TimeLine timeLine;

    public Cinematic() {
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
    }

    private Map<String, Map<Object, Object>> getEventsData() {
        if (this.eventsData == null) {
            this.eventsData = new HashMap();
        }
        return this.eventsData;
    }

    private void setEnableCurrentCam(boolean z10) {
        CameraNode cameraNode = this.currentCam;
        if (cameraNode != null) {
            ((CameraControl) cameraNode.getControl(CameraControl.class)).setEnabled(z10);
        }
    }

    public void activateCamera(float f10, String str) {
        addCinematicEvent(f10, new CameraEvent(this, str));
    }

    public KeyFrame addCinematicEvent(float f10, CinematicEvent cinematicEvent) {
        KeyFrame keyFrameAtTime = this.timeLine.getKeyFrameAtTime(f10);
        if (keyFrameAtTime == null) {
            keyFrameAtTime = new KeyFrame();
            this.timeLine.addKeyFrameAtTime(f10, keyFrameAtTime);
        }
        keyFrameAtTime.cinematicEvents.add(cinematicEvent);
        this.cinematicEvents.add(cinematicEvent);
        if (isInitialized()) {
            cinematicEvent.initEvent(null, this);
        }
        return keyFrameAtTime;
    }

    public CameraNode bindCamera(String str, Camera camera) {
        if (this.cameras.containsKey(str)) {
            throw new IllegalArgumentException("Camera " + str + " is already bound to this cinematic");
        }
        CameraNode cameraNode = new CameraNode(str, camera);
        cameraNode.setControlDir(CameraControl.ControlDirection.SpatialToCamera);
        ((CameraControl) cameraNode.getControl(CameraControl.class)).setEnabled(false);
        this.cameras.put(str, cameraNode);
        this.scene.attachChild(cameraNode);
        return cameraNode;
    }

    @Override
    public void cleanup() {
    }

    public void clear() {
        dispose();
        this.cinematicEvents.clear();
        this.timeLine.clear();
        Map<String, Map<Object, Object>> map = this.eventsData;
        if (map != null) {
            map.clear();
        }
    }

    @Override
    public void dispose() {
        Iterator<CinematicEvent> it = this.cinematicEvents.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    public float enqueueCinematicEvent(CinematicEvent cinematicEvent) {
        float f10 = this.nextEnqueue;
        addCinematicEvent(f10, cinematicEvent);
        this.nextEnqueue += cinematicEvent.getInitialDuration();
        return f10;
    }

    public void fitDuration() {
        TimeLine timeLine = this.timeLine;
        KeyFrame keyFrameAtIndex = timeLine.getKeyFrameAtIndex(timeLine.getLastKeyFrameIndex());
        float f10 = 0.0f;
        for (int i10 = 0; i10 < keyFrameAtIndex.getCinematicEvents().size(); i10++) {
            CinematicEvent cinematicEvent = keyFrameAtIndex.getCinematicEvents().get(i10);
            float keyFrameTime = this.timeLine.getKeyFrameTime(keyFrameAtIndex) + (cinematicEvent.getDuration() * cinematicEvent.getSpeed());
            if (f10 < keyFrameTime) {
                f10 = keyFrameTime;
            }
        }
        this.initialDuration = f10;
    }

    public CameraNode getCamera(String str) {
        return this.cameras.get(str);
    }

    public Object getEventData(String str, Object obj) {
        Map<Object, Object> map;
        Map<String, Map<Object, Object>> map2 = this.eventsData;
        if (map2 == null || (map = map2.get(str)) == null) {
            return null;
        }
        return map.get(obj);
    }

    @Override
    public String getId() {
        return this.f81570id;
    }

    public Node getScene() {
        return this.scene;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        initEvent(application, this);
        Iterator<CinematicEvent> it = this.cinematicEvents.iterator();
        while (it.hasNext()) {
            it.next().initEvent(application, this);
        }
        if (!this.cameras.isEmpty()) {
            Iterator<CameraNode> it2 = this.cameras.values().iterator();
            while (it2.hasNext()) {
                it2.next().setCamera(application.getCamera());
            }
        }
        this.initialized = true;
    }

    @Override
    public boolean isEnabled() {
        return this.playState == PlayState.Playing;
    }

    @Override
    public boolean isInitialized() {
        return this.initialized;
    }

    @Override
    public void onPause() {
        for (int i10 = 0; i10 < this.cinematicEvents.size(); i10++) {
            CinematicEvent cinematicEvent = this.cinematicEvents.get(i10);
            if (cinematicEvent.getPlayState() == PlayState.Playing) {
                cinematicEvent.pause();
            }
        }
    }

    @Override
    public void onPlay() {
        if (isInitialized() && this.playState == PlayState.Paused) {
            for (int i10 = 0; i10 < this.cinematicEvents.size(); i10++) {
                CinematicEvent cinematicEvent = this.cinematicEvents.get(i10);
                if (cinematicEvent.getPlayState() == PlayState.Paused) {
                    cinematicEvent.play();
                }
            }
        }
    }

    @Override
    public void onStop() {
        this.time = 0.0f;
        this.lastFetchedKeyFrame = -1;
        for (int i10 = 0; i10 < this.cinematicEvents.size(); i10++) {
            CinematicEvent cinematicEvent = this.cinematicEvents.get(i10);
            cinematicEvent.setTime(0.0f);
            cinematicEvent.forceStop();
        }
        setEnableCurrentCam(false);
    }

    @Override
    public void onUpdate(float f10) {
        int keyFrameIndexFromTime = this.timeLine.getKeyFrameIndexFromTime(this.time);
        int i10 = this.lastFetchedKeyFrame;
        while (true) {
            i10++;
            if (i10 > keyFrameIndexFromTime) {
                break;
            }
            KeyFrame keyFrame = this.timeLine.get(Integer.valueOf(i10));
            if (keyFrame != null) {
                keyFrame.trigger();
            }
        }
        for (int i11 = 0; i11 < this.cinematicEvents.size(); i11++) {
            this.cinematicEvents.get(i11).internalUpdate(f10);
        }
        this.lastFetchedKeyFrame = keyFrameIndexFromTime;
    }

    @Override
    public void postRender() {
    }

    public void putEventData(String str, Object obj, Object obj2) {
        Map<String, Map<Object, Object>> eventsData = getEventsData();
        Map<Object, Object> map = eventsData.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(obj, obj2);
        eventsData.put(str, map);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        for (Savable savable : capsule.readSavableArray("cinematicEvents", null)) {
            this.cinematicEvents.add((CinematicEvent) savable);
        }
        this.cameras = capsule.readStringSavableMap("cameras", null);
        this.timeLine = (TimeLine) capsule.readSavable("timeLine", null);
    }

    public boolean removeCinematicEvent(CinematicEvent cinematicEvent) {
        cinematicEvent.dispose();
        this.cinematicEvents.remove(cinematicEvent);
        Iterator<KeyFrame> it = this.timeLine.values().iterator();
        while (it.hasNext()) {
            if (it.next().cinematicEvents.remove(cinematicEvent)) {
                return true;
            }
        }
        return false;
    }

    public void removeEventData(String str, Object obj) {
        Map<Object, Object> map;
        Map<String, Map<Object, Object>> map2 = this.eventsData;
        if (map2 == null || (map = map2.get(str)) == null) {
            return;
        }
        map.remove(obj);
    }

    @Override
    public void render(RenderManager renderManager) {
    }

    public void setActiveCamera(String str) {
        setEnableCurrentCam(false);
        CameraNode cameraNode = this.cameras.get(str);
        this.currentCam = cameraNode;
        if (cameraNode == null) {
            logger.log(Level.WARNING, "{0} is not a camera bond to the cinematic, cannot activate", str);
        }
        setEnableCurrentCam(true);
    }

    @Override
    public void setEnabled(boolean z10) {
        if (z10) {
            play();
        }
    }

    public void setId(String str) {
        this.f81570id = str;
    }

    public void setScene(Node node) {
        this.scene = node;
        if (this.cameras.isEmpty()) {
            return;
        }
        Iterator<CameraNode> it = this.cameras.values().iterator();
        while (it.hasNext()) {
            this.scene.attachChild(it.next());
        }
    }

    @Override
    public void setSpeed(float f10) {
        super.setSpeed(f10);
        for (int i10 = 0; i10 < this.cinematicEvents.size(); i10++) {
            this.cinematicEvents.get(i10).setSpeed(f10);
        }
    }

    @Override
    public void setTime(float f10) {
        onStop();
        super.setTime(f10);
        int keyFrameIndexFromTime = this.timeLine.getKeyFrameIndexFromTime(f10);
        for (int i10 = 0; i10 <= keyFrameIndexFromTime; i10++) {
            KeyFrame keyFrame = this.timeLine.get(Integer.valueOf(i10));
            if (keyFrame != null) {
                for (CinematicEvent cinematicEvent : keyFrame.getCinematicEvents()) {
                    float keyFrameTime = this.time - this.timeLine.getKeyFrameTime(keyFrame);
                    if (keyFrameTime >= 0.0f && (keyFrameTime <= cinematicEvent.getInitialDuration() || cinematicEvent.getLoopMode() != LoopMode.DontLoop)) {
                        cinematicEvent.play();
                    }
                    cinematicEvent.setTime(keyFrameTime);
                }
            }
        }
        this.lastFetchedKeyFrame = keyFrameIndexFromTime;
        if (this.playState != PlayState.Playing) {
            pause();
        }
    }

    @Override
    public void stateAttached(AppStateManager appStateManager) {
    }

    @Override
    public void stateDetached(AppStateManager appStateManager) {
        stop();
    }

    @Override
    public void update(float f10) {
        if (isInitialized() && this.playState == PlayState.Playing) {
            internalUpdate(f10);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        List<CinematicEvent> list = this.cinematicEvents;
        capsule.write((Savable[]) list.toArray(new CinematicEvent[list.size()]), "cinematicEvents", (Savable[]) null);
        capsule.writeStringSavableMap(this.cameras, "cameras", null);
        capsule.write(this.timeLine, "timeLine", (Savable) null);
    }

    public boolean removeCinematicEvent(float f10, CinematicEvent cinematicEvent) {
        cinematicEvent.dispose();
        return removeCinematicEvent(this.timeLine.getKeyFrameAtTime(f10), cinematicEvent);
    }

    public Cinematic(float f10) {
        super(f10);
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
    }

    public boolean removeCinematicEvent(KeyFrame keyFrame, CinematicEvent cinematicEvent) {
        cinematicEvent.dispose();
        boolean remove = keyFrame.cinematicEvents.remove(cinematicEvent);
        this.cinematicEvents.remove(cinematicEvent);
        if (keyFrame.isEmpty()) {
            this.timeLine.removeKeyFrame(keyFrame.getIndex());
        }
        return remove;
    }

    public Cinematic(LoopMode loopMode) {
        super(loopMode);
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
    }

    public Cinematic(float f10, LoopMode loopMode) {
        super(f10, loopMode);
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
    }

    public Cinematic(Node node) {
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
        this.scene = node;
    }

    public Cinematic(Node node, float f10) {
        super(f10);
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
        this.scene = node;
    }

    public Cinematic(Node node, LoopMode loopMode) {
        super(loopMode);
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
        this.scene = node;
    }

    public Cinematic(Node node, float f10, LoopMode loopMode) {
        super(f10, loopMode);
        this.timeLine = new TimeLine();
        this.lastFetchedKeyFrame = -1;
        this.cinematicEvents = new ArrayList();
        this.cameras = new HashMap();
        this.initialized = false;
        this.nextEnqueue = 0.0f;
        this.scene = node;
    }
}
