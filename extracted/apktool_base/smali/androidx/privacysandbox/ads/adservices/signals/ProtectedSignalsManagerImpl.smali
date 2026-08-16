.class public Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;
.super Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtectedSignalsManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,55:1\n314#2,11:56\n*S KotlinDebug\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n*L\n40#1:56,11\n*E\n"
.end annotation


# instance fields
.field private final protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;


# direct methods
.method public constructor <init>(Landroid/adservices/signals/ProtectedSignalsManager;)V
    .locals 1

    const-string v0, "protectedSignalsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;

    return-void
.end method

.method public static final synthetic access$convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;)Landroid/adservices/signals/ProtectedSignalsManager;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;

    return-object p0
.end method

.method private final convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;
    .locals 1

    invoke-static {}, Lf/e;->a()V

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;->getUpdateUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lf/d;->a(Landroid/net/Uri;)Landroid/adservices/signals/UpdateSignalsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lf/c;->a(Landroid/adservices/signals/UpdateSignalsRequest$Builder;)Landroid/adservices/signals/UpdateSignalsRequest;

    move-result-object p1

    const-string v0, "Builder(request.updateUri).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic updateSignals$suspendImpl(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
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

    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->access$getProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;)Landroid/adservices/signals/ProtectedSignalsManager;

    move-result-object v1

    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->access$convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;

    move-result-object p0

    new-instance p1, Landroidx/privacysandbox/ads/adservices/adid/h;

    invoke-direct {p1}, Landroidx/privacysandbox/ads/adservices/adid/h;-><init>()V

    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lyf/f;)Landroid/os/OutcomeReceiver;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lf/b;->a(Landroid/adservices/signals/ProtectedSignalsManager;Landroid/adservices/signals/UpdateSignalsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

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


# virtual methods
.method public updateSignals(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->updateSignals$suspendImpl(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
