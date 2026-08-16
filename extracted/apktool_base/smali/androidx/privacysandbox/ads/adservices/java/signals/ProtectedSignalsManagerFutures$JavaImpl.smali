.class final Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl;
.super Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaImpl"
.end annotation


# instance fields
.field private final mProtectedSignalsManager:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl;->mProtectedSignalsManager:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;

    return-void
.end method

.method public static final synthetic access$getMProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl;)Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl;->mProtectedSignalsManager:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;

    return-object p0
.end method


# virtual methods
.method public updateSignalsAsync(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Lcom/google/common/util/concurrent/Z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Leg/j0;->a()Leg/M;

    move-result-object v0

    invoke-static {v0}, Leg/T;->a(Lyf/j;)Leg/S;

    move-result-object v1

    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lyf/f;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Leg/i;->b(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/Z;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->asListenableFuture$default(Leg/Z;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method
