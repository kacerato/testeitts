.class public final Lcom/android/tools/r8/internal/Wd0;
.super Lcom/android/tools/r8/internal/C1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wd0;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wd0;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wd0;->b:Lcom/android/tools/r8/graph/M2;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/C30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/C30;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wd0;->b:Lcom/android/tools/r8/graph/M2;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/C30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/C30;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
