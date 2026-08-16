package com.jme3.app;

import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.input.FlyByCamera;

public class FlyCamAppState extends AbstractAppState {
    private Application app;
    private FlyByCamera flyCam;

    @Override
    public void cleanup() {
        super.cleanup();
        if (this.app.getInputManager() != null) {
            this.flyCam.unregisterInput();
        }
    }

    public FlyByCamera getCamera() {
        return this.flyCam;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        super.initialize(appStateManager, application);
        this.app = application;
        if (application.getInputManager() != null) {
            if (this.flyCam == null) {
                this.flyCam = new FlyByCamera(application.getCamera());
            }
            this.flyCam.registerWithInput(application.getInputManager());
        }
    }

    public void setCamera(FlyByCamera flyByCamera) {
        this.flyCam = flyByCamera;
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.flyCam.setEnabled(z10);
    }
}
