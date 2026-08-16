.class public final Ljg/B$r;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7"
    f = "Zip.kt"
    i = {}
    l = {
        0x134
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/B;->h(Ljava/lang/Iterable;LMf/q;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Ljg/j<",
        "-TR;>;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7\n*L\n1#1,332:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7\n*L\n1#1,332:1\n*E\n"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:[Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljg/j<",
            "-TR;>;[TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljg/i;LMf/q;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljg/i<",
            "TT;>;",
            "LMf/q<",
            "-",
            "Ljg/j<",
            "-TR;>;-[TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Ljg/B$r;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/B$r;->d:[Ljg/i;

    iput-object p2, p0, Ljg/B$r;->e:LMf/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Ljg/B$r;->c:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    iget-object v0, p0, Ljg/B$r;->d:[Ljg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v1, Ljg/B$r$a;

    iget-object v2, p0, Ljg/B$r;->d:[Ljg/i;

    invoke-direct {v1, v2}, Ljg/B$r$a;-><init>([Ljg/i;)V

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v2, Ljg/B$r$b;

    iget-object v3, p0, Ljg/B$r;->e:LMf/q;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljg/B$r$b;-><init>(LMf/q;Lyf/f;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p1, v0, v1, v2, p0}, Lkg/k;->a(Ljg/j;[Ljg/i;LMf/a;LMf/q;Lyf/f;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "*>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/B$r;

    iget-object v1, p0, Ljg/B$r;->d:[Ljg/i;

    iget-object v2, p0, Ljg/B$r;->e:LMf/q;

    invoke-direct {v0, v1, v2, p2}, Ljg/B$r;-><init>([Ljg/i;LMf/q;Lyf/f;)V

    iput-object p1, v0, Ljg/B$r;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljg/j;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Ljg/B$r;->z(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljg/B$r;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/B$r;->c:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    iget-object v1, p0, Ljg/B$r;->d:[Ljg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v3, Ljg/B$r$a;

    iget-object v4, p0, Ljg/B$r;->d:[Ljg/i;

    invoke-direct {v3, v4}, Ljg/B$r$a;-><init>([Ljg/i;)V

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v4, Ljg/B$r$b;

    iget-object v5, p0, Ljg/B$r;->e:LMf/q;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljg/B$r$b;-><init>(LMf/q;Lyf/f;)V

    iput v2, p0, Ljg/B$r;->b:I

    invoke-static {p1, v1, v3, v4, p0}, Lkg/k;->a(Ljg/j;[Ljg/i;LMf/a;LMf/q;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final z(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TR;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljg/B$r;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Ljg/B$r;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Ljg/B$r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
