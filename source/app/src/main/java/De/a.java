package De;

import io.reactivex.internal.util.ExceptionHelper;

public final class a extends f<Fe.a> {

    public static final long f5156c = -8219729196779211169L;

    public a(Fe.a aVar) {
        super(aVar);
    }

    @Override
    public void a(@Ce.f Fe.a aVar) {
        try {
            aVar.run();
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }
}
