.class public Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;
.super Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdSelectionManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,230:1\n314#2,11:231\n314#2,11:242\n*S KotlinDebug\n*F\n+ 1 AdSelectionManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon\n*L\n50#1:231,11\n70#1:242,11\n*E\n"
.end annotation


# instance fields
.field private final mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;


# direct methods
.method public constructor <init>(Landroid/adservices/adselection/AdSelectionManager;)V
    .locals 1

    const-string v0, "mAdSelectionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    return-void
.end method

.method public static final synthetic access$selectAdsInternal(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroid/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->selectAdsInternal(Landroid/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAdSelectionData$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "API is not available. Min version is API 31 ext 10"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion;->getAdSelectionData(Landroid/adservices/adselection/AdSelectionManager;Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic persistAdSelectionResult$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/PersistAdSelectionResultRequest;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/PersistAdSelectionResultRequest;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "API is not available. Min version is API 31 ext 10"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion;->persistAdSelectionResult(Landroid/adservices/adselection/AdSelectionManager;Landroidx/privacysandbox/ads/adservices/adselection/PersistAdSelectionResultRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic reportEvent$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl$Companion;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl$Companion;->reportEvent(Landroid/adservices/adselection/AdSelectionManager;Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static synthetic reportImpression$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Leg/q;

    invoke-static {p2}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {v0}, Leg/q;->O()V

    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->getMAdSelectionManager()Landroid/adservices/adselection/AdSelectionManager;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/ReportImpressionRequest;

    move-result-object p1

    new-instance v1, Landroidx/privacysandbox/ads/adservices/adid/h;

    invoke-direct {v1}, Landroidx/privacysandbox/ads/adservices/adid/h;-><init>()V

    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lyf/f;)Landroid/os/OutcomeReceiver;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Landroidx/privacysandbox/ads/adservices/adselection/t;->a(Landroid/adservices/adselection/AdSelectionManager;Landroid/adservices/adselection/ReportImpressionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_0
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static synthetic selectAds$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;

    iget v1, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;

    invoke-direct {v0, p0, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;-><init>(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->result:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    iput v3, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->selectAdsInternal(Landroid/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p2}, Landroidx/privacysandbox/ads/adservices/adselection/s;->a(Ljava/lang/Object;)Landroid/adservices/adselection/AdSelectionOutcome;

    move-result-object p0

    new-instance p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;

    invoke-direct {p1, p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;-><init>(Landroid/adservices/adselection/AdSelectionOutcome;)V

    return-object p1
.end method

.method public static synthetic selectAds$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "API is not available. Min version is API 31 ext 10"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext10Impl$Companion;->selectAds(Landroid/adservices/adselection/AdSelectionManager;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final selectAdsInternal(Landroid/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/AdSelectionConfig;",
            "Lyf/f<",
            "-",
            "Landroid/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Leg/q;

    invoke-static {p2}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {v0}, Leg/q;->O()V

    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->getMAdSelectionManager()Landroid/adservices/adselection/AdSelectionManager;

    move-result-object v1

    new-instance v2, Landroidx/privacysandbox/ads/adservices/adid/h;

    invoke-direct {v2}, Landroidx/privacysandbox/ads/adservices/adid/h;-><init>()V

    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lyf/f;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Landroidx/privacysandbox/ads/adservices/adselection/u;->a(Landroid/adservices/adselection/AdSelectionManager;Landroid/adservices/adselection/AdSelectionConfig;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p1
.end method

.method public static synthetic updateAdCounterHistogram$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl$Companion;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$Ext8Impl$Companion;->updateAdCounterHistogram(Landroid/adservices/adselection/AdSelectionManager;Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method


# virtual methods
.method public getAdSelectionData(Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->getAdSelectionData$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMAdSelectionManager()Landroid/adservices/adselection/AdSelectionManager;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    return-object v0
.end method

.method public persistAdSelectionResult(Landroidx/privacysandbox/ads/adservices/adselection/PersistAdSelectionResultRequest;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/PersistAdSelectionResultRequest;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->persistAdSelectionResult$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/PersistAdSelectionResultRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reportEvent(Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->reportEvent$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reportImpression(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->reportImpression$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public selectAds(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->selectAds$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public selectAds(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->selectAds$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionFromOutcomesConfig;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateAdCounterHistogram(Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->updateAdCounterHistogram$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
