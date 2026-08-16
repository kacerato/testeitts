.class public final Lcom/android/tools/r8/graph/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/u3;->a:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;)Lcom/android/tools/r8/graph/D3;
    .locals 16

    move-object/from16 v7, p2

    .line 24
    iget-object v0, v7, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v0, v8, v10

    move-object/from16 v12, p4

    .line 25
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    sget-boolean v1, Lcom/android/tools/r8/graph/D3;->a:Z

    .line 27
    new-instance v13, Lcom/android/tools/r8/graph/v3;

    invoke-direct {v13}, Lcom/android/tools/r8/graph/v3;-><init>()V

    move-object/from16 v14, p0

    .line 28
    iget-object v1, v14, Lcom/android/tools/r8/graph/u3;->a:Lcom/android/tools/r8/graph/j;

    .line 29
    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/d1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v15

    new-instance v6, Lcom/android/tools/r8/graph/Ng;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v11, v6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/Ng;-><init>(Lcom/android/tools/r8/graph/u3;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V

    .line 30
    invoke-interface {v15, v11}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 31
    iget-object v0, v13, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    if-nez v0, :cond_0

    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    move-object v11, v0

    :goto_1
    if-eqz v11, :cond_2

    return-object v11

    :cond_1
    move-object/from16 v14, p0

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v14, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/D3;->a:Z

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/v3;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/v3;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/u3;->a:Lcom/android/tools/r8/graph/j;

    .line 4
    invoke-interface {v1, p1}, Lcom/android/tools/r8/graph/d1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/graph/Lg;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/tools/r8/graph/Lg;-><init>(Lcom/android/tools/r8/graph/u3;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/v3;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 6
    sget-object p1, Lcom/android/tools/r8/graph/w3;->b:Lcom/android/tools/r8/graph/w3;

    .line 7
    iget-object p2, v0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p6, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 34
    iget-object p1, p1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 35
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/graph/D3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/D3$a;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p2, p6, p3, p4}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/v3;->a(Lcom/android/tools/r8/graph/D3;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V
    .locals 9

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/u3;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 12
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p3, p1, v0}, Lcom/android/tools/r8/graph/D3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/D3$a;

    move-result-object p1

    .line 14
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/v3;->a(Lcom/android/tools/r8/graph/D3;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/graph/v3;->a(Lcom/android/tools/r8/graph/D3;)V

    return-void

    .line 17
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_4

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/graph/u3;->a:Lcom/android/tools/r8/graph/j;

    .line 19
    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/d1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v0

    new-instance v8, Lcom/android/tools/r8/graph/Mg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/Mg;-><init>(Lcom/android/tools/r8/graph/u3;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V

    .line 20
    invoke-interface {v0, v8}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void

    .line 21
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/graph/D3;->a:Z

    sget-object p1, Lcom/android/tools/r8/graph/w3;->b:Lcom/android/tools/r8/graph/w3;

    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/v3;->a(Lcom/android/tools/r8/graph/D3;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;Lcom/android/tools/r8/graph/E0;)V
    .locals 6

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/v3;Lcom/android/tools/r8/graph/E0;)V
    .locals 7

    const/16 v0, 0x8

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V

    return-void
.end method
