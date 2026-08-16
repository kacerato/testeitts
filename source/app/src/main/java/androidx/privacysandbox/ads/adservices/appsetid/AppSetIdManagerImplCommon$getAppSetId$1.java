package androidx.privacysandbox.ads.adservices.appsetid;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManagerImplCommon", f = "AppSetIdManagerImplCommon.kt", i = {}, l = {38}, m = "getAppSetId$suspendImpl", n = {}, s = {})
public final class AppSetIdManagerImplCommon$getAppSetId$1 extends Bf.d {
    Object L$0;
    int label;
    Object result;
    final AppSetIdManagerImplCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSetIdManagerImplCommon$getAppSetId$1(AppSetIdManagerImplCommon appSetIdManagerImplCommon, yf.f<? super AppSetIdManagerImplCommon$getAppSetId$1> fVar) {
        super(fVar);
        this.this$0 = appSetIdManagerImplCommon;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AppSetIdManagerImplCommon.getAppSetId$suspendImpl(this.this$0, this);
    }
}
