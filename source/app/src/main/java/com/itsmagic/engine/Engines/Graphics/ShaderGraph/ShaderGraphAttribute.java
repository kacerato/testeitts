package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import java.lang.constant.ConstantDescs;

public class ShaderGraphAttribute {

    @Expose
    public String f81224id = Tc.b.L();

    @Expose
    public String name = "Attribute";

    @Expose
    public C type = C.NUMBER;

    @Expose
    public float number = 0.0f;

    @Expose
    public Vector2 f81225v2 = new Vector2();

    @Expose
    public Vector3 f81226v3 = new Vector3();

    @Expose
    public Vector4 f81227v4 = new Vector4();

    @Expose
    public String file = "";

    public String a() {
        if ("cameraImage".equals(this.name)) {
            return "cameraImage";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sga_");
        String str = this.f81224id;
        sb2.append(str != null ? str.replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME) : "attr");
        return sb2.toString();
    }
}
