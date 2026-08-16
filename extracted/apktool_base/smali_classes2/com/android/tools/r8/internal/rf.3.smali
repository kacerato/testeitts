.class public abstract Lcom/android/tools/r8/internal/rf;
.super Lcom/android/tools/r8/internal/pf;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DD)I
    .locals 0

    .line 5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public final a(FF)I
    .locals 0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public final a(II)I
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final a(JJ)I
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)I
    .locals 6

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    .line 14
    :cond_1
    sget-boolean v4, Lcom/android/tools/r8/graph/J2;->e:Z

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    move v4, v1

    .line 15
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v5, p2, Lcom/android/tools/r8/graph/M2;

    if-eqz v5, :cond_4

    move v1, v3

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_2

    .line 18
    :cond_5
    sget-boolean v2, Lcom/android/tools/r8/graph/J2;->e:Z

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_7
    :goto_2
    invoke-static {v4, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-nez v1, :cond_c

    .line 20
    sget-boolean v1, Lcom/android/tools/r8/internal/rf;->a:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1

    .line 22
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)I

    move-result p1

    return p1

    .line 24
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I

    move-result p1

    return p1

    :cond_c
    return v1
.end method

.method public a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I
    .locals 0

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/qf;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/tools/r8/internal/qf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/rf;)V

    .line 26
    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    .line 27
    iget p1, v0, Lcom/android/tools/r8/internal/qf;->d:I

    return p1
.end method

.method public final a(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/android/tools/r8/internal/Kq0;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1, p0}, Lcom/android/tools/r8/internal/Kq0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final a(ZZ)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1
.end method
