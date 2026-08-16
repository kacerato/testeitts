.class public final Lcom/jme3/opencl/Kernel$WorkSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Kernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkSize"
.end annotation


# instance fields
.field private dimension:I

.field private sizes:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/jme3/opencl/Kernel$WorkSize;-><init>(I[J)V

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public varargs constructor <init>(I[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const-wide/16 p1, 0x1

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 v2, 0x2

    aput-wide p1, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/jme3/opencl/Kernel$WorkSize;-><init>(I[J)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    const-wide/16 p1, 0x1

    const/4 p3, 0x2

    aput-wide p1, v0, p3

    invoke-direct {p0, p3, v0}, Lcom/jme3/opencl/Kernel$WorkSize;-><init>(I[J)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 3

    const/4 v0, 0x3

    .line 6
    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 p1, 0x1

    aput-wide p3, v1, p1

    const/4 p1, 0x2

    aput-wide p5, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/jme3/opencl/Kernel$WorkSize;-><init>(I[J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/opencl/Kernel$WorkSize;

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/opencl/Kernel$WorkSize;

    iget v1, p0, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    iget v2, p1, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    iget-object p1, p1, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getDimension()I
    .locals 1

    iget v0, p0, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    return v0
.end method

.method public getSizes()[J
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xeb

    iget v1, p0, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2f

    iget-object v1, p0, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public varargs set(I[J)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 2
    iput p1, p0, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    .line 3
    iput-object p2, p0, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dimension must be between 1 and 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sizes must be an array of length 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lcom/jme3/opencl/Kernel$WorkSize;)V
    .locals 1

    .line 6
    iget v0, p1, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    iput v0, p0, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    .line 7
    iget-object p1, p1, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    iput-object p1, p0, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/jme3/opencl/Kernel$WorkSize;->dimension:I

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/jme3/opencl/Kernel$WorkSize;->sizes:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
