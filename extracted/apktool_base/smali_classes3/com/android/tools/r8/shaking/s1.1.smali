.class public abstract Lcom/android/tools/r8/shaking/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/r1;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/r1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/k1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;
    .locals 3

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 5
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->b:Z

    xor-int/lit8 v1, v1, 0x1

    .line 6
    new-instance v2, Lcom/android/tools/r8/shaking/Yd;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Yd;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 7
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->c:Z

    xor-int/lit8 v1, v1, 0x1

    .line 8
    new-instance v2, Lcom/android/tools/r8/shaking/Zd;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Zd;-><init>()V

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/tools/r8/shaking/ae;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/ae;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/tools/r8/shaking/be;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/be;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/tools/r8/shaking/ce;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/ce;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 13
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->g:Z

    xor-int/lit8 v1, v1, 0x1

    .line 14
    new-instance v2, Lcom/android/tools/r8/shaking/de;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/de;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 15
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->h:Z

    .line 16
    new-instance v2, Lcom/android/tools/r8/shaking/ee;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/ee;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 18
    iget-object v1, v1, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 19
    iget-object v2, v0, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/d1;)V

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 22
    iget-object v1, v1, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    .line 24
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/d1;)V

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/shaking/s1;->d:Z

    if-nez v0, :cond_1

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public b()Lcom/android/tools/r8/shaking/p1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/shaking/E1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/shaking/H1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->b:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->c:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->d:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->e:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->f:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->g:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/r1;->h:Z

    return v0
.end method

.method public final l()Lcom/android/tools/r8/shaking/t1;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/r1;->a:Lcom/android/tools/r8/shaking/t1;

    sget-boolean v2, Lcom/android/tools/r8/shaking/s1;->d:Z

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->a:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->a:Z

    if-nez v2, :cond_7

    :cond_0
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->b:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->b:Z

    if-nez v2, :cond_7

    :cond_1
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->c:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->c:Z

    if-nez v2, :cond_7

    :cond_2
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->d:Z

    if-nez v2, :cond_7

    :cond_3
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->e:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->e:Z

    if-nez v2, :cond_7

    :cond_4
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->f:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->f:Z

    if-nez v2, :cond_7

    :cond_5
    iget-boolean v2, v1, Lcom/android/tools/r8/shaking/t1;->g:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/android/tools/r8/shaking/t1;->g:Z

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, v1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/i1;->a(Lcom/android/tools/r8/shaking/i1;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/i1;->a(Lcom/android/tools/r8/shaking/i1;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    return-object v0
.end method

.method public abstract m()Lcom/android/tools/r8/shaking/s1;
.end method

.method public final n()Lcom/android/tools/r8/shaking/s1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/r1;->h:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/android/tools/r8/shaking/s1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->i()Lcom/android/tools/r8/shaking/r1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method
