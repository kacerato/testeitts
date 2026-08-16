.class public abstract Lcom/android/tools/r8/internal/yc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()Lcom/android/tools/r8/internal/GX;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/GX;

    const-string v1, "Record desugaring"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/GX;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->a:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D8/R8 is compiling a mix of desugared and non desugared input using java.lang.Record, but the application reader did not import correctly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/W;)V
    .locals 4

    const/16 v0, 0x1004

    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 15
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 16
    new-instance v2, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->H4:Lcom/android/tools/r8/graph/n2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/n2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/B8;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, p0, v3}, Lcom/android/tools/r8/internal/B8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B8;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    .line 24
    iput-boolean v1, p1, Lcom/android/tools/r8/synthesis/m;->e:Z

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/m;->f:Z

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/W;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/tools/r8/synthesis/W;

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/AbstractCollection;Lcom/android/tools/r8/internal/mc0;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ea;)V
    .locals 10

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/android/tools/r8/internal/aB1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/aB1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/bB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/bB1;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    new-instance v7, Lcom/android/tools/r8/internal/cB1;

    invoke-direct {v7, p0}, Lcom/android/tools/r8/internal/cB1;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 34
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/dB1;

    invoke-direct {v8, p2}, Lcom/android/tools/r8/internal/dB1;-><init>(Lcom/android/tools/r8/internal/mc0;)V

    new-instance v9, Lcom/android/tools/r8/internal/eB1;

    invoke-direct {v9, p3, p1, p4}, Lcom/android/tools/r8/internal/eB1;-><init>(Lcom/android/tools/r8/internal/kc0;Ljava/util/Collection;Lcom/android/tools/r8/internal/lc0;)V

    move-object v5, p1

    move-object v6, p0

    .line 35
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kc0;Ljava/util/Collection;Lcom/android/tools/r8/internal/lc0;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/D5;

    .line 4
    invoke-interface {v1}, Lcom/android/tools/r8/graph/D5;->asClass()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 5
    invoke-interface {p0, p3, v1}, Lcom/android/tools/r8/internal/kc0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D5;

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 8
    invoke-interface {p2, p3, p1}, Lcom/android/tools/r8/internal/lc0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_1

    :cond_1
    return-void
.end method
