.class public Lcom/android/tools/r8/graph/N4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/N4$a;
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public b:Lcom/android/tools/r8/graph/O4;

.field public c:Lcom/android/tools/r8/graph/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/O4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/N4;->a:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->r0()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 30
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0

    .line 31
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 3
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 4
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 3
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/Jy;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->a:Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 3

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    new-instance v1, Lcom/android/tools/r8/graph/H9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/H9;-><init>(Ljava/util/List;)V

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 10
    new-instance v1, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/I9;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Jy;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/L9;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/L9;-><init>(Lcom/android/tools/r8/graph/N4;Lcom/android/tools/r8/internal/Jy;)V

    .line 13
    sget-object p1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Function;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4

    .line 22
    new-instance v0, Lcom/android/tools/r8/graph/N9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/N9;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 24
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v1, :cond_2

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ps0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ps0;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 27
    sget-boolean v3, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    new-instance v1, Lcom/android/tools/r8/graph/O9;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/graph/O9;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/j1;)V
    .locals 3

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 19
    sget-boolean v2, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 20
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->a([Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public a(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    new-instance v1, Lcom/android/tools/r8/graph/M9;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/graph/M9;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/G9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/G9;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/j1;)V
    .locals 4

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected method `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to have holder `"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    new-instance v1, Lcom/android/tools/r8/graph/K9;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/graph/K9;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->f()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->g()I

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/J9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/J9;-><init>(Lcom/android/tools/r8/graph/N4;)V

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    sget-boolean v0, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->i()V

    :cond_0
    return-void
.end method
