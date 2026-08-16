package com.itsmagic.engine.Activities.Editor.Panels.AI;

import com.itsmagic.engine.Activities.Editor.Utils.q;
import java.io.File;

public abstract class c implements q.a.l {
    @Override
    public void b(File file) {
        d(file);
    }

    public abstract void c(String result);

    public abstract void d(File file);

    @Override
    public void onError(String result) {
        if ("Invalid download file".equals(result) || "The URL returned JSON instead of a file.".equals(result)) {
            d(null);
        } else {
            c(result);
        }
    }
}
