.class public final LXf/K$m;
.super LBf/l;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x9a8,
        0x9ad
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "$this$sequence",
        "accumulator",
        "element",
        "index"
    }
    nl = {
        0x9a9,
        0x9af
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$3",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/K;->d3(LXf/m;Ljava/lang/Object;LMf/q;)LXf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/l;",
        "LMf/p<",
        "LXf/o<",
        "-TR;>;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final synthetic i:LXf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic j:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljava/lang/Integer;",
            "TR;TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;LXf/m;LMf/q;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "LXf/m<",
            "+TT;>;",
            "LMf/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TR;-TT;+TR;>;",
            "Lyf/f<",
            "-",
            "LXf/K$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/K$m;->h:Ljava/lang/Object;

    iput-object p2, p0, LXf/K$m;->i:LXf/m;

    iput-object p3, p0, LXf/K$m;->j:LMf/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LBf/l;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 4
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

    new-instance v0, LXf/K$m;

    iget-object v1, p0, LXf/K$m;->h:Ljava/lang/Object;

    iget-object v2, p0, LXf/K$m;->i:LXf/m;

    iget-object v3, p0, LXf/K$m;->j:LMf/q;

    invoke-direct {v0, v1, v2, v3, p2}, LXf/K$m;-><init>(Ljava/lang/Object;LXf/m;LMf/q;Lyf/f;)V

    iput-object p1, v0, LXf/K$m;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(LXf/o;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-TR;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LXf/K$m;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, LXf/K$m;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, LXf/K$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LXf/o;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, LXf/K$m;->invoke(LXf/o;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, LXf/K$m;->g:Ljava/lang/Object;

    check-cast v0, LXf/o;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, LXf/K$m;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, p0, LXf/K$m;->e:I

    iget-object v4, p0, LXf/K$m;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, LXf/K$m;->b:Ljava/lang/Object;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LXf/K$m;->h:Ljava/lang/Object;

    iput-object v0, p0, LXf/K$m;->g:Ljava/lang/Object;

    iput v4, p0, LXf/K$m;->f:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    iget-object p1, p0, LXf/K$m;->h:Ljava/lang/Object;

    iget-object v2, p0, LXf/K$m;->i:LXf/m;

    invoke-interface {v2}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v8, v4

    move-object v4, v2

    move v2, v8

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, LXf/K$m;->j:LMf/q;

    add-int/lit8 v7, v2, 0x1

    if-gez v2, :cond_4

    invoke-static {}, Lpf/H;->b0()V

    :cond_4
    invoke-static {v2}, LBf/b;->f(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, p1, v5}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, LXf/K$m;->g:Ljava/lang/Object;

    iput-object p1, p0, LXf/K$m;->b:Ljava/lang/Object;

    iput-object v4, p0, LXf/K$m;->c:Ljava/lang/Object;

    invoke-static {v5}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, LXf/K$m;->d:Ljava/lang/Object;

    iput v7, p0, LXf/K$m;->e:I

    iput v3, p0, LXf/K$m;->f:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move v2, v7

    goto :goto_1

    :cond_6
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
