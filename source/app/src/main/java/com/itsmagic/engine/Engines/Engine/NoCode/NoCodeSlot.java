package com.itsmagic.engine.Engines.Engine.NoCode;

import com.google.gson.annotations.Expose;
import ga.EnumC13304B;
import ga.H;

public class NoCodeSlot {

    public String f79030a;

    @Expose
    public String name;

    @Expose
    @Deprecated
    public EnumC13304B stageOverride;

    @Expose
    public H type;

    public NoCodeSlot() {
    }

    public final String a() {
        String str = this.f79030a;
        return str != null ? str : this.name;
    }

    public EnumC13304B b(EnumC13304B fallback) {
        EnumC13304B enumC13304B = this.stageOverride;
        return enumC13304B != null ? enumC13304B : fallback;
    }

    public NoCodeSlot c(String displayableTitle) {
        this.f79030a = displayableTitle;
        return this;
    }

    public NoCodeSlot(String name, H type) {
        this.name = name;
        this.type = type;
    }

    public NoCodeSlot(String name, H type, String displayableTitle) {
        this(name, type);
        this.f79030a = displayableTitle;
    }

    public NoCodeSlot(String name, H type, EnumC13304B stageOverride) {
        this.name = name;
        this.type = type;
        this.stageOverride = stageOverride;
    }
}
