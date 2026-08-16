.class public final Lcom/android/tools/r8/naming/A0;
.super Lcom/android/tools/r8/naming/j0;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/internal/eA;

.field public final h:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eA;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/j0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/naming/A0;->g:Lcom/android/tools/r8/internal/eA;

    iput-object p3, p0, Lcom/android/tools/r8/naming/A0;->h:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;[CLcom/android/tools/r8/naming/e;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/naming/A0;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/naming/A0;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/eA;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/j0;->e:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/naming/j0;->e:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/naming/W0;

    invoke-direct {v0, p0, p4}, Lcom/android/tools/r8/naming/W0;-><init>(Lcom/android/tools/r8/naming/A0;Ljava/util/function/Predicate;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/naming/j0;->a(Lcom/android/tools/r8/graph/M2;[CLcom/android/tools/r8/naming/e;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/naming/A0;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic a(Ljava/util/function/Predicate;Ljava/lang/String;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/naming/A0;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/j0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/j0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/j0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/naming/A0;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/A0;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/naming/A0;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method
