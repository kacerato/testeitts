package com.itsmagic.engine.Core.Components.JCompiler;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class ClassDic implements Serializable {

    @Expose
    public String className;

    @Expose
    public String filePath;

    @Expose
    public String metaFolder;

    public ClassDic(String className, String metaFolder, String filePath) {
        this.className = className;
        this.metaFolder = metaFolder;
        this.filePath = filePath;
    }
}
