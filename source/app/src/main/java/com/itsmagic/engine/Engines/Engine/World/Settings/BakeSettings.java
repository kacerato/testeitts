package com.itsmagic.engine.Engines.Engine.World.Settings;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import java.io.Serializable;
import org.ITsMagic.Atlas.BakeOptions;

public class BakeSettings implements Serializable {

    @Expose
    public ColorINT clearColor = new ColorINT(148, 203, 255);

    @Expose
    public BakeOptions options = new BakeOptions();

    public void a(BuildDictionary dictionary) {
    }
}
