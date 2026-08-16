.class public abstract Lcom/android/tools/r8/graph/Z3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H3$d;Lcom/android/tools/r8/graph/u0;)Z
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/graph/Z3;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_5

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p0, p1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_5

    aget-object v2, p0, v1

    sget-boolean v3, Lcom/android/tools/r8/graph/Z3;->a:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ldalvik/annotation/Signature;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return v0
.end method
