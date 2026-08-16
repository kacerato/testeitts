package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Node;

public class RootNodeAppState extends AbstractAppState {
    protected Node rootNode;
    protected ViewPort viewPort;

    public RootNodeAppState() {
    }

    @Override
    public void cleanup() {
        this.viewPort.detachScene(this.rootNode);
        super.cleanup();
    }

    public Node getRootNode() {
        return this.rootNode;
    }

    public ViewPort getViewPort() {
        return this.viewPort;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        if (this.rootNode == null) {
            this.rootNode = new Node("Root Node");
        }
        if (this.viewPort == null) {
            this.viewPort = application.getViewPort();
        }
        this.viewPort.attachScene(this.rootNode);
        super.initialize(appStateManager, application);
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        this.rootNode.updateLogicalState(f10);
        this.rootNode.updateGeometricState();
    }

    public RootNodeAppState(ViewPort viewPort) {
        this.viewPort = viewPort;
    }

    public RootNodeAppState(Node node) {
        this.rootNode = node;
    }

    public RootNodeAppState(ViewPort viewPort, Node node) {
        this.viewPort = viewPort;
        this.rootNode = node;
    }

    public RootNodeAppState(String str, ViewPort viewPort, Node node) {
        super(str);
        this.viewPort = viewPort;
        this.rootNode = node;
    }
}
