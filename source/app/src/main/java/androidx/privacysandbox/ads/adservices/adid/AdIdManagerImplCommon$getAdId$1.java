package androidx.privacysandbox.ads.adservices.adid;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon", f = "AdIdManagerImplCommon.kt", i = {}, l = {40}, m = "getAdId$suspendImpl", n = {}, s = {})
public final class AdIdManagerImplCommon$getAdId$1 extends Bf.d {
    Object L$0;
    int label;
    Object result;
    final AdIdManagerImplCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdIdManagerImplCommon$getAdId$1(AdIdManagerImplCommon adIdManagerImplCommon, yf.f<? super AdIdManagerImplCommon$getAdId$1> fVar) {
        super(fVar);
        this.this$0 = adIdManagerImplCommon;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AdIdManagerImplCommon.getAdId$suspendImpl(this.this$0, this);
    }
}
