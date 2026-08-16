.class public final Lcom/android/tools/r8/graph/Y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/b4;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/D5;

.field public final b:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/D5;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Y3;->a:Lcom/android/tools/r8/graph/D5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Y3;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    if-nez p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/Y3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$f;)Lcom/android/tools/r8/graph/H3$f;
    .locals 0

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$f;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$h;)Lcom/android/tools/r8/graph/H3$h;
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$h;->a:Lcom/android/tools/r8/graph/H3$i;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/Y3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, p1, Lcom/android/tools/r8/graph/I3;

    if-eqz v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/Y3;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->d()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/Y3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/graph/Y3;->b:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Y3;->a:Lcom/android/tools/r8/graph/D5;

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 12
    new-instance p1, Lcom/android/tools/r8/graph/Yb;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Yb;-><init>(Lcom/android/tools/r8/graph/Y3;)V

    invoke-interface {p3, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p3
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/Wb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Wb;-><init>(Lcom/android/tools/r8/graph/Y3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->g()Lcom/android/tools/r8/graph/H3$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/H3$a;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$a;

    return-object p1

    .line 6
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/graph/Y3;->c:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->h()Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/Ub;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ub;-><init>(Lcom/android/tools/r8/graph/Y3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/Y3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/Xb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Xb;-><init>(Lcom/android/tools/r8/graph/Y3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Ub;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Ub;-><init>(Lcom/android/tools/r8/graph/Y3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Vb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Vb;-><init>(Lcom/android/tools/r8/graph/Y3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method
