.class public final Lcom/jme3/opencl/Kernel$LocalMem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Kernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalMem"
.end annotation


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/opencl/Kernel$LocalMem;->size:I

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

    const-class v2, Lcom/jme3/opencl/Kernel$LocalMem;

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/opencl/Kernel$LocalMem;

    iget v1, p0, Lcom/jme3/opencl/Kernel$LocalMem;->size:I

    iget p1, p1, Lcom/jme3/opencl/Kernel$LocalMem;->size:I

    if-eq v1, p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/opencl/Kernel$LocalMem;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xed

    iget v1, p0, Lcom/jme3/opencl/Kernel$LocalMem;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalMem ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/opencl/Kernel$LocalMem;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "B)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
