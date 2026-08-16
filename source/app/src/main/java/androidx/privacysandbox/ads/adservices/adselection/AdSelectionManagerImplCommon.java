package androidx.privacysandbox.ads.adservices.adselection;

import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import eg.C13135q;
import kotlin.jvm.internal.C14026x;
import nf.C14418j0;
import nf.P0;

public class AdSelectionManagerImplCommon extends AdSelectionManager {
    private final android.adservices.adselection.AdSelectionManager mAdSelectionManager;

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object getAdSelectionData(android.adservices.adselection.AdSelectionManager adSelectionManager, GetAdSelectionDataRequest getAdSelectionDataRequest, yf.f<? super GetAdSelectionDataOutcome> fVar) {
                AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1;
                int i10;
                if (fVar instanceof AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1) {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 = (AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1) fVar;
                    int i11 = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label = i11 - Integer.MIN_VALUE;
                        Object obj = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.result;
                        Object l10 = Af.d.l();
                        i10 = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.L$0 = adSelectionManager;
                            adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.L$1 = getAdSelectionDataRequest;
                            adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label = 1;
                            C13135q c13135q = new C13135q(Af.c.e(adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1), 1);
                            c13135q.O();
                            adSelectionManager.getAdSelectionData(getAdSelectionDataRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
                            obj = c13135q.D();
                            if (obj == Af.d.l()) {
                                Bf.h.c(adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1);
                            }
                            if (obj == l10) {
                                return l10;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            r.a(adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.L$0);
                            C14418j0.n(obj);
                        }
                        return new GetAdSelectionDataOutcome(C3756x.a(obj));
                    }
                }
                adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1(this, fVar);
                Object obj2 = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.result;
                Object l102 = Af.d.l();
                i10 = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label;
                if (i10 != 0) {
                }
                return new GetAdSelectionDataOutcome(C3756x.a(obj2));
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object persistAdSelectionResult(android.adservices.adselection.AdSelectionManager adSelectionManager, PersistAdSelectionResultRequest persistAdSelectionResultRequest, yf.f<? super AdSelectionOutcome> fVar) {
                AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1;
                int i10;
                if (fVar instanceof AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1) {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 = (AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1) fVar;
                    int i11 = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label = i11 - Integer.MIN_VALUE;
                        Object obj = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.result;
                        Object l10 = Af.d.l();
                        i10 = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.L$0 = adSelectionManager;
                            adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.L$1 = persistAdSelectionResultRequest;
                            adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label = 1;
                            C13135q c13135q = new C13135q(Af.c.e(adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1), 1);
                            c13135q.O();
                            adSelectionManager.persistAdSelectionResult(persistAdSelectionResultRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
                            obj = c13135q.D();
                            if (obj == Af.d.l()) {
                                Bf.h.c(adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1);
                            }
                            if (obj == l10) {
                                return l10;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            r.a(adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.L$0);
                            C14418j0.n(obj);
                        }
                        return new AdSelectionOutcome(C3751s.a(obj));
                    }
                }
                adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1(this, fVar);
                Object obj2 = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.result;
                Object l102 = Af.d.l();
                i10 = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label;
                if (i10 != 0) {
                }
                return new AdSelectionOutcome(C3751s.a(obj2));
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object selectAds(android.adservices.adselection.AdSelectionManager adSelectionManager, AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, yf.f<? super AdSelectionOutcome> fVar) {
                AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1;
                int i10;
                if (fVar instanceof AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1) {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 = (AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1) fVar;
                    int i11 = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label = i11 - Integer.MIN_VALUE;
                        Object obj = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.result;
                        Object l10 = Af.d.l();
                        i10 = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.L$0 = adSelectionManager;
                            adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.L$1 = adSelectionFromOutcomesConfig;
                            adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label = 1;
                            C13135q c13135q = new C13135q(Af.c.e(adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1), 1);
                            c13135q.O();
                            adSelectionManager.selectAds(adSelectionFromOutcomesConfig.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
                            obj = c13135q.D();
                            if (obj == Af.d.l()) {
                                Bf.h.c(adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1);
                            }
                            if (obj == l10) {
                                return l10;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            r.a(adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.L$0);
                            C14418j0.n(obj);
                        }
                        return new AdSelectionOutcome(C3751s.a(obj));
                    }
                }
                adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1(this, fVar);
                Object obj2 = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.result;
                Object l102 = Af.d.l();
                i10 = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label;
                if (i10 != 0) {
                }
                return new AdSelectionOutcome(C3751s.a(obj2));
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    public static final class Ext8Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            public final Object reportEvent(android.adservices.adselection.AdSelectionManager adSelectionManager, ReportEventRequest reportEventRequest, yf.f<? super P0> fVar) {
                C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
                c13135q.O();
                adSelectionManager.reportEvent(reportEventRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
                Object D10 = c13135q.D();
                if (D10 == Af.d.l()) {
                    Bf.h.c(fVar);
                }
                return D10 == Af.d.l() ? D10 : P0.f98194a;
            }

            public final Object updateAdCounterHistogram(android.adservices.adselection.AdSelectionManager adSelectionManager, UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, yf.f<? super P0> fVar) {
                C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
                c13135q.O();
                adSelectionManager.updateAdCounterHistogram(updateAdCounterHistogramRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
                Object D10 = c13135q.D();
                if (D10 == Af.d.l()) {
                    Bf.h.c(fVar);
                }
                return D10 == Af.d.l() ? D10 : P0.f98194a;
            }

            private Companion() {
            }
        }

        private Ext8Impl() {
        }
    }

    public AdSelectionManagerImplCommon(android.adservices.adselection.AdSelectionManager mAdSelectionManager) {
        kotlin.jvm.internal.M.p(mAdSelectionManager, "mAdSelectionManager");
        this.mAdSelectionManager = mAdSelectionManager;
    }

    public static Object getAdSelectionData$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, GetAdSelectionDataRequest getAdSelectionDataRequest, yf.f<? super GetAdSelectionDataOutcome> fVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) {
            return Ext10Impl.Companion.getAdSelectionData(adSelectionManagerImplCommon.mAdSelectionManager, getAdSelectionDataRequest, fVar);
        }
        throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
    }

    public static Object persistAdSelectionResult$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, PersistAdSelectionResultRequest persistAdSelectionResultRequest, yf.f<? super AdSelectionOutcome> fVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) {
            return Ext10Impl.Companion.persistAdSelectionResult(adSelectionManagerImplCommon.mAdSelectionManager, persistAdSelectionResultRequest, fVar);
        }
        throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
    }

    public static Object reportEvent$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, ReportEventRequest reportEventRequest, yf.f<? super P0> fVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 8 && adServicesInfo.extServicesVersionS() < 9) {
            throw new UnsupportedOperationException("API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9");
        }
        Object reportEvent = Ext8Impl.Companion.reportEvent(adSelectionManagerImplCommon.mAdSelectionManager, reportEventRequest, fVar);
        return reportEvent == Af.d.l() ? reportEvent : P0.f98194a;
    }

    public static Object reportImpression$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, ReportImpressionRequest reportImpressionRequest, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        adSelectionManagerImplCommon.getMAdSelectionManager().reportImpression(reportImpressionRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object selectAds$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, AdSelectionConfig adSelectionConfig, yf.f<? super AdSelectionOutcome> fVar) {
        AdSelectionManagerImplCommon$selectAds$1 adSelectionManagerImplCommon$selectAds$1;
        int i10;
        if (fVar instanceof AdSelectionManagerImplCommon$selectAds$1) {
            adSelectionManagerImplCommon$selectAds$1 = (AdSelectionManagerImplCommon$selectAds$1) fVar;
            int i11 = adSelectionManagerImplCommon$selectAds$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adSelectionManagerImplCommon$selectAds$1.label = i11 - Integer.MIN_VALUE;
                Object obj = adSelectionManagerImplCommon$selectAds$1.result;
                Object l10 = Af.d.l();
                i10 = adSelectionManagerImplCommon$selectAds$1.label;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    android.adservices.adselection.AdSelectionConfig convertToAdServices$ads_adservices_release = adSelectionConfig.convertToAdServices$ads_adservices_release();
                    adSelectionManagerImplCommon$selectAds$1.label = 1;
                    obj = adSelectionManagerImplCommon.selectAdsInternal(convertToAdServices$ads_adservices_release, adSelectionManagerImplCommon$selectAds$1);
                    if (obj == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                return new AdSelectionOutcome(C3751s.a(obj));
            }
        }
        adSelectionManagerImplCommon$selectAds$1 = new AdSelectionManagerImplCommon$selectAds$1(adSelectionManagerImplCommon, fVar);
        Object obj2 = adSelectionManagerImplCommon$selectAds$1.result;
        Object l102 = Af.d.l();
        i10 = adSelectionManagerImplCommon$selectAds$1.label;
        if (i10 != 0) {
        }
        return new AdSelectionOutcome(C3751s.a(obj2));
    }

    public final Object selectAdsInternal(android.adservices.adselection.AdSelectionConfig adSelectionConfig, yf.f<? super android.adservices.adselection.AdSelectionOutcome> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        getMAdSelectionManager().selectAds(adSelectionConfig, new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    public static Object updateAdCounterHistogram$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, yf.f<? super P0> fVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 8 && adServicesInfo.extServicesVersionS() < 9) {
            throw new UnsupportedOperationException("API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9");
        }
        Object updateAdCounterHistogram = Ext8Impl.Companion.updateAdCounterHistogram(adSelectionManagerImplCommon.mAdSelectionManager, updateAdCounterHistogramRequest, fVar);
        return updateAdCounterHistogram == Af.d.l() ? updateAdCounterHistogram : P0.f98194a;
    }

    @Override
    public Object getAdSelectionData(GetAdSelectionDataRequest getAdSelectionDataRequest, yf.f<? super GetAdSelectionDataOutcome> fVar) {
        return getAdSelectionData$suspendImpl(this, getAdSelectionDataRequest, fVar);
    }

    public final android.adservices.adselection.AdSelectionManager getMAdSelectionManager() {
        return this.mAdSelectionManager;
    }

    @Override
    public Object persistAdSelectionResult(PersistAdSelectionResultRequest persistAdSelectionResultRequest, yf.f<? super AdSelectionOutcome> fVar) {
        return persistAdSelectionResult$suspendImpl(this, persistAdSelectionResultRequest, fVar);
    }

    @Override
    public Object reportEvent(ReportEventRequest reportEventRequest, yf.f<? super P0> fVar) {
        return reportEvent$suspendImpl(this, reportEventRequest, fVar);
    }

    @Override
    public Object reportImpression(ReportImpressionRequest reportImpressionRequest, yf.f<? super P0> fVar) {
        return reportImpression$suspendImpl(this, reportImpressionRequest, fVar);
    }

    @Override
    public Object selectAds(AdSelectionConfig adSelectionConfig, yf.f<? super AdSelectionOutcome> fVar) {
        return selectAds$suspendImpl(this, adSelectionConfig, fVar);
    }

    @Override
    public Object updateAdCounterHistogram(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, yf.f<? super P0> fVar) {
        return updateAdCounterHistogram$suspendImpl(this, updateAdCounterHistogramRequest, fVar);
    }

    @Override
    public Object selectAds(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, yf.f<? super AdSelectionOutcome> fVar) {
        return selectAds$suspendImpl(this, adSelectionFromOutcomesConfig, fVar);
    }

    public static Object selectAds$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, yf.f<? super AdSelectionOutcome> fVar) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            throw new UnsupportedOperationException("API is not available. Min version is API 31 ext 10");
        }
        return Ext10Impl.Companion.selectAds(adSelectionManagerImplCommon.mAdSelectionManager, adSelectionFromOutcomesConfig, fVar);
    }
}
