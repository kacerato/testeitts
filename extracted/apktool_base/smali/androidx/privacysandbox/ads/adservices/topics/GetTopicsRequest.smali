.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    }
.end annotation


# instance fields
.field private final adsSdkName:Ljava/lang/String;

.field private final shouldRecordObservation:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "adsSdkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->adsSdkName:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->adsSdkName:Ljava/lang/String;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->adsSdkName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation:Z

    iget-boolean p1, p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getAdsSdkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->adsSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->adsSdkName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final shouldRecordObservation()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetTopicsRequest: adsSdkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->adsSdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRecordObservation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->shouldRecordObservation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
