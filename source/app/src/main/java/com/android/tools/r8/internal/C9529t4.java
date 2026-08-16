package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.profile.art.ArtProfileBuilder;
import com.android.tools.r8.profile.art.ArtProfileProvider;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Path;

public final class C9529t4 implements ArtProfileProvider {

    public final Path f52516a;

    public C9529t4(Path path) {
        this.f52516a = path;
    }

    @Override
    public final void getArtProfile(ArtProfileBuilder artProfileBuilder) {
        try {
            artProfileBuilder.addHumanReadableArtProfile(new C5878Ru0(this.f52516a), C6628bi.b());
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public final Origin getOrigin() {
        return new PathOrigin(this.f52516a);
    }
}
