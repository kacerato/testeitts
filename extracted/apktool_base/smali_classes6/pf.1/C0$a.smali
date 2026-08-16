.class public final Lpf/C0$a;
.super LBf/l;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "e",
        "bufferInitialCapacity",
        "gap",
        "skip",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap",
        "skip",
        "$this$iterator",
        "buffer",
        "e",
        "bufferInitialCapacity",
        "gap",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap"
    }
    nl = {
        0x23,
        0x2b,
        0x32,
        0x38,
        0x3d
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpf/C0;->b(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
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
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
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

.field public g:I

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic m:Z

.field public final synthetic n:Z


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "+TT;>;ZZ",
            "Lyf/f<",
            "-",
            "Lpf/C0$a;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lpf/C0$a;->j:I

    iput p2, p0, Lpf/C0$a;->k:I

    iput-object p3, p0, Lpf/C0$a;->l:Ljava/util/Iterator;

    iput-boolean p4, p0, Lpf/C0$a;->m:Z

    iput-boolean p5, p0, Lpf/C0$a;->n:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, LBf/l;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 8
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

    new-instance v7, Lpf/C0$a;

    iget v1, p0, Lpf/C0$a;->j:I

    iget v2, p0, Lpf/C0$a;->k:I

    iget-object v3, p0, Lpf/C0$a;->l:Ljava/util/Iterator;

    iget-boolean v4, p0, Lpf/C0$a;->m:Z

    iget-boolean v5, p0, Lpf/C0$a;->n:Z

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lpf/C0$a;-><init>(IILjava/util/Iterator;ZZLyf/f;)V

    iput-object p1, v7, Lpf/C0$a;->i:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(LXf/o;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lpf/C0$a;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lpf/C0$a;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lpf/C0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LXf/o;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lpf/C0$a;->invoke(LXf/o;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lpf/C0$a;->i:Ljava/lang/Object;

    check-cast v0, LXf/o;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lpf/C0$a;->h:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    check-cast v0, Lpf/w0;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v2, p0, Lpf/C0$a;->f:I

    iget v5, p0, Lpf/C0$a;->e:I

    iget-object v6, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    check-cast v6, Lpf/w0;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    iget v2, p0, Lpf/C0$a;->f:I

    iget v6, p0, Lpf/C0$a;->e:I

    iget-object v7, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    check-cast v9, Lpf/w0;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_4
    iget v2, p0, Lpf/C0$a;->f:I

    iget v3, p0, Lpf/C0$a;->e:I

    iget-object v4, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    :cond_5
    move p1, v2

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget p1, p0, Lpf/C0$a;->j:I

    const/16 v2, 0x400

    invoke-static {p1, v2}, LVf/u;->D(II)I

    move-result p1

    iget v2, p0, Lpf/C0$a;->k:I

    iget v9, p0, Lpf/C0$a;->j:I

    sub-int/2addr v2, v9

    if-ltz v2, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lpf/C0$a;->l:Ljava/util/Iterator;

    const/4 v5, 0x0

    move-object v12, v3

    move v3, p1

    move p1, v5

    move-object v5, v12

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-lez p1, :cond_8

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lpf/C0$a;->j:I

    if-ne v10, v11, :cond_7

    iput-object v0, p0, Lpf/C0$a;->i:Ljava/lang/Object;

    iput-object v5, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    iput-object v4, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    invoke-static {v9}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lpf/C0$a;->d:Ljava/lang/Object;

    iput v3, p0, Lpf/C0$a;->e:I

    iput v2, p0, Lpf/C0$a;->f:I

    iput p1, p0, Lpf/C0$a;->g:I

    iput v7, p0, Lpf/C0$a;->h:I

    invoke-virtual {v0, v5, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :goto_2
    iget-boolean v2, p0, Lpf/C0$a;->m:Z

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    iget v5, p0, Lpf/C0$a;->j:I

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v2

    :goto_3
    move v2, p1

    goto :goto_1

    :cond_a
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    iget-boolean v4, p0, Lpf/C0$a;->n:Z

    if-nez v4, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v7, p0, Lpf/C0$a;->j:I

    if-ne v4, v7, :cond_15

    :cond_b
    invoke-static {v0}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lpf/C0$a;->i:Ljava/lang/Object;

    invoke-static {v5}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    iput-object v8, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    iput-object v8, p0, Lpf/C0$a;->d:Ljava/lang/Object;

    iput v3, p0, Lpf/C0$a;->e:I

    iput v2, p0, Lpf/C0$a;->f:I

    iput p1, p0, Lpf/C0$a;->g:I

    iput v6, p0, Lpf/C0$a;->h:I

    invoke-virtual {v0, v5, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_15

    return-object v1

    :cond_c
    new-instance v6, Lpf/w0;

    invoke-direct {v6, p1}, Lpf/w0;-><init>(I)V

    iget-object v7, p0, Lpf/C0$a;->l:Ljava/util/Iterator;

    move-object v9, v6

    move v6, p1

    :cond_d
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Lpf/w0;->g(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lpf/w0;->l()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Lpf/b;->size()I

    move-result v10

    iget v11, p0, Lpf/C0$a;->j:I

    if-ge v10, v11, :cond_e

    invoke-virtual {v9, v11}, Lpf/w0;->j(I)Lpf/w0;

    move-result-object v9

    goto :goto_4

    :cond_e
    iget-boolean v10, p0, Lpf/C0$a;->m:Z

    if-eqz v10, :cond_f

    move-object v10, v9

    goto :goto_5

    :cond_f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    iput-object v0, p0, Lpf/C0$a;->i:Ljava/lang/Object;

    iput-object v9, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    iput-object v7, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    invoke-static {p1}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpf/C0$a;->d:Ljava/lang/Object;

    iput v6, p0, Lpf/C0$a;->e:I

    iput v2, p0, Lpf/C0$a;->f:I

    iput v5, p0, Lpf/C0$a;->h:I

    invoke-virtual {v0, v10, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    return-object v1

    :cond_10
    :goto_6
    iget p1, p0, Lpf/C0$a;->k:I

    invoke-virtual {v9, p1}, Lpf/w0;->m(I)V

    goto :goto_4

    :cond_11
    iget-boolean p1, p0, Lpf/C0$a;->n:Z

    if-eqz p1, :cond_15

    move v5, v6

    move-object v6, v9

    :goto_7
    invoke-virtual {v6}, Lpf/b;->size()I

    move-result p1

    iget v7, p0, Lpf/C0$a;->k:I

    if-le p1, v7, :cond_14

    iget-boolean p1, p0, Lpf/C0$a;->m:Z

    if-eqz p1, :cond_12

    move-object p1, v6

    goto :goto_8

    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    iput-object v0, p0, Lpf/C0$a;->i:Ljava/lang/Object;

    iput-object v6, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    iput-object v8, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    iput-object v8, p0, Lpf/C0$a;->d:Ljava/lang/Object;

    iput v5, p0, Lpf/C0$a;->e:I

    iput v2, p0, Lpf/C0$a;->f:I

    iput v4, p0, Lpf/C0$a;->h:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_13

    return-object v1

    :cond_13
    :goto_9
    iget p1, p0, Lpf/C0$a;->k:I

    invoke-virtual {v6, p1}, Lpf/w0;->m(I)V

    goto :goto_7

    :cond_14
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-static {v0}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpf/C0$a;->i:Ljava/lang/Object;

    invoke-static {v6}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpf/C0$a;->b:Ljava/lang/Object;

    iput-object v8, p0, Lpf/C0$a;->c:Ljava/lang/Object;

    iput-object v8, p0, Lpf/C0$a;->d:Ljava/lang/Object;

    iput v5, p0, Lpf/C0$a;->e:I

    iput v2, p0, Lpf/C0$a;->f:I

    iput v3, p0, Lpf/C0$a;->h:I

    invoke-virtual {v0, v6, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_15

    return-object v1

    :cond_15
    :goto_a
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
