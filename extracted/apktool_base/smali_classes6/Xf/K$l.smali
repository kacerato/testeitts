.class public final LXf/K$l;
.super LBf/l;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x98c,
        0x990
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "$this$sequence",
        "accumulator",
        "element"
    }
    nl = {
        0x98d,
        0x992
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$3"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/K;->c3(LXf/m;Ljava/lang/Object;LMf/p;)LXf/m;
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

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final synthetic h:LXf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic i:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "TR;TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;LXf/m;LMf/p;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "LXf/m<",
            "+TT;>;",
            "LMf/p<",
            "-TR;-TT;+TR;>;",
            "Lyf/f<",
            "-",
            "LXf/K$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/K$l;->g:Ljava/lang/Object;

    iput-object p2, p0, LXf/K$l;->h:LXf/m;

    iput-object p3, p0, LXf/K$l;->i:LMf/p;

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

    new-instance v0, LXf/K$l;

    iget-object v1, p0, LXf/K$l;->g:Ljava/lang/Object;

    iget-object v2, p0, LXf/K$l;->h:LXf/m;

    iget-object v3, p0, LXf/K$l;->i:LMf/p;

    invoke-direct {v0, v1, v2, v3, p2}, LXf/K$l;-><init>(Ljava/lang/Object;LXf/m;LMf/p;Lyf/f;)V

    iput-object p1, v0, LXf/K$l;->f:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, LXf/K$l;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, LXf/K$l;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, LXf/K$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LXf/o;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, LXf/K$l;->invoke(LXf/o;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, LXf/K$l;->f:Ljava/lang/Object;

    check-cast v0, LXf/o;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, LXf/K$l;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LXf/K$l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, p0, LXf/K$l;->b:Ljava/lang/Object;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object p1, v4

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

    iget-object p1, p0, LXf/K$l;->g:Ljava/lang/Object;

    iput-object v0, p0, LXf/K$l;->f:Ljava/lang/Object;

    iput v4, p0, LXf/K$l;->e:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    iget-object p1, p0, LXf/K$l;->g:Ljava/lang/Object;

    iget-object v2, p0, LXf/K$l;->h:LXf/m;

    invoke-interface {v2}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, LXf/K$l;->i:LMf/p;

    invoke-interface {v5, p1, v4}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v0, p0, LXf/K$l;->f:Ljava/lang/Object;

    iput-object p1, p0, LXf/K$l;->b:Ljava/lang/Object;

    iput-object v2, p0, LXf/K$l;->c:Ljava/lang/Object;

    invoke-static {v4}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, LXf/K$l;->d:Ljava/lang/Object;

    iput v3, p0, LXf/K$l;->e:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_5
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
