package com.itsmagic.engine.Core.Components.JCompiler.Libs;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.List;

public class JLib {

    @Expose
    public final List<LibClass> classes = Collections.synchronizedList(new SteppedArrayList());

    @Expose
    private String name;

    public JLib() {
    }

    public void a(LibClass libClass) {
        synchronized (this.classes) {
            this.classes.add(libClass);
        }
    }

    public LibClass b(int idx) {
        LibClass libClass;
        synchronized (this.classes) {
            libClass = this.classes.get(idx);
        }
        return libClass;
    }

    public int c() {
        int size;
        synchronized (this.classes) {
            size = this.classes.size();
        }
        return size;
    }

    public void d() {
        synchronized (this.classes) {
            this.classes.clear();
        }
    }

    public JLib(String name) {
        this.name = name;
    }
}
