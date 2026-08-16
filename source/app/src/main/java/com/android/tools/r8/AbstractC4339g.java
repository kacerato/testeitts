package com.android.tools.r8;

import com.android.tools.r8.origin.PathOrigin;
import java.nio.file.Path;

public abstract class AbstractC4339g extends PathOrigin {

    public final String f36121h;

    public AbstractC4339g(String str, Path path) {
        super(path);
        this.f36121h = str;
    }

    @Override
    public final String part() {
        return this.f36121h + " '" + super.part() + "'";
    }
}
