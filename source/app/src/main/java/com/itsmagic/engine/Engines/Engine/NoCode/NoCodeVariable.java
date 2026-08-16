package com.itsmagic.engine.Engines.Engine.NoCode;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ga.H;

public class NoCodeVariable {

    public transient Object f79033a;

    @Expose
    public String guid;

    @Expose
    public boolean input;

    @Expose
    public String ownerNodeId;

    @Expose
    public int slotIndex;

    @Expose
    public String slotName;

    @Expose
    public H type = H.NUMBER;

    public final transient Vector2 f79034b = new Vector2();

    public final transient Vector3 f79035c = new Vector3();

    public final transient Vector4 f79036d = new Vector4();

    public final transient Quaternion f79037e = new Quaternion();

    public final transient ColorINT f79038f = new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
}
