.class public final Lcom/android/tools/r8/internal/ZT;
.super Lcom/android/tools/r8/internal/j0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Set;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/eU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eU;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lU;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/YT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/YT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    return-object v0
.end method

.method public final b(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    move-result p1

    return p1
.end method

.method public final c(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    iget v1, v0, Lcom/android/tools/r8/internal/eU;->h:I

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/eU;->c(J)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    iget p1, p1, Lcom/android/tools/r8/internal/eU;->h:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eU;->clear()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ZT;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    iget v1, v0, Lcom/android/tools/r8/internal/eU;->h:I

    new-instance v2, Lcom/android/tools/r8/internal/YT;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/YT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/android/tools/r8/internal/YT;->h:Lcom/android/tools/r8/internal/eU;

    iget-object v1, v1, Lcom/android/tools/r8/internal/eU;->b:[J

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/cU;->a()I

    move-result v4

    aget-wide v4, v1, v4

    const/16 v1, 0x20

    ushr-long v6, v4, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/YT;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/YT;-><init>(Lcom/android/tools/r8/internal/eU;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZT;->b:Lcom/android/tools/r8/internal/eU;

    iget v0, v0, Lcom/android/tools/r8/internal/eU;->h:I

    return v0
.end method
