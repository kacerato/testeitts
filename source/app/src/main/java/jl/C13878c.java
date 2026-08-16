package jl;

import Bi.G;
import Bi.r;
import java.security.SecureRandom;

public class C13878c extends G {

    public final C13881f f93958d;

    public C13878c(SecureRandom secureRandom, C13881f c13881f) {
        super(secureRandom == null ? r.h() : secureRandom, 256);
        this.f93958d = c13881f;
    }

    public C13881f c() {
        return this.f93958d;
    }
}
