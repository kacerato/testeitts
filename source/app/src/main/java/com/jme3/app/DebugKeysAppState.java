package com.jme3.app;

import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.util.BufferUtils;
import java.io.PrintStream;

public class DebugKeysAppState extends AbstractAppState {
    public static final String INPUT_MAPPING_CAMERA_POS = "SIMPLEAPP_CameraPos";
    public static final String INPUT_MAPPING_MEMORY = "SIMPLEAPP_Memory";
    private Application app;
    private InputManager inputManager;
    private final DebugKeyListener keyListener = new DebugKeyListener();

    public class DebugKeyListener implements ActionListener {
        private DebugKeyListener() {
        }

        @Override
        public void onAction(String str, boolean z10, float f10) {
            if (z10) {
                if (!str.equals("SIMPLEAPP_CameraPos")) {
                    if (str.equals("SIMPLEAPP_Memory")) {
                        BufferUtils.printCurrentDirectMemory(null);
                        return;
                    }
                    return;
                }
                Camera camera = DebugKeysAppState.this.app.getCamera();
                if (camera != null) {
                    Vector3f location = camera.getLocation();
                    Quaternion rotation = camera.getRotation();
                    PrintStream printStream = System.out;
                    printStream.println("Camera Position: (" + location.f81611x + ", " + location.f81612y + ", " + location.f81613z + ")");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Camera Rotation: ");
                    sb2.append((Object) rotation);
                    printStream.println(sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Camera Direction: ");
                    sb3.append((Object) camera.getDirection());
                    printStream.println(sb3.toString());
                    printStream.println("cam.setLocation(new Vector3f(" + location.f81611x + "f, " + location.f81612y + "f, " + location.f81613z + "f));");
                    printStream.println("cam.setRotation(new Quaternion(" + rotation.getX() + "f, " + rotation.getY() + "f, " + rotation.getZ() + "f, " + rotation.getW() + "f));");
                }
            }
        }
    }

    @Override
    public void cleanup() {
        super.cleanup();
        if (this.inputManager.hasMapping("SIMPLEAPP_CameraPos")) {
            this.inputManager.deleteMapping("SIMPLEAPP_CameraPos");
        }
        if (this.inputManager.hasMapping("SIMPLEAPP_Memory")) {
            this.inputManager.deleteMapping("SIMPLEAPP_Memory");
        }
        this.inputManager.removeListener(this.keyListener);
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        super.initialize(appStateManager, application);
        this.app = application;
        this.inputManager = application.getInputManager();
        if (application.getInputManager() != null) {
            this.inputManager.addMapping("SIMPLEAPP_CameraPos", new KeyTrigger(46));
            this.inputManager.addMapping("SIMPLEAPP_Memory", new KeyTrigger(50));
            this.inputManager.addListener(this.keyListener, "SIMPLEAPP_CameraPos", "SIMPLEAPP_Memory");
        }
    }
}
