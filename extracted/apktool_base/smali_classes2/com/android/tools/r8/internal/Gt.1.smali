.class public final Lcom/android/tools/r8/internal/Gt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:I

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    iput p2, p0, Lcom/android/tools/r8/internal/Gt;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Gt;

    .line 2
    iget-object v1, v1, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/Gt;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Gt;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 7
    sget-boolean v2, Lcom/android/tools/r8/internal/Gt;->f:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final synthetic a(Ljava/util/BitSet;)V
    .locals 1

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/Gt;->b:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Gt;)Z
    .locals 2

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v0

    iget v1, p1, Lcom/android/tools/r8/internal/Gt;->b:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/Gt;->c:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/Gt;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt;->d:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/internal/YF0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/YF0;-><init>(Lcom/android/tools/r8/internal/Gt;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    new-instance v2, Lcom/android/tools/r8/internal/XF0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/XF0;-><init>(Lcom/android/tools/r8/internal/Gt;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/o40;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iget v1, p0, Lcom/android/tools/r8/internal/Gt;->b:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/WY;->a(Ljava/util/BitSet;)V

    return-void
.end method
