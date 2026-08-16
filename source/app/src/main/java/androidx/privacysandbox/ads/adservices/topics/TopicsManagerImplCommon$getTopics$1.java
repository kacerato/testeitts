package androidx.privacysandbox.ads.adservices.topics;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon", f = "TopicsManagerImplCommon.kt", i = {}, l = {40}, m = "getTopics$suspendImpl", n = {}, s = {})
public final class TopicsManagerImplCommon$getTopics$1 extends Bf.d {
    Object L$0;
    int label;
    Object result;
    final TopicsManagerImplCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManagerImplCommon$getTopics$1(TopicsManagerImplCommon topicsManagerImplCommon, yf.f<? super TopicsManagerImplCommon$getTopics$1> fVar) {
        super(fVar);
        this.this$0 = topicsManagerImplCommon;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TopicsManagerImplCommon.getTopics$suspendImpl(this.this$0, null, this);
    }
}
