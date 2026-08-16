.class public final Lcom/android/tools/r8/internal/l7;
.super Lcom/android/tools/r8/internal/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/k;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/l7;->b:Z

    return-void
.end method


# virtual methods
.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/l7;->b:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final d(Z)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/a7;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/l7;->b:Z

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/c7;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/c7;-><init>(Z)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/l7;->b:Z

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/c7;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/c7;-><init>(Z)V

    return-object v1
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
