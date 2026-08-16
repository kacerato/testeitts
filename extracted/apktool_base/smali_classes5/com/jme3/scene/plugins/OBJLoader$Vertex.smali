.class public Lcom/jme3/scene/plugins/OBJLoader$Vertex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/plugins/OBJLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vertex"
.end annotation


# instance fields
.field index:I

.field v:Lcom/jme3/math/Vector3f;

.field vn:Lcom/jme3/math/Vector3f;

.field vt:Lcom/jme3/math/Vector2f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget-object v2, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector2f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v0

    :cond_5
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eq v1, p1, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    return v0

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x109

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/math/Vector2f;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v2, v1

    return v2
.end method
