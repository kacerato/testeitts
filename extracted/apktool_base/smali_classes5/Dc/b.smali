.class public LDc/b;
.super Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;-><init>()V

    return-void
.end method

.method public constructor <init>(LDc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;-><init>()V

    .line 3
    const-string v0, "mesh"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "at least one triangle"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 5
    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submeshes"
        }
    .end annotation

    .line 7
    invoke-static {p1}, LDc/b;->a([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)LDc/a;

    move-result-object p1

    invoke-direct {p0, p1}, LDc/b;-><init>(LDc/a;)V

    return-void
.end method

.method public static varargs a([Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)LDc/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "submeshes"
        }
    .end annotation

    const-string v0, "submeshes"

    invoke-static {p0, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, LDc/a;

    invoke-direct {v0}, LDc/a;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, LDc/a;->a(Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b()LDc/b;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDc/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LDc/b;->b()LDc/b;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cloner",
            "original"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    return-void
.end method
