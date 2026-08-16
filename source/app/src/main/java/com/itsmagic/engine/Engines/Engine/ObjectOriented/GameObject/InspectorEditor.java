package com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject;

import com.google.gson.annotations.Expose;
import gb.InterfaceC13318f;
import java.io.Serializable;

public class InspectorEditor implements Serializable {

    @Expose
    private boolean alwaysEnabled;

    @Expose
    private boolean alwaysOpen;

    public InterfaceC13318f f79318b;

    @Expose
    public int depth;

    @Expose
    private boolean open;

    @Expose
    private boolean preventLongClickMenu;

    public InspectorEditor() {
        this.depth = 0;
        this.alwaysOpen = false;
        this.alwaysEnabled = false;
        this.preventLongClickMenu = false;
        i(false);
    }

    public static InspectorEditor b(InspectorEditor inspectorEditor) {
        if (inspectorEditor == null) {
            return null;
        }
        return inspectorEditor.clone();
    }

    public InspectorEditor clone() {
        return new InspectorEditor(this.open, this.depth);
    }

    public boolean c() {
        return this.alwaysEnabled;
    }

    public boolean d() {
        return this.alwaysOpen;
    }

    public boolean e() {
        return this.open;
    }

    public boolean f() {
        return this.preventLongClickMenu;
    }

    public void g(boolean alwaysEnabled) {
        this.alwaysEnabled = alwaysEnabled;
    }

    public void h(boolean alwaysOpen) {
        this.alwaysOpen = alwaysOpen;
    }

    public void i(boolean open) {
        this.open = open;
        InterfaceC13318f interfaceC13318f = this.f79318b;
        if (interfaceC13318f != null) {
            interfaceC13318f.a(open);
        }
    }

    public void j(boolean preventLongClickMenu) {
        this.preventLongClickMenu = preventLongClickMenu;
    }

    public InspectorEditor(boolean open) {
        this.depth = 0;
        this.alwaysOpen = false;
        this.alwaysEnabled = false;
        this.preventLongClickMenu = false;
        i(open);
    }

    public InspectorEditor(boolean open, int depth) {
        this.alwaysOpen = false;
        this.alwaysEnabled = false;
        this.preventLongClickMenu = false;
        this.open = open;
        this.depth = depth;
    }
}
