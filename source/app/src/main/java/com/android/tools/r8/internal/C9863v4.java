package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleBuilder;
import com.android.tools.r8.references.MethodReference;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UncheckedIOException;
import java.util.function.Consumer;

public final class C9863v4 implements ArtProfileMethodRuleBuilder {

    public final C7 f53010a;

    public final C10030w4 f53011b;

    public C9863v4(C10030w4 c10030w4, C7 c72) {
        this.f53011b = c10030w4;
        this.f53010a = c72;
    }

    @Override
    public final ArtProfileMethodRuleBuilder setMethodReference(MethodReference methodReference) {
        this.f53010a.a((C7) methodReference);
        return this;
    }

    @Override
    public final ArtProfileMethodRuleBuilder setMethodRuleInfo(Consumer consumer) {
        C9195r4.a a10 = C9195r4.a();
        consumer.accept(a10);
        C9195r4 a11 = a10.a();
        try {
            OutputStreamWriter outputStreamWriter = this.f53011b.f53411a;
            if (a11.isHot()) {
                outputStreamWriter.write(72);
            }
            if (a11.isStartup()) {
                outputStreamWriter.write(83);
            }
            if (a11.isPostStartup()) {
                outputStreamWriter.write(80);
            }
            return this;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }
}
