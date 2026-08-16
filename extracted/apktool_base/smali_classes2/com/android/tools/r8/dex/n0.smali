.class public final Lcom/android/tools/r8/dex/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/dex/M;


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/dex/s0;

.field public final c:Lcom/android/tools/r8/internal/RR;

.field public final d:Ljava/util/LinkedHashSet;

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:Ljava/util/LinkedHashSet;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/LinkedHashSet;

.field public final j:Ljava/util/LinkedHashSet;

.field public final k:Ljava/util/LinkedHashSet;

.field public final l:Lcom/android/tools/r8/dex/m0;

.field public m:Lcom/android/tools/r8/graph/H2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/s0;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->g:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->h:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->i:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->j:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->k:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/dex/n0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    new-instance p1, Lcom/android/tools/r8/internal/RR;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/y;I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/n0;->c:Lcom/android/tools/r8/internal/RR;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/tools/r8/dex/m0;

    invoke-direct {p1}, Lcom/android/tools/r8/dex/m0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/n0;->l:Lcom/android/tools/r8/dex/m0;

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/function/Function;)V
    .locals 1

    .line 32
    new-instance v0, Lu/u1;

    invoke-direct {v0, p1}, Lu/u1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 35
    sget-boolean p1, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/z1;

    invoke-direct {v2, v1}, Lu/z1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/A1;

    invoke-direct {v2, v1}, Lu/A1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/B1;

    invoke-direct {v2, v1}, Lu/B1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/l1;

    invoke-direct {v2, v1}, Lu/l1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->g:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/m1;

    invoke-direct {v2, v1}, Lu/m1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->i:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/n1;

    invoke-direct {v2, v1}, Lu/n1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->j:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/o1;

    invoke-direct {v2, v1}, Lu/o1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->k:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/p1;

    invoke-direct {v2, v1}, Lu/p1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/t1;

    invoke-direct {v1, v0}, Lu/t1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)Z
    .locals 3

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->k:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/r1;

    invoke-direct {v1, v0}, Lu/r1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->j:Ljava/util/Set;

    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)Z
    .locals 3

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->j:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/s1;

    invoke-direct {v1, v0}, Lu/s1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->i:Ljava/util/Set;

    const/4 v2, 0x1

    .line 28
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/y1;

    invoke-direct {v1, v0}, Lu/y1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Z
    .locals 3

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Lu/k1;

    invoke-direct {v0, p0}, Lu/k1;-><init>(Lcom/android/tools/r8/dex/n0;)V

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->d:Ljava/util/IdentityHashMap;

    .line 19
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    .line 20
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-nez v0, :cond_1

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    const-string v0, "~~"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/L2;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->i:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/v1;

    invoke-direct {v1, v0}, Lu/v1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->g:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/q1;

    invoke-direct {v1, v0}, Lu/q1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->e:Ljava/util/Set;

    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 3

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/w1;

    invoke-direct {v1, v0}, Lu/w1;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/dex/n0;->a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/n1;Ljava/util/function/Predicate;Ljava/util/Set;Z)Z
    .locals 0

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/dex/n0;->n:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    iget-object p3, p0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return p1
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->h:Ljava/util/LinkedHashMap;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->g:Ljava/util/LinkedHashSet;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->i:Ljava/util/LinkedHashSet;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->j:Ljava/util/LinkedHashSet;

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->k:Ljava/util/LinkedHashSet;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/I2;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/n0;->h:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->b:Ljava/util/HashMap;

    new-instance v2, Lu/x1;

    invoke-direct {v2, p0}, Lu/x1;-><init>(Lcom/android/tools/r8/dex/n0;)V

    iget-object v3, p0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/I2;Ljava/util/AbstractMap;Ljava/util/HashMap;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/u1;)Z

    move-result p1

    return p1
.end method
