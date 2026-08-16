.class public final Lcom/android/tools/r8/internal/J8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/B60;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/android/tools/r8/internal/B60;

.field public final d:Z

.field public e:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v3, v2

    add-int/2addr v3, p2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J8;->b:Ljava/util/HashMap;

    if-nez p5, :cond_1

    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/B60$c$a;

    iput-boolean p4, p2, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/J8;->d:Z

    invoke-static {p1, p5, p4}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/J8;->d:Z

    invoke-virtual {p0, p5}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/J8;->d:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/J8;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$b$a;

    .line 10
    iput-object v0, p1, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/B60$a;->f:Z

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 14
    iput-object v0, p1, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLjava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60;
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/J8;->e:Lcom/android/tools/r8/internal/B60;

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p2, 0x7fffffff

    const/high16 v0, -0x80000000

    move v1, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60;

    .line 20
    sget-boolean v3, Lcom/android/tools/r8/internal/J8;->f:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    :goto_1
    iget v2, v2, Lcom/android/tools/r8/internal/B60;->b:I

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/J8;->c:Lcom/android/tools/r8/internal/B60;

    goto :goto_2

    .line 25
    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object p1

    if-ge v1, v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 26
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 27
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    iget-object p2, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    .line 28
    iput-object p2, p1, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/J8;->e:Lcom/android/tools/r8/internal/B60;

    goto :goto_3

    .line 30
    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/internal/B60;->g:Z

    .line 31
    sget-object p1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 32
    iput-object p1, p0, Lcom/android/tools/r8/internal/J8;->e:Lcom/android/tools/r8/internal/B60;

    .line 33
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/J8;->e:Lcom/android/tools/r8/internal/B60;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;
    .locals 2

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/B60;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/J8;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/J8;->a:Lcom/android/tools/r8/internal/B60;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J8;->c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/J8;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method
