.class public final Lcom/android/tools/r8/internal/eY;
.super Lcom/android/tools/r8/internal/gv;
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

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 4

    .line 22
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 29
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/eY;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p1

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p2

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    return v2

    .line 10
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/eY;->a:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ix;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ix;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result v0

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p1

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ix;->c0()I

    move-result p2

    if-ne p1, p2, :cond_6

    return v1

    :cond_6
    return v2
.end method
