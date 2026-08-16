.class public abstract Lcom/android/tools/r8/synthesis/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/synthesis/S$b;

.field public final d:Lcom/android/tools/r8/origin/Origin;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/android/tools/r8/ProgramResource$Kind;

.field public i:Lcom/android/tools/r8/graph/M2;

.field public j:Lcom/android/tools/r8/graph/O2;

.field public k:Lcom/android/tools/r8/graph/L2;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public final r:Lcom/android/tools/r8/graph/H3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/synthesis/m;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/tools/r8/synthesis/m;->f:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/synthesis/m;->g:Z

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/m;->j:Lcom/android/tools/r8/graph/O2;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/m;->k:Lcom/android/tools/r8/graph/L2;

    iput-boolean v0, p0, Lcom/android/tools/r8/synthesis/m;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/m;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/m;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/m;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/m;->r:Lcom/android/tools/r8/graph/H3$b;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/m;->c:Lcom/android/tools/r8/synthesis/S$b;

    iget-object p1, p3, Lcom/android/tools/r8/synthesis/l;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/m;->d:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/m;->i:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static varargs a([Ljava/util/List;)J
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/mA;

    sget v1, Lcom/android/tools/r8/internal/pA;->a:I

    sget v1, Lcom/android/tools/r8/internal/SY;->b:I

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/RY;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/RY;-><init>()V

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/mA;-><init>(Lcom/android/tools/r8/internal/lA;)V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 5
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/synthesis/g1;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/synthesis/g1;-><init>(Lcom/android/tools/r8/internal/nA;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, v0, Lcom/android/tools/r8/internal/mA;->a:Lcom/android/tools/r8/internal/lA;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gA;->hashCode()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nA;Lcom/android/tools/r8/internal/Mq0;)V
    .locals 0

    .line 55
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/nA;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)J
    .locals 8

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/m;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m;->o:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-static {v2}, Lcom/android/tools/r8/synthesis/m;->a([Ljava/util/List;)J

    move-result-wide v4

    const-wide/16 v6, 0x7

    mul-long/2addr v4, v6

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/util/List;

    aput-object v0, v1, v3

    aput-object v2, v1, p1

    .line 54
    invoke-static {v1}, Lcom/android/tools/r8/synthesis/m;->a([Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0xd

    mul-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 27

    move-object/from16 v0, p0

    .line 19
    iget-boolean v1, v0, Lcom/android/tools/r8/synthesis/m;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x400

    goto :goto_0

    :cond_0
    move v3, v2

    .line 20
    :goto_0
    iget-boolean v4, v0, Lcom/android/tools/r8/synthesis/m;->f:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    goto :goto_1

    :cond_1
    move v4, v2

    .line 21
    :goto_1
    iget-boolean v5, v0, Lcom/android/tools/r8/synthesis/m;->g:Z

    if-eqz v5, :cond_2

    const/16 v6, 0x200

    goto :goto_2

    :cond_2
    move v6, v2

    .line 22
    :goto_2
    sget-boolean v7, Lcom/android/tools/r8/synthesis/m;->s:Z

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_3
    or-int v1, v3, v4

    or-int/2addr v1, v6

    or-int/lit16 v1, v1, 0x1001

    .line 23
    invoke-static {v1}, Lcom/android/tools/r8/graph/Q;->g(I)Lcom/android/tools/r8/graph/Q;

    move-result-object v7

    .line 24
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 25
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/synthesis/N;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/synthesis/m;->b()Lcom/android/tools/r8/graph/V;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/V;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 28
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 29
    :cond_5
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 30
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/synthesis/m;->b()Lcom/android/tools/r8/graph/V;

    move-result-object v1

    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->h:Lcom/android/tools/r8/ProgramResource$Kind;

    iget-object v6, v0, Lcom/android/tools/r8/synthesis/m;->d:Lcom/android/tools/r8/origin/Origin;

    iget-object v8, v0, Lcom/android/tools/r8/synthesis/m;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->j:Lcom/android/tools/r8/graph/O2;

    iget-object v10, v0, Lcom/android/tools/r8/synthesis/m;->k:Lcom/android/tools/r8/graph/L2;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/m;->r:Lcom/android/tools/r8/graph/H3$b;

    move-object/from16 v17, v2

    .line 31
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v18

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, [Lcom/android/tools/r8/graph/g1;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [Lcom/android/tools/r8/graph/g1;

    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    move-object/from16 v22, v2

    move-object/from16 v21, v2

    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    .line 34
    iget-boolean v3, v3, Lcom/android/tools/r8/graph/u1;->D6:Z

    move/from16 v23, v3

    .line 35
    new-instance v3, Lcom/android/tools/r8/synthesis/h1;

    move-object/from16 v24, v3

    invoke-direct {v3, v0}, Lcom/android/tools/r8/synthesis/h1;-><init>(Lcom/android/tools/r8/synthesis/m;)V

    sget-object v26, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    .line 36
    iget-object v3, v1, Lcom/android/tools/r8/graph/V;->a:Lcom/android/tools/r8/graph/U;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    .line 37
    invoke-interface/range {v3 .. v26}, Lcom/android/tools/r8/graph/U;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/internal/Jb0;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 38
    iget-boolean v3, v0, Lcom/android/tools/r8/synthesis/m;->l:Z

    if-eqz v3, :cond_9

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v3

    .line 40
    sget-boolean v4, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v4, :cond_8

    .line 41
    iget-object v4, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 42
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    .line 43
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 44
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    :goto_5
    new-instance v4, Lcom/android/tools/r8/graph/P4;

    .line 46
    new-instance v5, Lcom/android/tools/r8/internal/f30;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/f30;-><init>()V

    const/4 v6, 0x1

    .line 47
    invoke-direct {v4, v6, v5}, Lcom/android/tools/r8/graph/P4;-><init>(ZLjava/util/SortedMap;)V

    .line 48
    iput-object v4, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 49
    :cond_9
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/graph/j1;

    .line 50
    iget-object v4, v1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 51
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/N4;->a([Lcom/android/tools/r8/graph/j1;)V

    .line 52
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/j1;)V

    return-object v1
.end method

.method public final a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/H9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/H9;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Lcom/android/tools/r8/synthesis/m;
    .locals 2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/O2;

    sget-object v1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/synthesis/m;->j:Lcom/android/tools/r8/graph/O2;

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/synthesis/N;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/synthesis/N;-><init>(Lcom/android/tools/r8/synthesis/m;)V

    .line 16
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/m;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Lcom/android/tools/r8/graph/V;
.end method

.method public final b(Ljava/util/AbstractCollection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/H9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/H9;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract c()Lcom/android/tools/r8/synthesis/m;
.end method

.method public final d()Lcom/android/tools/r8/synthesis/m;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/synthesis/m;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/synthesis/m;->f:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/synthesis/m;->g:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object v0

    return-object v0
.end method
