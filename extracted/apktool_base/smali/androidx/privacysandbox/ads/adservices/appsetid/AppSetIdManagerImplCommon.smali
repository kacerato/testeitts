.class public Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;
.super Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppSetIdManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetIdManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,53:1\n314#2,11:54\n*S KotlinDebug\n*F\n+ 1 AppSetIdManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon\n*L\n42#1:54,11\n*E\n"
.end annotation


# instance fields
.field private final mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;


# direct methods
.method public constructor <init>(Landroid/adservices/appsetid/AppSetIdManager;)V
    .locals 1

    const-string v0, "mAppSetIdManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    return-void
.end method

.method public static final synthetic access$getAppSetIdAsyncInternal(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetIdAsyncInternal(Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;)Landroid/adservices/appsetid/AppSetIdManager;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    return-object p0
.end method

.method private final convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;
    .locals 3

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/f;->a(Landroid/adservices/appsetid/AppSetId;)I

    move-result v0

    const-string v1, "response.id"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/g;->a(Landroid/adservices/appsetid/AppSetId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v2}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/g;->a(Landroid/adservices/appsetid/AppSetId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static synthetic getAppSetId$suspendImpl(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;

    iget v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;

    invoke-direct {v0, p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;-><init>(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lyf/f;)V

    :goto_0
    iget-object p1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->result:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    invoke-direct {p0, v0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetIdAsyncInternal(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/e;->a(Ljava/lang/Object;)Landroid/adservices/appsetid/AppSetId;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    move-result-object p0

    return-object p0
.end method

.method private final getAppSetIdAsyncInternal(Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Landroid/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Leg/q;

    invoke-static {p1}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {v0}, Leg/q;->O()V

    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;)Landroid/adservices/appsetid/AppSetIdManager;

    move-result-object v1

    new-instance v2, Landroidx/privacysandbox/ads/adservices/adid/h;

    invoke-direct {v2}, Landroidx/privacysandbox/ads/adservices/adid/h;-><init>()V

    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lyf/f;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/privacysandbox/ads/adservices/appsetid/d;->a(Landroid/adservices/appsetid/AppSetIdManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAppSetId(Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetId$suspendImpl(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
