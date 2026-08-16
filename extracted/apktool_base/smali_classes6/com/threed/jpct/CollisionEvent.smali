.class public Lcom/threed/jpct/CollisionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALGORITHM_ELLIPSOID:I = 0x2

.field public static final ALGORITHM_RAY:I = 0x0

.field public static final ALGORITHM_SPHERE:I = 0x1

.field private static final ALGOS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;

.field public static final TYPE_SOURCE:I = 0x1

.field public static final TYPE_TARGET:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private algorithm:I

.field private contact:Lcom/threed/jpct/SimpleVector;

.field private ids:[I

.field private obj:Lcom/threed/jpct/Object3D;

.field private source:Lcom/threed/jpct/Object3D;

.field private targets:[Lcom/threed/jpct/Object3D;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "target"

    const-string v1, "source"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threed/jpct/CollisionEvent;->TYPES:[Ljava/lang/String;

    const-string v0, "sphere-polygon"

    const-string v1, "ellipsoid-polygon"

    const-string v2, "ray-polygon"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threed/jpct/CollisionEvent;->ALGOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    iput-object p1, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    iput p3, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    iput p4, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    iput-object p2, p0, Lcom/threed/jpct/CollisionEvent;->source:Lcom/threed/jpct/Object3D;

    iput-object p5, p0, Lcom/threed/jpct/CollisionEvent;->targets:[Lcom/threed/jpct/Object3D;

    iput-object p6, p0, Lcom/threed/jpct/CollisionEvent;->contact:Lcom/threed/jpct/SimpleVector;

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    return v0
.end method

.method public getFirstContact()Lcom/threed/jpct/SimpleVector;
    .locals 2

    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->contact:Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public getObject()Lcom/threed/jpct/Object3D;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public getPolygonIDs()[I
    .locals 2

    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    return-object v0
.end method

.method public getSource()Lcom/threed/jpct/Object3D;
    .locals 2

    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->source:Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public getTargets()[Lcom/threed/jpct/Object3D;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/CollisionEvent;->targets:[Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    return v0
.end method

.method public setPolygonIDs([II)V
    .locals 2

    if-eqz p1, :cond_0

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/threed/jpct/CollisionEvent;->ids:[I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threed/jpct/CollisionEvent;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CollisionEvent;->TYPES:[Ljava/lang/String;

    iget v3, p0, Lcom/threed/jpct/CollisionEvent;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/threed/jpct/CollisionEvent;->ALGOS:[Ljava/lang/String;

    iget v2, p0, Lcom/threed/jpct/CollisionEvent;->algorithm:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
