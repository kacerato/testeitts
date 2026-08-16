.class public Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field public _fragmentShaderID:I

.field public _geometryShaderID:I

.field public _mesh:Lcom/ardor3d/scenegraph/Mesh;

.field public _needSendShader:Z

.field public _programID:I

.field public _shaderDataLogic:Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

.field public _vertexShaderID:I

.field protected fragShader:Ljava/nio/ByteBuffer;

.field protected geomShader:Ljava/nio/ByteBuffer;

.field protected shaderAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected shaderUniforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected vertShader:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_needSendShader:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_programID:I

    iput v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_vertexShaderID:I

    iput v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_fragmentShaderID:I

    iput v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_geometryShaderID:I

    return-void
.end method

.method private getShaderAttribute(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->checkAttributeSizeLimits()V

    return-object p1
.end method

.method private getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    return-object p1
.end method

.method private getShaderVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Lcom/ardor3d/util/shader/ShaderVariable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/shader/ShaderVariable;

    iget-object v2, v1, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/ardor3d/util/shader/ShaderVariable;->needsRefresh:Z

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ardor3d/util/shader/ShaderVariable;

    iput-object p1, p2, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v5, p1

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getShaderVariable(name, classz, shaderVariableList)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getShaderVariable(name, classz, shaderVariableList)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private stringToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public checkAttributeSizeLimits()V
    .locals 4

    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->getCapabilities()Lcom/ardor3d/renderer/ContextCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/ardor3d/renderer/ContextCapabilities;->getMaxGLSLVertexAttributes()I

    move-result v2

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many shader attributes(standard+defined): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " maximum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/ContextCapabilities;->getMaxGLSLVertexAttributes()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearUniforms()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;-><init>()V

    return-object v0
.end method

.method public getAttributeByName(Ljava/lang/String;)Lcom/ardor3d/util/shader/ShaderVariable;
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/shader/ShaderVariable;

    iget-object v2, v1, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFragmentShader()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->fragShader:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getGeometryShader()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->geomShader:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getShaderAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getShaderDataLogic()Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_shaderDataLogic:Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    return-object v0
.end method

.method public getShaderUniforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/util/shader/ShaderVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public getUniformByName(Ljava/lang/String;)Lcom/ardor3d/util/shader/ShaderVariable;
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/shader/ShaderVariable;

    iget-object v2, v1, Lcom/ardor3d/util/shader/ShaderVariable;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVertexShader()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->vertShader:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close the shader object"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v2, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object v2, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw v1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "shaderUniforms"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "shaderAttributes"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    const-string v0, "vertShader"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->vertShader:Ljava/nio/ByteBuffer;

    const-string v0, "fragShader"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->fragShader:Ljava/nio/ByteBuffer;

    const-string v0, "geomShader"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->geomShader:Ljava/nio/ByteBuffer;

    const-string v0, "shaderDataLogic"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_shaderDataLogic:Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deserialized shaderDataLogic is not of type GLSLShaderDataLogic. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttributePointer(Ljava/lang/String;IZILjava/nio/FloatBuffer;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloat;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderAttribute(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloat;

    .line 2
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloat;->size:I

    .line 3
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloat;->normalized:Z

    .line 4
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloat;->stride:I

    .line 5
    iput-object p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloat;->data:Ljava/nio/FloatBuffer;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setAttributePointer(Ljava/lang/String;IZZILjava/nio/ByteBuffer;)V
    .locals 1

    .line 7
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderAttribute(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;

    .line 8
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;->size:I

    .line 9
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;->normalized:Z

    .line 10
    iput-boolean p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;->unsigned:Z

    .line 11
    iput p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;->stride:I

    .line 12
    iput-object p6, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerByte;->data:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setAttributePointer(Ljava/lang/String;IZZILjava/nio/IntBuffer;)V
    .locals 1

    .line 14
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderAttribute(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;

    .line 15
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->size:I

    .line 16
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->normalized:Z

    .line 17
    iput-boolean p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->unsigned:Z

    .line 18
    iput p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->stride:I

    .line 19
    iput-object p6, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerInt;->data:Ljava/nio/IntBuffer;

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setAttributePointer(Ljava/lang/String;IZZILjava/nio/ShortBuffer;)V
    .locals 1

    .line 21
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderAttribute(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;

    .line 22
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;->size:I

    .line 23
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;->normalized:Z

    .line 24
    iput-boolean p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;->unsigned:Z

    .line 25
    iput p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;->stride:I

    .line 26
    iput-object p6, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerShort;->data:Ljava/nio/ShortBuffer;

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setAttributePointerMatrix(Ljava/lang/String;IZLjava/nio/FloatBuffer;)V
    .locals 1

    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloatMatrix;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderAttribute(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloatMatrix;

    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloatMatrix;->size:I

    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloatMatrix;->normalized:Z

    iput-object p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariablePointerFloatMatrix;->data:Ljava/nio/FloatBuffer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setFragmentShader(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->load(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->setFragmentShader(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setFragmentShader(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->stringToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->fragShader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setFragmentShader(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->fragShader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setGeometryShader(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->load(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->setGeometryShader(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setGeometryShader(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->stringToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->geomShader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setGeometryShader(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->geomShader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setMesh(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_mesh:Lcom/ardor3d/scenegraph/Mesh;

    return-void
.end method

.method public setShaderDataLogic(Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_shaderDataLogic:Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    return-void
.end method

.method public setUniform(Ljava/lang/String;F)V
    .locals 1

    .line 7
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat;

    .line 8
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat;->value1:F

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;FF)V
    .locals 1

    .line 18
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;

    .line 19
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;->value1:F

    .line 20
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;->value2:F

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;FFF)V
    .locals 1

    .line 32
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;

    .line 33
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;->value1:F

    .line 34
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;->value2:F

    .line 35
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;->value3:F

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;FFFF)V
    .locals 1

    .line 49
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    .line 50
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value1:F

    .line 51
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value2:F

    .line 52
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value3:F

    .line 53
    iput p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value4:F

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;I)V
    .locals 1

    .line 4
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt;

    .line 5
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt;->value1:I

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;II)V
    .locals 1

    .line 14
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;

    .line 15
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value1:I

    .line 16
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value2:I

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;III)V
    .locals 1

    .line 27
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;

    .line 28
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;->value1:I

    .line 29
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;->value2:I

    .line 30
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;->value3:I

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;IIII)V
    .locals 1

    .line 43
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;

    .line 44
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value1:I

    .line 45
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value2:I

    .line 46
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value3:I

    .line 47
    iput p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value4:I

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 83
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    .line 84
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value1:F

    .line 85
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value2:F

    .line 86
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value3:F

    .line 87
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p2

    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value4:F

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyMatrix3;Z)V
    .locals 1

    .line 95
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix3;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix3;

    .line 96
    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix3;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 97
    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix3;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p2, v0}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 98
    iget-object p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix3;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix3;->rowMajor:Z

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyMatrix4;Z)V
    .locals 1

    .line 101
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;

    .line 102
    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p2, v0}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 104
    iget-object p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->rowMajor:Z

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V
    .locals 2

    .line 89
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    .line 90
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value1:F

    .line 91
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value2:F

    .line 92
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value3:F

    .line 93
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value4:F

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector2;)V
    .locals 2

    .line 68
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;

    .line 69
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;->value1:F

    .line 70
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat2;->value2:F

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 2

    .line 72
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;

    .line 73
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;->value1:F

    .line 74
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;->value2:F

    .line 75
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat3;->value3:F

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector4;)V
    .locals 2

    .line 77
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;

    .line 78
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value1:F

    .line 79
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value2:F

    .line 80
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value3:F

    .line 81
    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloat4;->value4:F

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 55
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;

    .line 56
    iput-object p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->value:Ljava/nio/FloatBuffer;

    .line 57
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->size:I

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 1

    .line 62
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableIntArray;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableIntArray;

    .line 63
    iput-object p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableIntArray;->value:Ljava/nio/IntBuffer;

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt;

    .line 2
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt;->value1:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;ZZ)V
    .locals 1

    .line 10
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;

    .line 11
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value1:I

    .line 12
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt2;->value2:I

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;ZZZ)V
    .locals 1

    .line 22
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;

    .line 23
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;->value1:I

    .line 24
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;->value2:I

    .line 25
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt3;->value3:I

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;ZZZZ)V
    .locals 1

    .line 37
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;

    .line 38
    iput p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value1:I

    .line 39
    iput p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value2:I

    .line 40
    iput p4, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value3:I

    .line 41
    iput p5, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableInt4;->value4:I

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;[F)V
    .locals 1

    .line 59
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;

    .line 60
    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableFloatArray;->value:Ljava/nio/FloatBuffer;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;[I)V
    .locals 1

    .line 65
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableIntArray;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableIntArray;

    .line 66
    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p2

    iput-object p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableIntArray;->value:Ljava/nio/IntBuffer;

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;[Lcom/ardor3d/math/type/ReadOnlyMatrix4;Z)V
    .locals 4

    .line 107
    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4Array;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4Array;

    .line 108
    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4Array;->matrixBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x10

    if-ge v1, v2, :cond_1

    .line 110
    :cond_0
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 111
    iput-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4Array;->matrixBuffer:Ljava/nio/FloatBuffer;

    .line 112
    :cond_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 114
    invoke-interface {v3, v0}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 116
    iput-boolean p3, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4Array;->rowMajor:Z

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setUniformMatrix4(Ljava/lang/String;Ljava/nio/FloatBuffer;)V
    .locals 1

    const-class v0, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderUniform(Ljava/lang/String;Ljava/lang/Class;)Lcom/ardor3d/util/shader/ShaderVariable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;

    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->matrixBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ardor3d/util/shader/uniformtypes/ShaderVariableMatrix4;->rowMajor:Z

    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setVertexShader(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->load(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->setVertexShader(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setVertexShader(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->stringToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->vertShader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setVertexShader(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->vertShader:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderUniforms:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "shaderUniforms"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->shaderAttributes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "shaderAttributes"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->vertShader:Ljava/nio/ByteBuffer;

    const-string v1, "vertShader"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->fragShader:Ljava/nio/ByteBuffer;

    const-string v1, "fragShader"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->geomShader:Ljava/nio/ByteBuffer;

    const-string v1, "geomShader"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->_shaderDataLogic:Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    instance-of v1, v0, Lcom/ardor3d/util/export/Savable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const-string v1, "shaderDataLogic"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    :cond_0
    return-void
.end method
