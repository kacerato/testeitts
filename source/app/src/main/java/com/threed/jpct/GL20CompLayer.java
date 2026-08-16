package com.threed.jpct;

public class GL20CompLayer {
    public static String getFragmentShaderName() {
        Logger.log("Default fragment shader is: /defaultFragmentShader.src");
        return "/defaultFragmentShader.src";
    }

    public static String getVertexShaderName() {
        Logger.log("Default vertex shader is: /defaultVertexShader.src");
        return "/defaultVertexShader.src";
    }
}
