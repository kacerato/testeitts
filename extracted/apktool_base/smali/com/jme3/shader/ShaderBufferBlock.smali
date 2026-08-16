.class public Lcom/jme3/shader/ShaderBufferBlock;
.super Lcom/jme3/shader/ShaderVariable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/ShaderBufferBlock$BufferType;
    }
.end annotation


# instance fields
.field protected bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

.field protected bufferObjectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/shader/bufferobject/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Lcom/jme3/shader/ShaderBufferBlock$BufferType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/shader/ShaderVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUpdateNeeded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void
.end method

.method public getBufferObject()Lcom/jme3/shader/bufferobject/BufferObject;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderBufferBlock;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    return-object v0
.end method

.method public getBufferObjectRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/shader/bufferobject/BufferObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/ShaderBufferBlock;->bufferObjectRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getType()Lcom/jme3/shader/ShaderBufferBlock$BufferType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderBufferBlock;->type:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    return-object v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void
.end method

.method public setBufferObject(Lcom/jme3/shader/ShaderBufferBlock$BufferType;Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/jme3/shader/ShaderBufferBlock;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shader/ShaderBufferBlock;->type:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/jme3/shader/ShaderBufferBlock;->bufferObject:Lcom/jme3/shader/bufferobject/BufferObject;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jme3/shader/ShaderBufferBlock;->bufferObjectRef:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/jme3/shader/ShaderBufferBlock;->type:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "for storage block "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": storageData cannot be null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBufferObjectRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/shader/bufferobject/BufferObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shader/ShaderBufferBlock;->bufferObjectRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
