package com.android.tools.r8.internal;

import com.android.tools.r8.profile.art.ArtProfileConsumer;
import com.android.tools.r8.profile.art.ArtProfileProvider;

public class C8862p4 {

    public final ArtProfileProvider f51432a;

    public final ArtProfileConsumer f51433b;

    public C8862p4(ArtProfileProvider artProfileProvider, ArtProfileConsumer artProfileConsumer) {
        this.f51432a = artProfileProvider;
        this.f51433b = artProfileConsumer;
    }

    public ArtProfileProvider a() {
        return this.f51432a;
    }

    public ArtProfileConsumer b() {
        return this.f51433b;
    }
}
