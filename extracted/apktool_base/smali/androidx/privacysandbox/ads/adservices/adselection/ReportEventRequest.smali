.class public final Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext8OptIn;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;,
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$ReportingDestination;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;

.field public static final FLAG_REPORTING_DESTINATION_BUYER:I = 0x2

.field public static final FLAG_REPORTING_DESTINATION_SELLER:I = 0x1


# instance fields
.field private final adSelectionId:J

.field private final eventData:Ljava/lang/String;

.field private final eventKey:Ljava/lang/String;

.field private final inputEvent:Landroid/view/InputEvent;

.field private final reportingDestinations:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    const-string v0, "eventKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v9}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;)V
    .locals 1

    const-string v0, "eventKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    .line 4
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    .line 6
    iput p5, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    .line 7
    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    if-lez p5, :cond_0

    const/4 p1, 0x3

    if-gt p5, p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid reporting destinations bitfield."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;ILkotlin/jvm/internal/x;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;)V

    return-void
.end method

.method public static synthetic getInputEvent$annotations()V
    .locals 0
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext10OptIn;
    .end annotation

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/ReportEventRequest;
    .locals 3

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
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl$Companion;->convertReportEventRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;)Landroid/adservices/adselection/ReportEventRequest;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl$Companion;->convertReportEventRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;)Landroid/adservices/adselection/ReportEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;

    iget-wide v5, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getAdSelectionId()J
    .locals 2

    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    return-wide v0
.end method

.method public final getEventData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputEvent()Landroid/view/InputEvent;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public final getReportingDestinations()I
    .locals 1

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportEventRequest: adSelectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reportingDestinations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "inputEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
