.class public abstract Lcom/android/tools/r8/internal/t6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/List;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 4

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/t6;->a:[I

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/tools/r8/internal/t6;->b:I

    array-length v0, p1

    const/4 v3, 0x1

    if-ge v3, v0, :cond_2

    aget v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput v0, p0, Lcom/android/tools/r8/internal/t6;->c:I

    array-length v0, p1

    const/4 v3, 0x2

    if-ge v3, v0, :cond_4

    aget v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    iput v2, p0, Lcom/android/tools/r8/internal/t6;->d:I

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_7

    array-length v0, p1

    const/16 v2, 0x400

    if-gt v0, v2, :cond_6

    new-instance v0, Lcom/android/tools/r8/internal/Z3;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Z3;-><init>([I)V

    array-length p1, p1

    new-instance v2, Lcom/android/tools/r8/internal/h0;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/tools/r8/internal/h0;-><init>(Lcom/android/tools/r8/internal/i0;II)V

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ze;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BinaryVersion with length more than 1024 are not supported. Provided length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/t6;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/t6;->b:I

    check-cast p1, Lcom/android/tools/r8/internal/t6;

    iget v1, p1, Lcom/android/tools/r8/internal/t6;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/t6;->c:I

    iget v1, p1, Lcom/android/tools/r8/internal/t6;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/t6;->d:I

    iget v1, p1, Lcom/android/tools/r8/internal/t6;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/t6;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/internal/t6;->e:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/t6;->b:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/tools/r8/internal/t6;->c:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/tools/r8/internal/t6;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/tools/r8/internal/t6;->e:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/t6;->a:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unknown"

    return-object v0

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/ny;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
