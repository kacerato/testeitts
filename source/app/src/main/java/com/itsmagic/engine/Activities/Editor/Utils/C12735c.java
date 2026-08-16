package com.itsmagic.engine.Activities.Editor.Utils;

import android.os.Bundle;
import java.lang.constant.ConstantDescs;
import t3.C15377a;

public class C12735c {
    public static boolean a(String eventText) {
        if (eventText == null || eventText.isEmpty()) {
            throw new RuntimeException("Event text can't be null or empty");
        }
        C15377a.f109719g.booleanValue();
        N7.c.x().c(eventText.replace("[", ConstantDescs.DEFAULT_NAME).replace("]", ConstantDescs.DEFAULT_NAME), new Bundle());
        return true;
    }
}
