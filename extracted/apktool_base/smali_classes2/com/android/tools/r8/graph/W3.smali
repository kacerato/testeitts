.class public final Lcom/android/tools/r8/graph/W3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/b4;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/X3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/graph/Ab;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/Ab;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 16
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Predicate;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    check-cast p0, Lcom/android/tools/r8/graph/H3$c;

    if-eqz p0, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    new-instance p0, Lcom/android/tools/r8/graph/H3$c;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 20
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H3$c;)Z
    .locals 0

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    if-nez p1, :cond_0

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    .line 33
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    .line 28
    invoke-interface {p1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/W3;->c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$f;)Lcom/android/tools/r8/graph/H3$f;
    .locals 3

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$f;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$f;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/graph/H3$f;->b:Lcom/android/tools/r8/graph/H3$e;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lcom/android/tools/r8/graph/H3$f;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object v2, v2, Lcom/android/tools/r8/graph/X3;->e:Lcom/android/tools/r8/graph/H3$c;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/H3$f;->c:Ljava/util/List;

    .line 13
    invoke-direct {v1, p1, v2, v0}, Lcom/android/tools/r8/graph/H3$f;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$h;)Lcom/android/tools/r8/graph/H3$h;
    .locals 2

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object p1, Lcom/android/tools/r8/graph/H3$h;->b:Lcom/android/tools/r8/graph/H3$h;

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$h;->b()Lcom/android/tools/r8/graph/H3$i;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/W3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    move-result-object v1

    if-nez v1, :cond_1

    .line 26
    sget-object p1, Lcom/android/tools/r8/graph/H3$h;->b:Lcom/android/tools/r8/graph/H3$h;

    return-object p1

    :cond_1
    if-ne v1, v0, :cond_2

    return-object p1

    .line 27
    :cond_2
    new-instance p1, Lcom/android/tools/r8/graph/H3$h;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/H3$h;-><init>(Lcom/android/tools/r8/graph/H3$i;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/graph/I3;

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$i;->d()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/W3;->c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/X3;->c:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/X3;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 34
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/X3;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object p1, p1, Lcom/android/tools/r8/graph/X3;->f:Ljava/util/function/Predicate;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Lcom/android/tools/r8/graph/Gb;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Gb;-><init>(Lcom/android/tools/r8/graph/W3;)V

    .line 37
    invoke-static {p3, p1, p3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 38
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 31
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/zb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/zb;-><init>(Lcom/android/tools/r8/graph/W3;)V

    .line 32
    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object v1, v1, Lcom/android/tools/r8/graph/X3;->d:Lcom/android/tools/r8/graph/H2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/W3;->c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object p1, p1, Lcom/android/tools/r8/graph/X3;->e:Lcom/android/tools/r8/graph/H3$c;

    sget-object v0, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H3$c;->b(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/W3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object p1, p1, Lcom/android/tools/r8/graph/X3;->e:Lcom/android/tools/r8/graph/H3$c;

    :cond_0
    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Bb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Bb;-><init>(Lcom/android/tools/r8/graph/W3;)V

    .line 8
    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->n()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->g()Lcom/android/tools/r8/graph/H3$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$a;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/W3;->b:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$e;->h()Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H3$c;->a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Cb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Cb;-><init>(Lcom/android/tools/r8/graph/W3;)V

    .line 8
    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Fb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Fb;-><init>(Lcom/android/tools/r8/graph/W3;)V

    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/Db;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Db;-><init>(Lcom/android/tools/r8/graph/W3;)V

    invoke-static {p1, v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/graph/W3;->a:Lcom/android/tools/r8/graph/X3;

    iget-object v1, v1, Lcom/android/tools/r8/graph/X3;->d:Lcom/android/tools/r8/graph/H2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    new-instance v2, Lcom/android/tools/r8/graph/Eb;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/graph/Eb;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method
