package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import java.nio.file.Path;
import java.util.function.Consumer;

public final class I0 implements Consumer {

    public final BaseCommand.Builder f35349b;

    public I0(BaseCommand.Builder builder) {
        this.f35349b = builder;
    }

    @Override
    public final void accept(Object obj) {
        BaseCommand.Builder.e(this.f35349b, (Path) obj);
    }
}
