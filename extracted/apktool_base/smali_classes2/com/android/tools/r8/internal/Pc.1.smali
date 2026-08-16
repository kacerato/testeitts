.class public Lcom/android/tools/r8/internal/Pc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Nc;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public c:Lcom/android/tools/r8/internal/dt;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Nc;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Nc;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Pc;->e:Lcom/android/tools/r8/internal/Nc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/Pc;->c:Lcom/android/tools/r8/internal/dt;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/android/tools/r8/internal/Pc;->d:I

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Pc;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/Pc;->c:Lcom/android/tools/r8/internal/dt;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/Pc;->d:I

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/Pc;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/gK;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    move-object/from16 v11, p2

    if-ne v2, v11, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/android/tools/r8/internal/Pc;->a:Lcom/android/tools/r8/graph/y;

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v10

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/Pc;->c:Lcom/android/tools/r8/internal/dt;

    const/4 v9, 0x2

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/tools/r8/internal/dt;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v2, v3, v9}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    iput-object v2, v0, Lcom/android/tools/r8/internal/Pc;->c:Lcom/android/tools/r8/internal/dt;

    :cond_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/Pc;->c:Lcom/android/tools/r8/internal/dt;

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget v2, v0, Lcom/android/tools/r8/internal/Pc;->d:I

    if-gez v2, :cond_7

    iget-object v2, v0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v2

    iput v2, v0, Lcom/android/tools/r8/internal/Pc;->d:I

    iget-object v3, v0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v3, v8, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/W5;I)V

    :cond_7
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v12

    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v4, v2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    iget-object v4, v2, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    iget v5, v0, Lcom/android/tools/r8/internal/Pc;->d:I

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move v14, v9

    goto :goto_3

    :cond_9
    :goto_2
    move v14, v10

    :goto_3
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v15

    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/tools/r8/internal/zE;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Pc;->a:Lcom/android/tools/r8/graph/y;

    const/4 v6, 0x2

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object v4, v1

    move v7, v14

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z

    move-result v2

    if-eqz v2, :cond_b

    return v10

    :cond_b
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/tools/r8/internal/Pc;->f:Z

    if-nez v2, :cond_4

    invoke-static {v15, v12}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_1

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_d
    return v12
.end method
