package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class ShaderGraphSettings {

    @Expose
    public boolean isPostProcessing;

    @Expose
    public u shadingModel = u.LIT;

    @Expose
    public EnumC12816b refractionType = EnumC12816b.NONE;

    @Expose
    public List<ShaderGraphAttribute> attributes = new SteppedArrayList();
}
