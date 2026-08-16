package com.itsmagic.engine.Core.Components.JCompiler;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;

public class CompiledDictionary implements Serializable {

    @Expose
    public SteppedArrayList<ClassDic> javaScripts = new SteppedArrayList<>();
}
