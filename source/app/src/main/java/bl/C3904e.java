package bl;

import java.security.SecureRandom;

public class C3904e {

    public static final C3904e f33472d = new C3904e("dilithium2", 2, false);

    public static final C3904e f33473e = new C3904e("dilithium3", 3, false);

    public static final C3904e f33474f = new C3904e("dilithium5", 5, false);

    public final int f33475a;

    public final String f33476b;

    public final boolean f33477c;

    public C3904e(String str, int i10, boolean z10) {
        this.f33476b = str;
        this.f33475a = i10;
        this.f33477c = z10;
    }

    public C3900a a(SecureRandom secureRandom) {
        return new C3900a(this.f33475a, secureRandom, this.f33477c);
    }

    public String b() {
        return this.f33476b;
    }
}
