.class public final Lcom/android/tools/r8/internal/tc0;
.super Lcom/android/tools/r8/internal/uc0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/uc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 5

    .line 32
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 33
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 35
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 36
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 37
    invoke-static {p0, v4}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/tc0;->g:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v3, v1, Lcom/android/tools/r8/internal/S9;

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 10
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-static {v1}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 13
    invoke-static {v1, v2, p2, v4, p2}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/AbstractCollection;Lcom/android/tools/r8/internal/mc0;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    if-nez v2, :cond_5

    .line 17
    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The java.lang.Record class has no fields."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_5
    :goto_2
    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 20
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 21
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-static {v1}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 23
    invoke-static {v1, v2, p2, v4, p2}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/AbstractCollection;Lcom/android/tools/r8/internal/mc0;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->x()Lcom/android/tools/r8/internal/Eb;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Lcom/android/tools/r8/internal/Eb;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/tc0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 28
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 29
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 30
    invoke-static {v1}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 31
    invoke-static {v1, v2, p2, v4, p2}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/AbstractCollection;Lcom/android/tools/r8/internal/mc0;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ea;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
