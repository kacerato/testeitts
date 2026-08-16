package androidx.privacysandbox.ads.adservices.adselection;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon", f = "AdSelectionManagerImplCommon.kt", i = {}, l = {44}, m = "selectAds$suspendImpl", n = {}, s = {})
public final class AdSelectionManagerImplCommon$selectAds$1 extends Bf.d {
    int label;
    Object result;
    final AdSelectionManagerImplCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManagerImplCommon$selectAds$1(AdSelectionManagerImplCommon adSelectionManagerImplCommon, yf.f<? super AdSelectionManagerImplCommon$selectAds$1> fVar) {
        super(fVar);
        this.this$0 = adSelectionManagerImplCommon;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AdSelectionManagerImplCommon.selectAds$suspendImpl(this.this$0, (AdSelectionConfig) null, this);
    }
}
