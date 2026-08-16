.class public final Lcom/android/tools/r8/internal/Il0;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/nC;)V
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/internal/Il0;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/Il0;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Hl0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Hl0;-><init>(Lcom/android/tools/r8/internal/Il0;)V

    return-object v0
.end method

.method public final size()I
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Il0;->b:I

    const-string v2, ") must be >= 0"

    if-ltz v0, :cond_9

    if-ltz v1, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_7

    shr-int/lit8 v4, v0, 0x1

    if-le v1, v4, :cond_1

    sub-int v1, v0, v1

    :cond_1
    sget-object v4, Lcom/android/tools/r8/internal/YH;->a:[I

    const/16 v5, 0x11

    if-ge v1, v5, :cond_6

    aget v4, v4, v1

    if-le v0, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    const-wide/16 v3, 0x1

    :goto_1
    if-ge v2, v1, :cond_3

    sub-int v5, v0, v2

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    int-to-long v5, v2

    div-long/2addr v3, v5

    goto :goto_1

    :cond_3
    long-to-int v0, v3

    :cond_4
    return v0

    :cond_5
    return v3

    :cond_6
    :goto_2
    const v0, 0x7fffffff

    return v0

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "k (%s) > n (%s)"

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "k ("

    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "n ("

    invoke-static {v0, v3, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sets.combinations("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/Il0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
