package com.itsmagic.engine.Engines.Engine.NoCode;

import Ic.C2629h;
import Ic.C2632k;
import N7.c;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import ga.E;

public class NoCodeGraph {

    @Expose
    public NoCodeData data = new NoCodeData();

    public static NoCodeGraph a(String json) {
        try {
            return (NoCodeGraph) X7.a.m().fromJson(json, NoCodeGraph.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static NoCodeGraph e(String inProjectPath) {
        String s10;
        if (inProjectPath == null || inProjectPath.isEmpty() || (s10 = X7.a.s(inProjectPath, c.t())) == null || s10.isEmpty()) {
            return null;
        }
        return a(s10);
    }

    public NoCodeData b() {
        if (this.data == null) {
            this.data = E.c();
        }
        this.data.I();
        E.e(this.data);
        return this.data;
    }

    public C2632k c(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        NoCodeData noCodeData = this.data;
        if (noCodeData != null) {
            c2632k.f9114a.addAll(noCodeData.d0(dependencyRequest).f9114a);
        }
        return c2632k;
    }

    public NoCodeData d() {
        if (this.data == null) {
            this.data = new NoCodeData();
        }
        this.data.I();
        return this.data;
    }

    public void f(BuildDictionary dictionary) {
        NoCodeData noCodeData = this.data;
        if (noCodeData != null) {
            noCodeData.M0(dictionary);
        }
    }

    public JsonElement g(Context context) {
        return X7.a.m().toJsonTree(this);
    }

    public String h() {
        return g(c.t()).toString();
    }

    public String i(Context context) {
        return g(context).toString();
    }

    public void j(NoCodeData data) {
        if (data == null) {
            data = new NoCodeData();
        }
        this.data = data;
    }
}
