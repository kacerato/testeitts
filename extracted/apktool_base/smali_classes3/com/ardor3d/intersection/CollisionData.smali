.class public Lcom/ardor3d/intersection/CollisionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _sourceMesh:Lcom/ardor3d/scenegraph/Mesh;

.field private final _sourcePrimitives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;"
        }
    .end annotation
.end field

.field private final _targetMesh:Lcom/ardor3d/scenegraph/Mesh;

.field private final _targetPrimitives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ardor3d/intersection/CollisionData;-><init>(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/ardor3d/intersection/CollisionData;->_targetMesh:Lcom/ardor3d/scenegraph/Mesh;

    .line 4
    iput-object p1, p0, Lcom/ardor3d/intersection/CollisionData;->_sourceMesh:Lcom/ardor3d/scenegraph/Mesh;

    .line 5
    iput-object p4, p0, Lcom/ardor3d/intersection/CollisionData;->_targetPrimitives:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/ardor3d/intersection/CollisionData;->_sourcePrimitives:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSourceMesh()Lcom/ardor3d/scenegraph/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionData;->_sourceMesh:Lcom/ardor3d/scenegraph/Mesh;

    return-object v0
.end method

.method public getSourcePrimitives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionData;->_sourcePrimitives:Ljava/util/List;

    return-object v0
.end method

.method public getTargetMesh()Lcom/ardor3d/scenegraph/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionData;->_targetMesh:Lcom/ardor3d/scenegraph/Mesh;

    return-object v0
.end method

.method public getTargetPrimitives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/intersection/CollisionData;->_targetPrimitives:Ljava/util/List;

    return-object v0
.end method
