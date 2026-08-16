package com.android.tools.r8.profile.art;

import com.android.tools.r8.TextInputStream;
import java.util.function.Consumer;

public interface ArtProfileBuilder {
    ArtProfileBuilder addClassRule(Consumer<ArtProfileClassRuleBuilder> consumer);

    ArtProfileBuilder addHumanReadableArtProfile(TextInputStream textInputStream, Consumer<HumanReadableArtProfileParserBuilder> consumer);

    ArtProfileBuilder addMethodRule(Consumer<ArtProfileMethodRuleBuilder> consumer);
}
