.class public final Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext10OptIn;
.end annotation


# instance fields
.field private final adSelectionData:[B

.field private final adSelectionId:J


# direct methods
.method public constructor <init>(J)V
    .locals 6

    .line 1
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;-><init>(J[BILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionId:J

    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionData:[B

    return-void
.end method

.method public synthetic constructor <init>(J[BILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;-><init>(J[B)V

    return-void
.end method

.method public constructor <init>(Landroid/adservices/adselection/GetAdSelectionDataOutcome;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/D;->a(Landroid/adservices/adselection/GetAdSelectionDataOutcome;)J

    move-result-wide v0

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/E;->a(Landroid/adservices/adselection/GetAdSelectionDataOutcome;)[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;-><init>(J[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionId:J

    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;

    iget-wide v5, p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionData:[B

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionData:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getAdSelectionData()[B
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionData:[B

    return-object v0
.end method

.method public final getAdSelectionId()J
    .locals 2

    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionData:[B

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

    const-string v1, "GetAdSelectionDataOutcome: adSelectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adSelectionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataOutcome;->adSelectionData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
