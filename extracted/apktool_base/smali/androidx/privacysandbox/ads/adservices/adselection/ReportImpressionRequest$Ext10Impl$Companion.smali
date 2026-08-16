.class public final Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertReportImpressionRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionConfig()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    move-result-object v0

    sget-object v1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig$Companion;

    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig$Companion;->getEMPTY()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/V;->a()V

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/T;->a(J)Landroid/adservices/adselection/ReportImpressionRequest;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/V;->a()V

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionId()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionConfig()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/privacysandbox/ads/adservices/adselection/U;->a(JLandroid/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/ReportImpressionRequest;

    move-result-object p1

    :goto_0
    return-object p1
.end method
