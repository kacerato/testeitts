.class public Lcom/jme3/util/struct/StructStd140BufferObject;
.super Lcom/jme3/shader/bufferobject/BufferObject;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private transient resolvedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;"
        }
    .end annotation
.end field

.field private transient rootStruct:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/util/struct/Struct;",
            ">;"
        }
    .end annotation
.end field

.field private final std140:Lcom/jme3/shader/bufferobject/layout/Std140Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/struct/StructStd140BufferObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/struct/StructStd140BufferObject;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/shader/bufferobject/BufferObject;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-direct {v0}, Lcom/jme3/shader/bufferobject/layout/Std140Layout;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->std140:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/jme3/shader/bufferobject/BufferObject;-><init>(I)V

    .line 4
    new-instance p1, Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-direct {p1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout;-><init>()V

    iput-object p1, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->std140:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/util/struct/Struct;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/util/struct/StructStd140BufferObject;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/util/struct/StructStd140BufferObject;->update(Lcom/jme3/util/struct/Struct;)V

    return-void
.end method

.method private loadLayout(Lcom/jme3/util/struct/Struct;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/jme3/util/struct/StructUtils;->getFields(Lcom/jme3/util/struct/Struct;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->resolvedFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load layout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " every field must be final"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->rootStruct:Ljava/lang/Class;

    iget-object p1, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->resolvedFields:Ljava/util/List;

    iget-object v0, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->std140:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-static {p1, v0, p0}, Lcom/jme3/util/struct/StructUtils;->setStd140BufferLayout(Ljava/util/List;Lcom/jme3/shader/bufferobject/layout/Std140Layout;Lcom/jme3/shader/bufferobject/BufferObject;)Lcom/jme3/shader/bufferobject/BufferObject;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/shader/bufferobject/BufferObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/util/struct/StructStd140BufferObject;->clone()Lcom/jme3/util/struct/StructStd140BufferObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/util/NativeObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/util/struct/StructStd140BufferObject;->clone()Lcom/jme3/util/struct/StructStd140BufferObject;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/util/struct/StructStd140BufferObject;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/jme3/shader/bufferobject/BufferObject;->clone()Lcom/jme3/shader/bufferobject/BufferObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/struct/StructStd140BufferObject;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/jme3/util/struct/StructStd140BufferObject;->clone()Lcom/jme3/util/struct/StructStd140BufferObject;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    :try_start_0
    const-string v0, "rootClass"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/struct/Struct;

    invoke-direct {p0, p1}, Lcom/jme3/util/struct/StructStd140BufferObject;->loadLayout(Lcom/jme3/util/struct/Struct;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "rootClass is undefined"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public update(Lcom/jme3/util/struct/Struct;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->rootStruct:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/jme3/util/struct/StructStd140BufferObject;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->rootStruct:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Change in layout {0} =/= {1} "

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/util/struct/StructStd140BufferObject;->loadLayout(Lcom/jme3/util/struct/Struct;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->resolvedFields:Ljava/util/List;

    iget-object v1, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->std140:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-static {v0, p1, v1, p0}, Lcom/jme3/util/struct/StructUtils;->updateBufferData(Ljava/util/List;ZLcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/shader/bufferobject/BufferObject;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/shader/bufferobject/BufferObject;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/util/struct/StructStd140BufferObject;->rootStruct:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rootClass"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
