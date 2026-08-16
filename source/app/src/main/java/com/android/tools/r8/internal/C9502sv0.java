package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MappingComposeException;
import java.util.function.Consumer;

public final class C9502sv0 extends com.android.tools.r8.naming.mappinginformation.c {

    public final String f52484a;

    public final String f52485b;

    public C9502sv0(String str, String str2) {
        this.f52484a = str;
        this.f52485b = str2;
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        return true;
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        throw new MappingComposeException("Unable to compose unknown json mapping information");
    }

    @Override
    public final C9502sv0 k() {
        return this;
    }

    @Override
    public final String r() {
        return this.f52485b;
    }

    public static void a(String str, C7407gL c7407gL, Consumer consumer) {
        consumer.accept(new C9502sv0(str, c7407gL.toString()));
    }
}
