.class public abstract Lcom/jme3/util/NativeObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final INVALID_ID:I = -0x1

.field protected static final OBJTYPE_AUDIOBUFFER:I = 0x6

.field protected static final OBJTYPE_AUDIOSTREAM:I = 0x7

.field protected static final OBJTYPE_BO:I = 0x9

.field protected static final OBJTYPE_FENCE:I = 0xa

.field protected static final OBJTYPE_FILTER:I = 0x8

.field protected static final OBJTYPE_FRAMEBUFFER:I = 0x3

.field protected static final OBJTYPE_SHADER:I = 0x4

.field protected static final OBJTYPE_SHADERSOURCE:I = 0x5

.field protected static final OBJTYPE_TEXTURE:I = 0x2

.field protected static final OBJTYPE_VERTEXBUFFER:I = 0x1


# instance fields
.field protected handleRef:Ljava/lang/Object;

.field protected id:I

.field protected objectManager:Lcom/jme3/util/NativeObjectManager;

.field protected updateNeeded:Z

.field private weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/util/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/util/NativeObject;->objectManager:Lcom/jme3/util/NativeObjectManager;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/jme3/util/NativeObject;->objectManager:Lcom/jme3/util/NativeObjectManager;

    .line 8
    iput-object v0, p0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 10
    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    return-void
.end method


# virtual methods
.method public clearUpdateNeeded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return-void
.end method

.method public clone()Lcom/jme3/util/NativeObject;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/NativeObject;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/jme3/util/NativeObject;->objectManager:Lcom/jme3/util/NativeObjectManager;

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/jme3/util/NativeObject;->updateNeeded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    return-object v0
.end method

.method public abstract createDestructableClone()Lcom/jme3/util/NativeObject;
.end method

.method public deleteNativeBuffers()V
    .locals 0

    return-void
.end method

.method public deleteNativeBuffersInternal()V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->deleteNativeBuffers()V

    return-void
.end method

.method public abstract deleteObject(Ljava/lang/Object;)V
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/NativeObject;->objectManager:Lcom/jme3/util/NativeObjectManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/jme3/util/NativeObjectManager;->enqueueUnusedObject(Lcom/jme3/util/NativeObject;)V

    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    return v0
.end method

.method public abstract getUniqueId()J
.end method

.method public getWeakRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/NativeObject;->weakRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jme3/util/NativeObject;->weakRef:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object v0, p0, Lcom/jme3/util/NativeObject;->weakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return v0
.end method

.method public abstract resetObject()V
.end method

.method public setId(I)V
    .locals 2

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ID has already been set for this GL object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNativeObjectManager(Lcom/jme3/util/NativeObjectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/util/NativeObject;->objectManager:Lcom/jme3/util/NativeObjectManager;

    return-void
.end method

.method public setUpdateNeeded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
