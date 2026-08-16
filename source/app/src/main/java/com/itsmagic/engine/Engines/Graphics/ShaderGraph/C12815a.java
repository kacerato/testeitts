package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

public class C12815a {

    public static final String f81312a = "variable_worldPos";

    public static String a(w stage) {
        return stage == w.VERTEX ? "v.worldPosition.xyz" : "variable_worldPos.xyz";
    }

    public static String b() {
        return "inverse(getUserWorldFromWorldMatrix())";
    }

    public static String c(String position) {
        return "mulMat4x4Float3(getUserWorldFromWorldMatrix(), " + position + ").xyz";
    }

    public static String d(w stage) {
        return stage == w.VERTEX ? c("v.worldPosition.xyz") : c("variable_worldPos.xyz");
    }
}
