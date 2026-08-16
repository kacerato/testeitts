.class public final Lcom/android/tools/r8/internal/AK;
.super Lcom/android/tools/r8/internal/Av0;
.source "SourceFile"


# instance fields
.field public b:I

.field public final synthetic c:[Ljava/util/Iterator;


# direct methods
.method public constructor <init>([Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/AK;->c:[Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Av0;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/AK;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/AK;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/AK;->c:[Ljava/util/Iterator;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AK;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/AK;->c:[Ljava/util/Iterator;

    iget v1, p0, Lcom/android/tools/r8/internal/AK;->b:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AK;->c:[Ljava/util/Iterator;

    iget v2, p0, Lcom/android/tools/r8/internal/AK;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/AK;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
