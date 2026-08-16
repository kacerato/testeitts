.class public final LJAVARuntime/Collider;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics",
        "Components"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Collider$Shape;
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    invoke-direct {p0, v0}, LJAVARuntime/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Collider$Shape;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "shape"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {p1}, LJAVARuntime/Collider;->ENUMCONVERT(LJAVARuntime/Collider$Shape;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    invoke-direct {p0, v0}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 6
    iget-object p1, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object p1, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)LJAVARuntime/Collider$Shape;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Collider$Shape;->valueOf(Ljava/lang/String;)LJAVARuntime/Collider$Shape;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/Collider$Shape;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public colliderWithName(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this object is colliding with an object with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este objeto est\u00e1 colidindo com um objeto com o nome especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->colliderWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "componentA",
            "componentB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/Collider;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getCollisionAt(I)LJAVARuntime/Collision;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Collision at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a colis\u00e3o no \u00edndice especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    :try_start_0
    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->collisionCount()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->collisionAt(I)Lj9/a;

    move-result-object p1

    invoke-virtual {p1}, Lj9/a;->h()LJAVARuntime/Collision;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index can\'t be >= getCollisionsCount()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollisionList()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a list of all current collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma lista de todas as colis\u00f5es atuais."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Collision;",
            ">;"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->collisionCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->collisionAt(I)Lj9/a;

    move-result-object v2

    invoke-virtual {v2}, Lj9/a;->h()LJAVARuntime/Collision;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCollisionsCount()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number of current collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de colis\u00f5es atuais."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    :try_start_0
    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->collisionCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getShape()LJAVARuntime/Collider$Shape;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the shape type of the collider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tipo de forma do collider."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/Collider;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)LJAVARuntime/Collider$Shape;

    move-result-object v0

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the collider vertex."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vertex do collider."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isColliding()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this object is colliding with anything."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este objeto est\u00e1 colidindo com algo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->isColliding()Z

    move-result v0

    return v0
.end method

.method public setConvexVertex(LJAVARuntime/Vertex;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the convex vertex of the collider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vertex convexo do collider."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setConvexVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setConvexVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :goto_0
    return-void
.end method

.method public setShape(LJAVARuntime/Collider$Shape;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the shape type of the collider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o tipo de forma do collider."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {p1}, LJAVARuntime/Collider;->ENUMCONVERT(LJAVARuntime/Collider$Shape;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    return-void
.end method

.method public setVertex(LJAVARuntime/Vertex;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the vertex of the collider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vertex do collider."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :goto_0
    return-void
.end method

.method public setVertexFile(LJAVARuntime/VertexFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the vertex file for the collider."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o arquivo do vertex para o collider."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertexFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Collider;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setModelFile(Ljava/lang/String;)V

    return-void
.end method
