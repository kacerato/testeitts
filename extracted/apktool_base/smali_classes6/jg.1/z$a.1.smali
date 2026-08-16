.class public final Ljg/z$a;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    i = {}
    l = {
        0xd6,
        0xda,
        0xdb,
        0xe1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/z;->d(Leg/S;Lyf/j;Ljg/i;Ljg/D;Ljg/O;Ljava/lang/Object;)Leg/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Leg/S;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljg/O;

.field public final synthetic d:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Ljg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/D<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/O;Ljg/i;Ljg/D;Ljava/lang/Object;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/O;",
            "Ljg/i<",
            "+TT;>;",
            "Ljg/D<",
            "TT;>;TT;",
            "Lyf/f<",
            "-",
            "Ljg/z$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/z$a;->c:Ljg/O;

    iput-object p2, p0, Ljg/z$a;->d:Ljg/i;

    iput-object p3, p0, Ljg/z$a;->e:Ljg/D;

    iput-object p4, p0, Ljg/z$a;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 6
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

    new-instance p1, Ljg/z$a;

    iget-object v1, p0, Ljg/z$a;->c:Ljg/O;

    iget-object v2, p0, Ljg/z$a;->d:Ljg/i;

    iget-object v3, p0, Ljg/z$a;->e:Ljg/D;

    iget-object v4, p0, Ljg/z$a;->f:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljg/z$a;-><init>(Ljg/O;Ljg/i;Ljg/D;Ljava/lang/Object;Lyf/f;)V

    return-object p1
.end method

.method public final invoke(Leg/S;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Leg/S;
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
            "Leg/S;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ljg/z$a;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Ljg/z$a;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Ljg/z$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Leg/S;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Ljg/z$a;->invoke(Leg/S;Lyf/f;)Ljava/lang/Object;

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

    iget v1, p0, Ljg/z$a;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/z$a;->c:Ljg/O;

    sget-object v1, Ljg/O;->a:Ljg/O$a;

    invoke-virtual {v1}, Ljg/O$a;->c()Ljg/O;

    move-result-object v6

    if-ne p1, v6, :cond_4

    iget-object p1, p0, Ljg/z$a;->d:Ljg/i;

    iget-object v1, p0, Ljg/z$a;->e:Ljg/D;

    iput v5, p0, Ljg/z$a;->b:I

    invoke-interface {p1, v1, p0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_4
    iget-object p1, p0, Ljg/z$a;->c:Ljg/O;

    invoke-virtual {v1}, Ljg/O$a;->d()Ljg/O;

    move-result-object v1

    const/4 v5, 0x0

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Ljg/z$a;->e:Ljg/D;

    invoke-interface {p1}, Ljg/D;->y()Ljg/U;

    move-result-object p1

    new-instance v1, Ljg/z$a$a;

    invoke-direct {v1, v5}, Ljg/z$a$a;-><init>(Lyf/f;)V

    iput v4, p0, Ljg/z$a;->b:I

    invoke-static {p1, v1, p0}, Ljg/k;->u0(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Ljg/z$a;->d:Ljg/i;

    iget-object v1, p0, Ljg/z$a;->e:Ljg/D;

    iput v3, p0, Ljg/z$a;->b:I

    invoke-interface {p1, v1, p0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_6
    iget-object p1, p0, Ljg/z$a;->c:Ljg/O;

    iget-object v1, p0, Ljg/z$a;->e:Ljg/D;

    invoke-interface {v1}, Ljg/D;->y()Ljg/U;

    move-result-object v1

    invoke-interface {p1, v1}, Ljg/O;->a(Ljg/U;)Ljg/i;

    move-result-object p1

    invoke-static {p1}, Ljg/k;->g0(Ljg/i;)Ljg/i;

    move-result-object p1

    new-instance v1, Ljg/z$a$b;

    iget-object v3, p0, Ljg/z$a;->d:Ljg/i;

    iget-object v4, p0, Ljg/z$a;->e:Ljg/D;

    iget-object v6, p0, Ljg/z$a;->f:Ljava/lang/Object;

    invoke-direct {v1, v3, v4, v6, v5}, Ljg/z$a$b;-><init>(Ljg/i;Ljg/D;Ljava/lang/Object;Lyf/f;)V

    iput v2, p0, Ljg/z$a;->b:I

    invoke-static {p1, v1, p0}, Ljg/k;->A(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
