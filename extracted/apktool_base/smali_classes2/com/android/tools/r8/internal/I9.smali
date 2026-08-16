.class public abstract Lcom/android/tools/r8/internal/I9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/jy;Lcom/android/tools/r8/internal/zF;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/I9;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/zF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/jy;

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, p0, -0x1

    .line 4
    sget v3, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v3, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    invoke-virtual {p2, v2, v3}, Lcom/android/tools/r8/internal/zF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    if-nez v0, :cond_3

    .line 5
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Gx0;->J()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->C()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    add-int/lit8 v1, p0, 0x1

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Gx0;->I()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/tools/r8/internal/zF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/jy;

    :cond_6
    if-eqz v1, :cond_8

    .line 9
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->v()I

    move-result p1

    add-int/2addr p1, p0

    sget p0, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/internal/zF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/jy;

    if-nez v0, :cond_8

    .line 11
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Gx0;->I()Lcom/android/tools/r8/internal/Gx0;

    move-result-object p1

    if-ne p0, p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/jG;)V
    .locals 4

    .line 12
    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/M30;->iterator()Lcom/android/tools/r8/internal/v30;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/EF;

    .line 13
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v2

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/jy;

    .line 15
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    sget-boolean v3, Lcom/android/tools/r8/internal/I9;->a:Z

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Gx0;->I()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v1

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 17
    :cond_2
    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->r()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    sget-boolean v3, Lcom/android/tools/r8/internal/I9;->a:Z

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->e()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Gx0;->J()Lcom/android/tools/r8/internal/Gx0;

    move-result-object v1

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_4
    sget-boolean v2, Lcom/android/tools/r8/internal/I9;->a:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/tools/r8/internal/jy;->c()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    return-void
.end method
