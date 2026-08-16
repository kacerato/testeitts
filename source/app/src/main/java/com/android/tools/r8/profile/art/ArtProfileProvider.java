package com.android.tools.r8.profile.art;

import com.android.tools.r8.Resource;

public interface ArtProfileProvider extends Resource {
    void getArtProfile(ArtProfileBuilder artProfileBuilder);
}
