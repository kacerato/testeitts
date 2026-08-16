package com.itsmagic.engine.Core.Components.GIAP;

public class d {

    public String f72505a;

    public int f72506b;

    public int f72507c;

    public String f72508d;

    public boolean f72509e;

    public d(String code, int icon, String type, int quantity) {
        this.f72509e = false;
        this.f72505a = code;
        this.f72506b = icon;
        this.f72508d = type;
        this.f72507c = quantity;
    }

    public String a() {
        return this.f72505a;
    }

    public int b() {
        return this.f72506b;
    }

    public int c() {
        return this.f72507c;
    }

    public String d() {
        return this.f72508d;
    }

    public boolean e() {
        return this.f72509e;
    }

    public d(String code, int icon, String type, int quantity, boolean subscription) {
        this.f72505a = code;
        this.f72506b = icon;
        this.f72507c = quantity;
        this.f72508d = type;
        this.f72509e = subscription;
    }
}
