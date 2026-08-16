package com.android.tools.r8.internal;

import com.android.tools.r8.TextInputStream;
import com.android.tools.r8.profile.art.ArtProfileBuilder;
import com.android.tools.r8.references.MethodReference;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UncheckedIOException;
import java.util.function.Consumer;

public final class C10030w4 implements ArtProfileBuilder {

    public final OutputStreamWriter f53411a;

    public C10030w4(OutputStreamWriter outputStreamWriter) {
        this.f53411a = outputStreamWriter;
    }

    @Override
    public final ArtProfileBuilder addClassRule(Consumer consumer) {
        consumer.accept(new C9696u4(this));
        return this;
    }

    @Override
    public final ArtProfileBuilder addHumanReadableArtProfile(TextInputStream textInputStream, Consumer consumer) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(textInputStream.getInputStream(), textInputStream.getCharset());
            try {
                char[] cArr = new char[1024];
                for (int read = inputStreamReader.read(cArr); read != -1; read = inputStreamReader.read(cArr)) {
                    this.f53411a.write(cArr, 0, read);
                }
                AbstractC10197x4.a(this.f53411a, "");
                inputStreamReader.close();
                return this;
            } finally {
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public final ArtProfileBuilder addMethodRule(Consumer consumer) {
        C7 c72 = new C7();
        consumer.accept(new C9863v4(this, c72));
        AbstractC10197x4.a(this.f53411a, C7598hX.a((MethodReference) c72.a()));
        return this;
    }
}
