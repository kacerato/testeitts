package com.itsmagic.engine.Engines.Engine.ImGUI.InputSystem;

import S9.b;
import V9.p;
import com.google.gson.annotations.Expose;

@Deprecated
public class UIEventEntry {

    @Expose
    public p objectReference;

    @Expose
    public boolean clickable = true;

    @Expose
    public b rectObject = b.MySelf;

    @Expose
    public boolean onlyDownInside = true;

    @Expose
    public boolean exclusiveMode = true;

    @Expose
    public boolean dispatchTouchWhenOutsideRect = false;
}
