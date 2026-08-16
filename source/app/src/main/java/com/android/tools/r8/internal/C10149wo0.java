package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.startup.StartupProfileBuilder;
import com.android.tools.r8.startup.StartupProfileProvider;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Path;
import java.util.function.Consumer;

public final class C10149wo0 implements StartupProfileProvider {

    public final Path f53607a;

    public final Consumer f53608b;

    public C10149wo0(Path path, Consumer consumer) {
        this.f53607a = path;
        this.f53608b = consumer;
    }

    @Override
    public final Origin getOrigin() {
        return new PathOrigin(this.f53607a);
    }

    @Override
    public final void getStartupProfile(StartupProfileBuilder startupProfileBuilder) {
        try {
            startupProfileBuilder.addHumanReadableArtProfile(new C5878Ru0(this.f53607a), this.f53608b);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }
}
