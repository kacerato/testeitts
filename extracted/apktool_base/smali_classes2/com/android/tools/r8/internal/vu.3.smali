.class public final Lcom/android/tools/r8/internal/vu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/La0;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vu;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vu;->b:Lcom/android/tools/r8/internal/La0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/vu;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnumLite Proto Shrinker failure: Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was assumed to be dead during optimizations, but it is not."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M5;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/vu;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$n;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->H:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vu;->b(Lcom/android/tools/r8/graph/M5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M5;)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/vu;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/N4;->e()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    iget-object v7, v6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v8, p0, Lcom/android/tools/r8/internal/vu;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/La0;->B:Lcom/android/tools/r8/graph/L2;

    if-ne v7, v8, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v7, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/vu;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/La0;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_6

    move-object v2, v1

    goto :goto_2

    :cond_6
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/vu;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v5, v5, Lcom/android/tools/r8/internal/La0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v4, v2

    :cond_7
    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v5, p0, Lcom/android/tools/r8/internal/vu;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v6, v5, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v5, Lcom/android/tools/r8/internal/La0;->x:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v2, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/F0;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/vu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/i;->d(Lcom/android/tools/r8/graph/F0;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/vu;->c:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/jx1;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/jx1;-><init>(Lcom/android/tools/r8/graph/M5;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/j1;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
