package com.itsmagic.engine.Activities.Editor;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class FacebookTerms implements Serializable {

    @Expose
    private boolean accepted;

    public FacebookTerms(boolean accepted) {
        this.accepted = accepted;
    }

    public boolean a() {
        return this.accepted;
    }

    public void b(boolean accepted) {
        this.accepted = accepted;
    }
}
