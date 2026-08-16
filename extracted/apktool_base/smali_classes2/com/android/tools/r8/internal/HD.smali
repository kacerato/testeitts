.class public abstract Lcom/android/tools/r8/internal/HD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/HD;->a:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x2a

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/OG0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/OG0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WX;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 9
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/HD;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/HD;->a:Z

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v0, v0, Lcom/android/tools/r8/internal/jh;

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p0

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 18
    :cond_3
    :goto_1
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
