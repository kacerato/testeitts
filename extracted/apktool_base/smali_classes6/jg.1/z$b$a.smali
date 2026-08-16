.class public final Ljg/z$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/z$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/j;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Ljg/E<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Leg/S;

.field public final synthetic d:Leg/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/y<",
            "Ljg/U<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;Leg/S;Leg/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljg/E<",
            "TT;>;>;",
            "Leg/S;",
            "Leg/y<",
            "Ljg/U<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/z$b$a;->b:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, Ljg/z$b$a;->c:Leg/S;

    iput-object p3, p0, Ljg/z$b$a;->d:Leg/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p2, p0, Ljg/z$b$a;->b:Lkotlin/jvm/internal/m0$h;

    iget-object p2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, Ljg/E;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljg/E;->setValue(Ljava/lang/Object;)V

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, Ljg/z$b$a;->c:Leg/S;

    iget-object v0, p0, Ljg/z$b$a;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v1, p0, Ljg/z$b$a;->d:Leg/y;

    invoke-static {p1}, Ljg/W;->a(Ljava/lang/Object;)Ljg/E;

    move-result-object p1

    new-instance v2, Ljg/G;

    invoke-interface {p2}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object p2

    invoke-static {p2}, Leg/N0;->B(Lyf/j;)Leg/K0;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Ljg/G;-><init>(Ljg/U;Leg/K0;)V

    invoke-interface {v1, v2}, Leg/y;->n(Ljava/lang/Object;)Z

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_1
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
