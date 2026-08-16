package com.android.tools.r8.internal;

import com.android.tools.r8.TextInputStream;
import com.android.tools.r8.profile.art.ArtProfileBuilder;
import com.android.tools.r8.startup.StartupClassBuilder;
import com.android.tools.r8.startup.StartupMethodBuilder;
import com.android.tools.r8.startup.StartupProfileBuilder;
import java.util.function.Consumer;

public final class C7027e4 implements ArtProfileBuilder {

    public final StartupProfileBuilder f47585a;

    public C7027e4(StartupProfileBuilder startupProfileBuilder) {
        this.f47585a = startupProfileBuilder;
    }

    public static void a(C7194f4 c7194f4, StartupClassBuilder startupClassBuilder) {
        startupClassBuilder.setClassReference(c7194f4.f47848a);
    }

    @Override
    public final ArtProfileBuilder addClassRule(Consumer consumer) {
        final C7194f4 c7194f4 = new C7194f4();
        consumer.accept(c7194f4);
        this.f47585a.addStartupClass(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7027e4.a(C7194f4.this, (StartupClassBuilder) obj);
            }
        });
        return this;
    }

    @Override
    public final ArtProfileBuilder addHumanReadableArtProfile(TextInputStream textInputStream, Consumer consumer) {
        throw new C5417Jv0();
    }

    @Override
    public final ArtProfileBuilder addMethodRule(Consumer consumer) {
        final C7361g4 c7361g4 = new C7361g4();
        consumer.accept(c7361g4);
        this.f47585a.addStartupMethod(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7027e4.a(C7361g4.this, (StartupMethodBuilder) obj);
            }
        });
        return this;
    }

    public static void a(C7361g4 c7361g4, StartupMethodBuilder startupMethodBuilder) {
        startupMethodBuilder.setMethodReference(c7361g4.f48178a);
    }
}
