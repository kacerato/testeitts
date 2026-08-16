.class public final Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
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
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
    .locals 3
    .annotation runtime LLf/o;
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v0

    const/16 v1, 0xc

    const-string v2, "ProtectedSignalsManager"

    if-lt v0, v1, :cond_0

    const-string v0, "Adservices version 12 detected, obtaining ProtectedSignalsManagerImpl."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;

    invoke-static {p1}, Lf/a;->a(Landroid/content/Context;)Landroid/adservices/signals/ProtectedSignalsManager;

    move-result-object p1

    const-string v1, "get(context)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;-><init>(Landroid/adservices/signals/ProtectedSignalsManager;)V

    goto :goto_0

    :cond_0
    const-string p1, "Adservices less than 12, returning null for ProtectedSignalsManager.obtain."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
