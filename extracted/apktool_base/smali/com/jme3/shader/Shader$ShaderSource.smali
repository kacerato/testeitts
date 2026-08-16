.class public Lcom/jme3/shader/Shader$ShaderSource;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderSource"
.end annotation


# instance fields
.field defines:Ljava/lang/String;

.field language:Ljava/lang/String;

.field name:Ljava/lang/String;

.field source:Ljava/lang/String;

.field sourceType:Lcom/jme3/shader/Shader$ShaderType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/Shader$ShaderSource;)V
    .locals 0

    .line 4
    iget p1, p1, Lcom/jme3/util/NativeObject;->id:I

    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->sourceType:Lcom/jme3/shader/Shader$ShaderType;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The shader type must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    new-instance v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-direct {v0, p0}, Lcom/jme3/shader/Shader$ShaderSource;-><init>(Lcom/jme3/shader/Shader$ShaderSource;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V

    return-void
.end method

.method public getDefines()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/jme3/shader/Shader$ShaderType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->sourceType:Lcom/jme3/shader/Shader$ShaderType;

    return-object v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x500000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setDefines(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shader defines cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->language:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shader language cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shader source cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "defines, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->sourceType:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", language="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->language:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
