.class public final Lcom/android/tools/r8/internal/VR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/L2;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/VR;->a:Lcom/android/tools/r8/graph/L2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/VR;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 7
    new-instance v3, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v3, p1, v1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 8
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v4, v1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v1, v5

    .line 13
    iget-object v7, v6, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p0, Lcom/android/tools/r8/internal/VR;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    if-ne v7, v8, :cond_5

    .line 14
    iget-object v6, v6, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 16
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v9, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v9}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 17
    :cond_6
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    if-nez v1, :cond_7

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/UR;

    iget-object v4, p0, Lcom/android/tools/r8/internal/VR;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, p0, v4, v3}, Lcom/android/tools/r8/internal/UR;-><init>(Lcom/android/tools/r8/internal/VR;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 19
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    .line 22
    :cond_7
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    if-eqz v1, :cond_3

    :goto_4
    return-void

    .line 23
    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/OY0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/OY0;-><init>(Lcom/android/tools/r8/internal/VR;)V

    .line 24
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/VR;->a:Lcom/android/tools/r8/graph/L2;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/VR;->c:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/VR;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
