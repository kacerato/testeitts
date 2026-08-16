.class public abstract Lcom/android/tools/r8/internal/W6;
.super Lcom/android/tools/r8/internal/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h;-><init>()V

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic iterator()Lcom/android/tools/r8/internal/a7;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/e7;->a:Lcom/android/tools/r8/internal/b7;

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/e7;->a:Lcom/android/tools/r8/internal/b7;

    return-object v0
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

    const/4 v0, 0x0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/t30;->a:[Ljava/lang/Object;

    return-object v0
.end method
