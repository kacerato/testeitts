.class public final Lcom/android/tools/r8/dex/J;
.super Lcom/android/tools/r8/dex/X;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/gd0;

.field public final b:Lcom/android/tools/r8/internal/k20;

.field public final c:Lcom/android/tools/r8/internal/k20;

.field public final d:Lcom/android/tools/r8/internal/gd0;

.field public final e:Lcom/android/tools/r8/internal/k20;

.field public final f:Lcom/android/tools/r8/internal/k20;

.field public final g:Lcom/android/tools/r8/internal/k20;

.field public final h:Lcom/android/tools/r8/internal/k20;

.field public final i:Lcom/android/tools/r8/internal/gd0;

.field public final j:Lcom/android/tools/r8/internal/k20;

.field public final k:Ljava/util/IdentityHashMap;

.field public final l:Ljava/util/IdentityHashMap;

.field public final m:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/dex/X;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/gd0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    const/4 v2, -0x2

    iput v2, v0, Lcom/android/tools/r8/internal/x1;->b:I

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    new-instance v0, Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    iput v2, v0, Lcom/android/tools/r8/internal/x1;->b:I

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    new-instance v0, Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    iput v2, v0, Lcom/android/tools/r8/internal/x1;->b:I

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-static {}, Lcom/android/tools/r8/dex/J;->a()Lcom/android/tools/r8/internal/k20;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->k:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/J;->l:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/dex/J;->m:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/gd0;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result p0

    .line 28
    sget-boolean p1, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p1, -0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 25
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Y0;->b(Ljava/lang/Object;)I

    move-result p0

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p1, -0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static a()Lcom/android/tools/r8/internal/k20;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/k20;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/k20;-><init>()V

    const/4 v1, -0x2

    .line 2
    iput v1, v0, Lcom/android/tools/r8/internal/Y0;->b:I

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/n1;ILcom/android/tools/r8/internal/gd0;)V
    .locals 0

    .line 31
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    move-result p0

    .line 32
    sget-boolean p1, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V
    .locals 0

    .line 29
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/internal/Y0;->b(ILjava/lang/Object;)I

    move-result p0

    .line 30
    sget-boolean p1, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k20;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/k20;->b(ILjava/lang/Object;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/s0;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/s0;

    .line 23
    sget-boolean v0, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    invoke-static {p1, p2}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/O2;)Z
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/Z0;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f1;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u0;)Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->m:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v1, Lcom/android/tools/r8/internal/C2;->s:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/z5;)Z
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/u0;)I
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->m:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v1, Lcom/android/tools/r8/internal/C2;->s:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    invoke-static {p1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->R0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/dex/X;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/u0;)Z

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    .line 9
    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/z5;)Z

    return-void
.end method
