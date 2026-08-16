.class public Lcom/jme3/scene/plugins/OBJLoader$ObjectGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/plugins/OBJLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectGroup"
.end annotation


# instance fields
.field final objectName:Ljava/lang/String;

.field final synthetic this$0:Lcom/jme3/scene/plugins/OBJLoader;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/plugins/OBJLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader$ObjectGroup;->this$0:Lcom/jme3/scene/plugins/OBJLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/scene/plugins/OBJLoader$ObjectGroup;->objectName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createGeometry()Lcom/jme3/scene/Spatial;
    .locals 2

    new-instance v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$ObjectGroup;->objectName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$ObjectGroup;->objectName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Model"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
