.class public final Lcom/jme3/shader/Shader;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/Shader$ShaderSource;,
        Lcom/jme3/shader/Shader$ShaderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final attribs:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/shader/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final boundUniforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferBlocks:Lcom/jme3/util/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/ListMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/ShaderBufferBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final shaderSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/shader/Shader$ShaderSource;",
            ">;"
        }
    .end annotation
.end field

.field private final uniforms:Lcom/jme3/util/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/ListMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-direct {v0}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    .line 4
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-direct {v0}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    .line 5
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->boundUniforms:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/Shader;)V
    .locals 2

    .line 7
    iget v0, p1, Lcom/jme3/util/NativeObject;->id:I

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(I)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    .line 9
    iget-object p1, p1, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderSource;

    .line 10
    iget-object v1, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->createDestructableClone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    .line 12
    iput-object p1, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    .line 13
    iput-object p1, p0, Lcom/jme3/shader/Shader;->boundUniforms:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    return-void
.end method


# virtual methods
.method public addSource(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-direct {v0, p1}, Lcom/jme3/shader/Shader$ShaderSource;-><init>(Lcom/jme3/shader/Shader$ShaderType;)V

    invoke-virtual {v0, p3}, Lcom/jme3/shader/Shader$ShaderSource;->setSource(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/jme3/shader/Shader$ShaderSource;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/jme3/shader/Shader$ShaderSource;->setLanguage(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/jme3/shader/Shader$ShaderSource;->setDefines(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->setUpdateNeeded()V

    return-void
.end method

.method public addUniformBinding(Lcom/jme3/shader/UniformBinding;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, v0}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Uniform;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jme3/shader/Uniform;

    invoke-direct {v1}, Lcom/jme3/shader/Uniform;-><init>()V

    iput-object v0, v1, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    iput-object p1, v1, Lcom/jme3/shader/Uniform;->binding:Lcom/jme3/shader/UniformBinding;

    iget-object p1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/shader/Shader;->boundUniforms:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearUniformsSetByCurrentFlag()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v2, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->clearSetByCurrentMaterial()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    new-instance v0, Lcom/jme3/shader/Shader;

    invoke-direct {v0, p0}, Lcom/jme3/shader/Shader;-><init>(Lcom/jme3/shader/Shader;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteShader(Lcom/jme3/shader/Shader;)V

    return-void
.end method

.method public getAttribute(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/shader/Attribute;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    invoke-virtual {v1, v0}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Attribute;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jme3/shader/Attribute;

    invoke-direct {v1}, Lcom/jme3/shader/Attribute;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getBoundUniforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/Shader;->boundUniforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBufferBlock(Ljava/lang/String;)Lcom/jme3/shader/ShaderBufferBlock;
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderBufferBlock;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/shader/ShaderBufferBlock;

    invoke-direct {v0}, Lcom/jme3/shader/ShaderBufferBlock;-><init>()V

    iput-object p1, v0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getBufferBlockMap()Lcom/jme3/util/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/ShaderBufferBlock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    return-object v0
.end method

.method public getSources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/shader/Shader$ShaderSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Uniform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/shader/Uniform;

    invoke-direct {v0}, Lcom/jme3/shader/Uniform;-><init>()V

    iput-object p1, v0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getUniformMap()Lcom/jme3/util/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    return-object v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public removeBufferBlock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUniform(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/ListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetLocations()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Uniform;

    invoke-virtual {v1}, Lcom/jme3/shader/Uniform;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/ShaderBufferBlock;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderBufferBlock;->reset()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Attribute;

    const/4 v2, -0x2

    iput v2, v1, Lcom/jme3/shader/ShaderVariable;->location:I

    goto :goto_2

    :cond_2
    return-void
.end method

.method public resetObject()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    iget-object v0, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-virtual {v1}, Lcom/jme3/shader/Shader$ShaderSource;->resetObject()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->setUpdateNeeded()V

    return-void
.end method

.method public resetUniformsNotSetByCurrent()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v2, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->isSetByCurrentMaterial()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->clearValue()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUpdateNeeded()V
    .locals 0

    invoke-super {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->resetLocations()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/jme3/shader/Shader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[numSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Shader;->shaderSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numUniforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v1}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numBufferBlocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shader/Shader;->bufferBlocks:Lcom/jme3/util/ListMap;

    invoke-virtual {v1}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shaderSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
