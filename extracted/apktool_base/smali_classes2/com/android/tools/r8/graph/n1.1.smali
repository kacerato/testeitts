.class public abstract Lcom/android/tools/r8/graph/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/dex/X;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/X;Ljava/util/Collection;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/Qe;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Qe;-><init>(Lcom/android/tools/r8/dex/X;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/Re;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Re;-><init>(Lcom/android/tools/r8/dex/X;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/dex/X;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/dex/X;)V
.end method

.method public i0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
