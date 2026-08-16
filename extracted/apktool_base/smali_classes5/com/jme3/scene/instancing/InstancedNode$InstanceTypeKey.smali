.class final Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/instancing/InstancedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceTypeKey"
.end annotation


# instance fields
.field lodLevel:I

.field material:Lcom/jme3/material/Material;

.field mesh:Lcom/jme3/scene/Mesh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;Lcom/jme3/material/Material;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    .line 3
    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    .line 4
    iput p3, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
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
    invoke-virtual {p0}, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->clone()Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Mesh;

    iput-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    iget-object p2, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/Material;

    iput-object p1, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v1, p1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    iget-object v1, p1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    iget p1, p1, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    if-eq v0, p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x7b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    iget-object v0, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->material:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    iget v0, p0, Lcom/jme3/scene/instancing/InstancedNode$InstanceTypeKey;->lodLevel:I

    add-int/2addr v1, v0

    return v1
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
