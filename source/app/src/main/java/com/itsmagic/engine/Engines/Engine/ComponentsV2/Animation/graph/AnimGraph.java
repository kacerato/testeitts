package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.graph;

import N7.c;
import X7.a;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class AnimGraph {

    @Expose
    public List<Layer> layers = new SteppedArrayList();

    public static AnimGraph a(String json) {
        try {
            return (AnimGraph) a.m().fromJson(json, AnimGraph.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public JsonElement b(Context context) {
        JsonElement jsonTree = a.m().toJsonTree(this);
        return jsonTree;
    }

    public String c() {
        return b(c.t()).toString();
    }

    public String d(Context context) {
        return b(context).toString();
    }
}
