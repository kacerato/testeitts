package com.android.tools.r8.startup;

import com.android.tools.r8.TextInputStream;
import com.android.tools.r8.profile.art.HumanReadableArtProfileParserBuilder;
import java.util.function.Consumer;

public interface StartupProfileBuilder {
    StartupProfileBuilder addHumanReadableArtProfile(TextInputStream textInputStream, Consumer<HumanReadableArtProfileParserBuilder> consumer);

    StartupProfileBuilder addStartupClass(Consumer<StartupClassBuilder> consumer);

    StartupProfileBuilder addStartupMethod(Consumer<StartupMethodBuilder> consumer);
}
