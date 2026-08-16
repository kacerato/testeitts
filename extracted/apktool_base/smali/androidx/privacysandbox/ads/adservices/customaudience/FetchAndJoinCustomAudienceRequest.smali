.class public final Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext10OptIn;
.end annotation


# instance fields
.field private final activationTime:Ljava/time/Instant;

.field private final expirationTime:Ljava/time/Instant;

.field private final fetchUri:Landroid/net/Uri;

.field private final name:Ljava/lang/String;

.field private final userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 9

    .line 1
    const-string v0, "fetchUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 2
    const-string v0, "fetchUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;)V
    .locals 9

    .line 3
    const-string v0, "fetchUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;)V
    .locals 9

    .line 4
    const-string v0, "fetchUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)V
    .locals 1

    const-string v0, "fetchUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    .line 9
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    .line 10
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;ILkotlin/jvm/internal/x;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)V

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
    .locals 2

    invoke-static {}, Landroidx/privacysandbox/ads/adservices/customaudience/I;->a()V

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/customaudience/H;->a(Landroid/net/Uri;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/customaudience/C;->a(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Ljava/lang/String;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/customaudience/D;->a(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/customaudience/E;->a(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->convertToAdServices$ads_adservices_release()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/customaudience/F;->a(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/customaudience/G;->a(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;

    move-result-object v0

    const-string v1, "Builder(fetchUri)\n      \u2026s())\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getActivationTime()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getExpirationTime()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getFetchUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserBiddingSignals()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchAndJoinCustomAudienceRequest: fetchUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->fetchUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->activationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->expirationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
