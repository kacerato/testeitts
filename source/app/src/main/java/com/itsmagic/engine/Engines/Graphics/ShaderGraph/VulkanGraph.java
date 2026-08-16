package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import Ic.C2629h;
import Ic.C2632k;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;

public class VulkanGraph {

    @Expose
    private ShaderGraphData shaderGraphData;

    public static VulkanGraph a(String json) {
        try {
            return (VulkanGraph) X7.a.m().fromJson(json, VulkanGraph.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static VulkanGraph e(String inProjectPath) {
        String s10;
        if (inProjectPath == null || inProjectPath.isEmpty() || (s10 = X7.a.s(inProjectPath, N7.c.t())) == null || s10.isEmpty()) {
            return null;
        }
        return a(s10);
    }

    public ShaderGraphData b() {
        if (this.shaderGraphData == null) {
            this.shaderGraphData = A.e();
        }
        this.shaderGraphData.e();
        A.h(this.shaderGraphData);
        return this.shaderGraphData;
    }

    public C2632k c(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        ShaderGraphData shaderGraphData = this.shaderGraphData;
        if (shaderGraphData != null) {
            c2632k.f9114a.addAll(shaderGraphData.g(dependencyRequest).f9114a);
        }
        return c2632k;
    }

    public ShaderGraphData d() {
        return this.shaderGraphData;
    }

    public void f(BuildDictionary dictionary) {
        ShaderGraphData shaderGraphData = this.shaderGraphData;
        if (shaderGraphData != null) {
            shaderGraphData.n(dictionary);
        }
    }

    public JsonElement g(Context context) {
        return X7.a.m().toJsonTree(this);
    }

    public String h() {
        return g(N7.c.t()).toString();
    }

    public String i(Context context) {
        return g(context).toString();
    }

    public void j(ShaderGraphData shaderGraphData) {
        this.shaderGraphData = shaderGraphData;
        if (shaderGraphData != null) {
            shaderGraphData.k();
        }
    }
}
