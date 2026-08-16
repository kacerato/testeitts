.class public final Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl;
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
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertReportEventRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;)Landroid/adservices/adselection/ReportEventRequest;
    .locals 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/S;->a()V

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->getAdSelectionId()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->getEventKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->getEventData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->getReportingDestinations()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/privacysandbox/ads/adservices/adselection/Q;->a(JLjava/lang/String;Ljava/lang/String;I)Landroid/adservices/adselection/ReportEventRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->getInputEvent()Landroid/view/InputEvent;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/O;->a(Landroid/adservices/adselection/ReportEventRequest$Builder;Landroid/view/InputEvent;)Landroid/adservices/adselection/ReportEventRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/P;->a(Landroid/adservices/adselection/ReportEventRequest$Builder;)Landroid/adservices/adselection/ReportEventRequest;

    move-result-object p1

    const-string v0, "Builder(\n               \u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
