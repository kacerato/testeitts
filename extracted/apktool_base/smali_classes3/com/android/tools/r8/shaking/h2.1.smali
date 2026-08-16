.class public final Lcom/android/tools/r8/shaking/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1}, Lcom/android/tools/r8/shaking/h2;->b(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h2;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/graph/d6;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p0

    new-instance v2, Lcom/android/tools/r8/shaking/Dc;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/Dc;-><init>(Ljava/util/Set;)V

    .line 4
    invoke-virtual {v1, p0, v2}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    return-object v0
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 6
    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 10
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;
    .locals 3

    invoke-static {p0}, Lcom/android/tools/r8/shaking/h2;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/Cc;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/Cc;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/android/tools/r8/shaking/y1;->c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/shaking/h2;->c:Z

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0}, Lcom/android/tools/r8/shaking/h2;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/Set;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 15
    sget-boolean v3, Lcom/android/tools/r8/shaking/h2;->c:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/shaking/h2;->b:Ljava/util/Set;

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h2;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/Bc;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Bc;-><init>(Lcom/android/tools/r8/shaking/h2;)V

    .line 20
    iput-object v1, v0, Lcom/android/tools/r8/graph/y;->E:Ljava/util/function/Predicate;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/shaking/h2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
