.class public abstract Lcom/android/tools/r8/internal/bA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lcom/android/tools/r8/internal/Vz;

.field public c:Lcom/android/tools/r8/internal/Vz;

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/eA;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eA;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bA;->f:Lcom/android/tools/r8/internal/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bA;->b:Lcom/android/tools/r8/internal/Vz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bA;->c:Lcom/android/tools/r8/internal/Vz;

    iget v0, p1, Lcom/android/tools/r8/internal/eA;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/bA;->d:I

    iget p1, p1, Lcom/android/tools/r8/internal/eA;->f:I

    iput p1, p0, Lcom/android/tools/r8/internal/bA;->e:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/Vz;)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bA;->f:Lcom/android/tools/r8/internal/eA;

    iget v0, v0, Lcom/android/tools/r8/internal/eA;->h:I

    iget v1, p0, Lcom/android/tools/r8/internal/bA;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bA;->b:Lcom/android/tools/r8/internal/Vz;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/bA;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bA;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/bA;->b:Lcom/android/tools/r8/internal/Vz;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iput-object v1, p0, Lcom/android/tools/r8/internal/bA;->b:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p0, Lcom/android/tools/r8/internal/bA;->c:Lcom/android/tools/r8/internal/Vz;

    iget v1, p0, Lcom/android/tools/r8/internal/bA;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/bA;->e:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bA;->a(Lcom/android/tools/r8/internal/Vz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/bA;->f:Lcom/android/tools/r8/internal/eA;

    iget v1, v0, Lcom/android/tools/r8/internal/eA;->h:I

    iget v2, p0, Lcom/android/tools/r8/internal/bA;->d:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/bA;->c:Lcom/android/tools/r8/internal/Vz;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/bA;->f:Lcom/android/tools/r8/internal/eA;

    iget v0, v0, Lcom/android/tools/r8/internal/eA;->h:I

    iput v0, p0, Lcom/android/tools/r8/internal/bA;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bA;->c:Lcom/android/tools/r8/internal/Vz;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
