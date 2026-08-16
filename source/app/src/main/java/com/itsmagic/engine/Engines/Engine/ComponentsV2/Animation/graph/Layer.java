package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.graph;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class Layer {

    @Expose
    public final List<Node> nodeList = new SteppedArrayList();

    @Expose
    public final List<Connection> connectionList = new SteppedArrayList();
}
