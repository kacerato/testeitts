.class public final Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final signals:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/common/AdSelectionSignals;
    .locals 2

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/common/k;->a(Ljava/lang/String;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object v0

    const-string v1, "fromString(signals)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getSignals()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdSelectionSignals: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->signals:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
