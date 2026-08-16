.class public final Lkg/k$a;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
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
        0x2
    }
    l = {
        0x36,
        0x4c,
        0x4f
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/k;->a(Ljg/j;[Ljg/i;LMf/a;LMf/q;Lyf/f;)Ljava/lang/Object;
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
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:[Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic i:LMf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field public final synthetic j:LMf/q;
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

.field public final synthetic k:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljg/i;LMf/a;LMf/q;Ljg/j;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljg/i<",
            "+TT;>;",
            "LMf/a<",
            "[TT;>;",
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
            "Ljg/j<",
            "-TR;>;",
            "Lyf/f<",
            "-",
            "Lkg/k$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/k$a;->h:[Ljg/i;

    iput-object p2, p0, Lkg/k$a;->i:LMf/a;

    iput-object p3, p0, Lkg/k$a;->j:LMf/q;

    iput-object p4, p0, Lkg/k$a;->k:Ljg/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 7
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

    new-instance v6, Lkg/k$a;

    iget-object v1, p0, Lkg/k$a;->h:[Ljg/i;

    iget-object v2, p0, Lkg/k$a;->i:LMf/a;

    iget-object v3, p0, Lkg/k$a;->j:LMf/q;

    iget-object v4, p0, Lkg/k$a;->k:Ljg/j;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkg/k$a;-><init>([Ljg/i;LMf/a;LMf/q;Ljg/j;Lyf/f;)V

    iput-object p1, v6, Lkg/k$a;->g:Ljava/lang/Object;

    return-object v6
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
    invoke-virtual {p0, p1, p2}, Lkg/k$a;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lkg/k$a;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lkg/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Leg/S;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lkg/k$a;->invoke(Leg/S;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkg/k$a;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget v2, v0, Lkg/k$a;->e:I

    iget v6, v0, Lkg/k$a;->d:I

    iget-object v7, v0, Lkg/k$a;->c:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkg/k$a;->b:Ljava/lang/Object;

    check-cast v8, Lgg/l;

    iget-object v9, v0, Lkg/k$a;->g:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move/from16 v21, v2

    move-object v2, v7

    move-object v7, v8

    goto/16 :goto_4

    :cond_2
    iget v2, v0, Lkg/k$a;->e:I

    iget v6, v0, Lkg/k$a;->d:I

    iget-object v7, v0, Lkg/k$a;->c:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lkg/k$a;->b:Ljava/lang/Object;

    check-cast v8, Lgg/l;

    iget-object v9, v0, Lkg/k$a;->g:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lgg/p;

    invoke-virtual {v10}, Lgg/p;->o()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v22, v8

    move v8, v2

    move-object v2, v7

    move-object/from16 v7, v22

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object v2, v0, Lkg/k$a;->g:Ljava/lang/Object;

    check-cast v2, Leg/S;

    iget-object v6, v0, Lkg/k$a;->h:[Ljg/i;

    array-length v12, v6

    if-nez v12, :cond_4

    sget-object v1, Lnf/P0;->a:Lnf/P0;

    return-object v1

    :cond_4
    new-array v13, v12, [Ljava/lang/Object;

    sget-object v7, Lkg/s;->b:Lmg/T;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v13

    invoke-static/range {v6 .. v11}, Lpf/q;->V1([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v12, v7, v7, v6, v7}, Lgg/o;->d(ILgg/i;LMf/l;ILjava/lang/Object;)Lgg/l;

    move-result-object v20

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/16 v21, 0x0

    move/from16 v10, v21

    :goto_1
    if-ge v10, v12, :cond_5

    new-instance v9, Lkg/k$a$a;

    iget-object v15, v0, Lkg/k$a;->h:[Ljg/i;

    const/16 v19, 0x0

    move-object v14, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v20

    invoke-direct/range {v14 .. v19}, Lkg/k$a$a;-><init>([Ljg/i;ILjava/util/concurrent/atomic/AtomicInteger;Lgg/l;Lyf/f;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    move v10, v14

    move-object v14, v11

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    add-int/lit8 v10, v16, 0x1

    move-object v11, v14

    goto :goto_1

    :cond_5
    new-array v2, v12, [B

    move v6, v12

    move-object/from16 v7, v20

    :goto_2
    add-int/lit8 v8, v21, 0x1

    int-to-byte v8, v8

    iput-object v13, v0, Lkg/k$a;->g:Ljava/lang/Object;

    iput-object v7, v0, Lkg/k$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lkg/k$a;->c:Ljava/lang/Object;

    iput v6, v0, Lkg/k$a;->d:I

    iput v8, v0, Lkg/k$a;->e:I

    iput v5, v0, Lkg/k$a;->f:I

    invoke-interface {v7, v0}, Lgg/D;->u(Lyf/f;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v13

    :goto_3
    invoke-static {v10}, Lgg/p;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpf/d0;

    if-nez v10, :cond_7

    sget-object v1, Lnf/P0;->a:Lnf/P0;

    return-object v1

    :cond_7
    invoke-virtual {v10}, Lpf/d0;->e()I

    move-result v11

    aget-object v12, v9, v11

    invoke-virtual {v10}, Lpf/d0;->f()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    sget-object v10, Lkg/s;->b:Lmg/T;

    if-ne v12, v10, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    aget-byte v10, v2, v11

    if-eq v10, v8, :cond_9

    int-to-byte v10, v8

    aput-byte v10, v2, v11

    invoke-interface {v7}, Lgg/D;->v()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lgg/p;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpf/d0;

    if-nez v10, :cond_7

    :cond_9
    if-nez v6, :cond_b

    iget-object v10, v0, Lkg/k$a;->i:LMf/a;

    invoke-interface {v10}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_a

    iget-object v10, v0, Lkg/k$a;->j:LMf/q;

    iget-object v11, v0, Lkg/k$a;->k:Ljg/j;

    iput-object v9, v0, Lkg/k$a;->g:Ljava/lang/Object;

    iput-object v7, v0, Lkg/k$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lkg/k$a;->c:Ljava/lang/Object;

    iput v6, v0, Lkg/k$a;->d:I

    iput v8, v0, Lkg/k$a;->e:I

    iput v4, v0, Lkg/k$a;->f:I

    invoke-interface {v10, v11, v9, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_b

    return-object v1

    :cond_a
    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v9

    move-object v12, v10

    invoke-static/range {v11 .. v17}, Lpf/q;->K0([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    iget-object v11, v0, Lkg/k$a;->j:LMf/q;

    iget-object v12, v0, Lkg/k$a;->k:Ljg/j;

    iput-object v9, v0, Lkg/k$a;->g:Ljava/lang/Object;

    iput-object v7, v0, Lkg/k$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lkg/k$a;->c:Ljava/lang/Object;

    iput v6, v0, Lkg/k$a;->d:I

    iput v8, v0, Lkg/k$a;->e:I

    iput v3, v0, Lkg/k$a;->f:I

    invoke-interface {v11, v12, v10, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_b

    return-object v1

    :cond_b
    move/from16 v21, v8

    :goto_4
    move-object v13, v9

    goto/16 :goto_2
.end method
