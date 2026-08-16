package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion", f = "AdSelectionManagerImplCommon.kt", i = {0, 0}, l = {231}, m = "persistAdSelectionResult", n = {"adSelectionManager", "persistAdSelectionResultRequest"}, s = {"L$0", "L$1"})
public final class AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 extends Bf.d {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final AdSelectionManagerImplCommon.Ext10Impl.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1(AdSelectionManagerImplCommon.Ext10Impl.Companion companion, yf.f<? super AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1> fVar) {
        super(fVar);
        this.this$0 = companion;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.persistAdSelectionResult(null, null, this);
    }
}
