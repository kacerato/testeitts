package com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils;

import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class Orientations implements Serializable {

    @Expose
    private boolean landscape;

    @Expose
    private boolean portrait;

    public Orientations() {
        this.landscape = true;
        this.portrait = true;
    }

    public static Orientations b(Orientations orientations) {
        if (orientations != null) {
            return orientations.a();
        }
        return null;
    }

    public Orientations a() {
        Orientations orientations = new Orientations();
        orientations.portrait = this.portrait;
        orientations.landscape = this.landscape;
        return orientations;
    }

    public boolean c() {
        return this.landscape;
    }

    public boolean d() {
        return this.portrait;
    }

    public void e(boolean landscape) {
        this.landscape = landscape;
    }

    public void f(boolean portrait) {
        this.portrait = portrait;
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.portrait ? "1" : "0");
        sb2.append(".");
        sb2.append(this.landscape ? "1" : "0");
        return sb2.toString();
    }

    public Orientations(boolean portrait, boolean landscape) {
        this.portrait = portrait;
        this.landscape = landscape;
    }
}
