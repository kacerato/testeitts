package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.common.AdData;
import android.adservices.customaudience.CustomAudience;
import android.adservices.customaudience.JoinCustomAudienceRequest;
import android.adservices.customaudience.LeaveCustomAudienceRequest;
import android.adservices.customaudience.TrustedBiddingData;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import eg.C13135q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public class CustomAudienceManagerImplCommon extends CustomAudienceManager {
    private final android.adservices.customaudience.CustomAudienceManager customAudienceManager;

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final Object fetchAndJoinCustomAudience(android.adservices.customaudience.CustomAudienceManager customAudienceManager, FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, yf.f<? super P0> fVar) {
                C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
                c13135q.O();
                customAudienceManager.fetchAndJoinCustomAudience(fetchAndJoinCustomAudienceRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
                Object D10 = c13135q.D();
                if (D10 == Af.d.l()) {
                    Bf.h.c(fVar);
                }
                return D10 == Af.d.l() ? D10 : P0.f98194a;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    public CustomAudienceManagerImplCommon(android.adservices.customaudience.CustomAudienceManager customAudienceManager) {
        M.p(customAudienceManager, "customAudienceManager");
        this.customAudienceManager = customAudienceManager;
    }

    private final List<AdData> convertAds(List<androidx.privacysandbox.ads.adservices.common.AdData> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<androidx.privacysandbox.ads.adservices.common.AdData> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    private final android.adservices.customaudience.CustomAudience convertCustomAudience(CustomAudience customAudience) {
        CustomAudience.Builder activationTime;
        CustomAudience.Builder ads;
        CustomAudience.Builder biddingLogicUri;
        CustomAudience.Builder buyer;
        CustomAudience.Builder dailyUpdateUri;
        CustomAudience.Builder expirationTime;
        CustomAudience.Builder name;
        CustomAudience.Builder trustedBiddingData;
        CustomAudience.Builder userBiddingSignals;
        android.adservices.customaudience.CustomAudience build;
        activationTime = s.a().setActivationTime(customAudience.getActivationTime());
        ads = activationTime.setAds(convertAds(customAudience.getAds()));
        biddingLogicUri = ads.setBiddingLogicUri(customAudience.getBiddingLogicUri());
        buyer = biddingLogicUri.setBuyer(customAudience.getBuyer().convertToAdServices$ads_adservices_release());
        dailyUpdateUri = buyer.setDailyUpdateUri(customAudience.getDailyUpdateUri());
        expirationTime = dailyUpdateUri.setExpirationTime(customAudience.getExpirationTime());
        name = expirationTime.setName(customAudience.getName());
        trustedBiddingData = name.setTrustedBiddingData(convertTrustedSignals(customAudience.getTrustedBiddingSignals()));
        AdSelectionSignals userBiddingSignals2 = customAudience.getUserBiddingSignals();
        userBiddingSignals = trustedBiddingData.setUserBiddingSignals(userBiddingSignals2 != null ? userBiddingSignals2.convertToAdServices$ads_adservices_release() : null);
        build = userBiddingSignals.build();
        M.o(build, "Builder()\n            .s\u2026s())\n            .build()");
        return build;
    }

    public final android.adservices.customaudience.JoinCustomAudienceRequest convertJoinRequest(JoinCustomAudienceRequest joinCustomAudienceRequest) {
        JoinCustomAudienceRequest.Builder customAudience;
        android.adservices.customaudience.JoinCustomAudienceRequest build;
        customAudience = r.a().setCustomAudience(convertCustomAudience(joinCustomAudienceRequest.getCustomAudience()));
        build = customAudience.build();
        M.o(build, "Builder()\n            .s\u2026ce))\n            .build()");
        return build;
    }

    public final android.adservices.customaudience.LeaveCustomAudienceRequest convertLeaveRequest(LeaveCustomAudienceRequest leaveCustomAudienceRequest) {
        LeaveCustomAudienceRequest.Builder buyer;
        LeaveCustomAudienceRequest.Builder name;
        android.adservices.customaudience.LeaveCustomAudienceRequest build;
        buyer = p.a().setBuyer(leaveCustomAudienceRequest.getBuyer().convertToAdServices$ads_adservices_release());
        name = buyer.setName(leaveCustomAudienceRequest.getName());
        build = name.build();
        M.o(build, "Builder()\n            .s\u2026ame)\n            .build()");
        return build;
    }

    private final android.adservices.customaudience.TrustedBiddingData convertTrustedSignals(TrustedBiddingData trustedBiddingData) {
        TrustedBiddingData.Builder trustedBiddingKeys;
        TrustedBiddingData.Builder trustedBiddingUri;
        android.adservices.customaudience.TrustedBiddingData build;
        if (trustedBiddingData == null) {
            return null;
        }
        trustedBiddingKeys = q.a().setTrustedBiddingKeys(trustedBiddingData.getTrustedBiddingKeys());
        trustedBiddingUri = trustedBiddingKeys.setTrustedBiddingUri(trustedBiddingData.getTrustedBiddingUri());
        build = trustedBiddingUri.build();
        return build;
    }

    public static Object fetchAndJoinCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, yf.f<? super P0> fVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
        }
        Object fetchAndJoinCustomAudience = Ext10Impl.Companion.fetchAndJoinCustomAudience(customAudienceManagerImplCommon.customAudienceManager, fetchAndJoinCustomAudienceRequest, fVar);
        return fetchAndJoinCustomAudience == Af.d.l() ? fetchAndJoinCustomAudience : P0.f98194a;
    }

    public static Object joinCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, JoinCustomAudienceRequest joinCustomAudienceRequest, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        customAudienceManagerImplCommon.getCustomAudienceManager().joinCustomAudience(customAudienceManagerImplCommon.convertJoinRequest(joinCustomAudienceRequest), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    public static Object leaveCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, LeaveCustomAudienceRequest leaveCustomAudienceRequest, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        customAudienceManagerImplCommon.getCustomAudienceManager().leaveCustomAudience(customAudienceManagerImplCommon.convertLeaveRequest(leaveCustomAudienceRequest), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    @Override
    public Object fetchAndJoinCustomAudience(FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, yf.f<? super P0> fVar) {
        return fetchAndJoinCustomAudience$suspendImpl(this, fetchAndJoinCustomAudienceRequest, fVar);
    }

    public final android.adservices.customaudience.CustomAudienceManager getCustomAudienceManager() {
        return this.customAudienceManager;
    }

    @Override
    public Object joinCustomAudience(JoinCustomAudienceRequest joinCustomAudienceRequest, yf.f<? super P0> fVar) {
        return joinCustomAudience$suspendImpl(this, joinCustomAudienceRequest, fVar);
    }

    @Override
    public Object leaveCustomAudience(LeaveCustomAudienceRequest leaveCustomAudienceRequest, yf.f<? super P0> fVar) {
        return leaveCustomAudience$suspendImpl(this, leaveCustomAudienceRequest, fVar);
    }
}
