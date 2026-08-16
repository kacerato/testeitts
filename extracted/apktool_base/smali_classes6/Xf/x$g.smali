.class public final LXf/x$g;
.super LBf/l;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1"
    f = "Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xb2
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "buffer",
        "last",
        "value",
        "j"
    }
    nl = {
        0xb4
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/x;->E(LXf/m;LTf/f;)LXf/m;
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
        "-TT;>;",
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

.field public final synthetic h:LXf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic i:LTf/f;


# direct methods
.method public constructor <init>(LXf/m;LTf/f;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "+TT;>;",
            "LTf/f;",
            "Lyf/f<",
            "-",
            "LXf/x$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/x$g;->h:LXf/m;

    iput-object p2, p0, LXf/x$g;->i:LTf/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LBf/l;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 3
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

    new-instance v0, LXf/x$g;

    iget-object v1, p0, LXf/x$g;->h:LXf/m;

    iget-object v2, p0, LXf/x$g;->i:LTf/f;

    invoke-direct {v0, v1, v2, p2}, LXf/x$g;-><init>(LXf/m;LTf/f;Lyf/f;)V

    iput-object p1, v0, LXf/x$g;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(LXf/o;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LXf/x$g;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, LXf/x$g;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, LXf/x$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LXf/o;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, LXf/x$g;->invoke(LXf/o;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, LXf/x$g;->g:Ljava/lang/Object;

    check-cast v0, LXf/o;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, LXf/x$g;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LXf/x$g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LXf/x$g;->h:LXf/m;

    invoke-static {p1}, LXf/K;->J3(LXf/m;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    :cond_2
    :goto_0
    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LXf/x$g;->i:LTf/f;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, LTf/f;->m(I)I

    move-result p1

    invoke-static {v2}, Lpf/M;->Q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    invoke-interface {v2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    iput-object v0, p0, LXf/x$g;->g:Ljava/lang/Object;

    iput-object v2, p0, LXf/x$g;->b:Ljava/lang/Object;

    invoke-static {v4}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, LXf/x$g;->c:Ljava/lang/Object;

    invoke-static {v5}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, LXf/x$g;->d:Ljava/lang/Object;

    iput p1, p0, LXf/x$g;->e:I

    iput v3, p0, LXf/x$g;->f:I

    invoke-virtual {v0, v5, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_4
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
