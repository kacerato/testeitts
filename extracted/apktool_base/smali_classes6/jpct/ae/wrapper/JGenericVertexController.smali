.class public Ljpct/ae/wrapper/JGenericVertexController;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctVertexController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Ljpct/ae/wrapper/VertexController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final ALTER_SOURCE_MESH()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final EVENT_APPLY()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final EVENT_CLEANUP()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static final EVENT_SETUP()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final PRESERVE_SOURCE_MESH()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_VertexController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljpct/ae/wrapper/VertexController;

    invoke-direct {v0, p1, p0, p2}, Ljpct/ae/wrapper/VertexController;-><init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JGenericVertexController;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JGenericVertexController;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Sub "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_VertexController - Doesn\'t exist!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JPCT"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public apply()V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Ljpct/ae/wrapper/VertexController;->apply()V

    return-void
.end method

.method public cleanup()V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Ljpct/ae/wrapper/VertexController;->cleanup()V

    return-void
.end method

.method public final getDestinationMesh()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Lcom/threed/jpct/GenericVertexController;->getDestinationMesh()[Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getDestinationNormals()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Lcom/threed/jpct/GenericVertexController;->getDestinationNormals()[Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getMeshSize()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Lcom/threed/jpct/GenericVertexController;->getMeshSize()I

    move-result v0

    return v0
.end method

.method public getPolygonIDs(II)[I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GenericVertexController;->getPolygonIDs(II)[I

    move-result-object p1

    return-object p1
.end method

.method public final getSourceMesh()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Lcom/threed/jpct/GenericVertexController;->getSourceMesh()[Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceNormals()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Lcom/threed/jpct/GenericVertexController;->getSourceNormals()[Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public refreshMeshData()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Lcom/threed/jpct/GenericVertexController;->refreshMeshData()V

    return-void
.end method

.method public setup()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGenericVertexController;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/VertexController;

    invoke-virtual {v0}, Ljpct/ae/wrapper/VertexController;->setup()Z

    move-result v0

    return v0
.end method
