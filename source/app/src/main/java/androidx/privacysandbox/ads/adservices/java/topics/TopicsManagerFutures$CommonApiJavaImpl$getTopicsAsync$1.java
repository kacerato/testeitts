package androidx.privacysandbox.ads.adservices.java.topics;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1", f = "TopicsManagerFutures.kt", i = {}, l = {55}, m = "invokeSuspend", n = {}, s = {})
public final class TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1 extends q implements p<S, yf.f<? super GetTopicsResponse>, Object> {
    final GetTopicsRequest $request;
    int label;
    final TopicsManagerFutures.CommonApiJavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(TopicsManagerFutures.CommonApiJavaImpl commonApiJavaImpl, GetTopicsRequest getTopicsRequest, yf.f<? super TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = commonApiJavaImpl;
        this.$request = getTopicsRequest;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(this.this$0, this.$request, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super GetTopicsResponse> fVar) {
        return ((TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        TopicsManager topicsManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            topicsManager = this.this$0.mTopicsManager;
            GetTopicsRequest getTopicsRequest = this.$request;
            this.label = 1;
            obj = topicsManager.getTopics(getTopicsRequest, this);
            if (obj == l10) {
                return l10;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
        }
        return obj;
    }
}
