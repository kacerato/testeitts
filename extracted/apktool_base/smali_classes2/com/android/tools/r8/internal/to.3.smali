.class public abstract Lcom/android/tools/r8/internal/to;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/W0$a;)Lcom/android/tools/r8/internal/so;
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/so;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/so;-><init>(ILcom/android/tools/r8/internal/B60;)V

    return-object p0

    .line 8
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 9
    new-instance v3, Lcom/android/tools/r8/internal/ro;

    iget v4, p2, Lcom/android/tools/r8/graph/W0$a;->e:I

    invoke-direct {v3, v4, p0, p1, v2}, Lcom/android/tools/r8/internal/ro;-><init>(ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/C7;)V

    .line 10
    iget-object p0, p2, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    aget-object v4, p0, p2

    .line 11
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/V0;)V

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/a1;->b()I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    instance-of v4, v4, Lcom/android/tools/r8/graph/O0$b;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/a1;->a()I

    move-result v0

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60;

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    new-instance p0, Lcom/android/tools/r8/internal/so;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/so;-><init>(ILcom/android/tools/r8/internal/B60;)V

    return-object p0
.end method

.method public static varargs a([Lcom/android/tools/r8/graph/O0;)Z
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 2
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v2, v2, Lcom/android/tools/r8/graph/O0$b;

    if-eqz v2, :cond_0

    return v1

    .line 4
    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/internal/to;->a:Z

    if-nez v2, :cond_2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v2, v2, Lcom/android/tools/r8/graph/S0;

    if-nez v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method
