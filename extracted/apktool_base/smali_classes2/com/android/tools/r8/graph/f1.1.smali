.class public final Lcom/android/tools/r8/graph/f1;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"


# instance fields
.field public final b:[Lcom/android/tools/r8/graph/R2;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/graph/R2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/f1;)Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/f1;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/f1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncodedArray "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
