.class public final Lkg/k$c$b;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2"
    f = "Combine.kt"
    i = {}
    l = {
        0x7f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/k$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Lnf/P0;",
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

.field public final synthetic c:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT1;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lyf/j;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic h:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "TT1;TT2;",
            "Lyf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/i;Lyf/j;Ljava/lang/Object;Lgg/D;Ljg/j;LMf/q;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/i<",
            "+TT1;>;",
            "Lyf/j;",
            "Ljava/lang/Object;",
            "Lgg/D<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljg/j<",
            "-TR;>;",
            "LMf/q<",
            "-TT1;-TT2;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lkg/k$c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/k$c$b;->c:Ljg/i;

    iput-object p2, p0, Lkg/k$c$b;->d:Lyf/j;

    iput-object p3, p0, Lkg/k$c$b;->e:Ljava/lang/Object;

    iput-object p4, p0, Lkg/k$c$b;->f:Lgg/D;

    iput-object p5, p0, Lkg/k$c$b;->g:Ljg/j;

    iput-object p6, p0, Lkg/k$c$b;->h:LMf/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 8
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

    new-instance p1, Lkg/k$c$b;

    iget-object v1, p0, Lkg/k$c$b;->c:Ljg/i;

    iget-object v2, p0, Lkg/k$c$b;->d:Lyf/j;

    iget-object v3, p0, Lkg/k$c$b;->e:Ljava/lang/Object;

    iget-object v4, p0, Lkg/k$c$b;->f:Lgg/D;

    iget-object v5, p0, Lkg/k$c$b;->g:Ljg/j;

    iget-object v6, p0, Lkg/k$c$b;->h:LMf/q;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lkg/k$c$b;-><init>(Ljg/i;Lyf/j;Ljava/lang/Object;Lgg/D;Ljg/j;LMf/q;Lyf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnf/P0;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lkg/k$c$b;->z(Lnf/P0;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkg/k$c$b;->b:I

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

    iget-object p1, p0, Lkg/k$c$b;->c:Ljg/i;

    new-instance v1, Lkg/k$c$b$a;

    iget-object v4, p0, Lkg/k$c$b;->d:Lyf/j;

    iget-object v5, p0, Lkg/k$c$b;->e:Ljava/lang/Object;

    iget-object v6, p0, Lkg/k$c$b;->f:Lgg/D;

    iget-object v7, p0, Lkg/k$c$b;->g:Ljg/j;

    iget-object v8, p0, Lkg/k$c$b;->h:LMf/q;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lkg/k$c$b$a;-><init>(Lyf/j;Ljava/lang/Object;Lgg/D;Ljg/j;LMf/q;)V

    iput v2, p0, Lkg/k$c$b;->b:I

    invoke-interface {p1, v1, p0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final z(Lnf/P0;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lnf/P0;
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
            "Lnf/P0;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkg/k$c$b;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lkg/k$c$b;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lkg/k$c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
