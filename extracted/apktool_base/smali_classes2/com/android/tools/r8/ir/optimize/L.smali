.class public final Lcom/android/tools/r8/ir/optimize/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sz;


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 7
    check-cast p1, Lcom/android/tools/r8/internal/VJ;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->hashCode()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/VJ;

    check-cast p2, Lcom/android/tools/r8/internal/VJ;

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/L;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

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

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eq p1, p2, :cond_5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method
