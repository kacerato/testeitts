.class public Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final tagSimplexPoint1:Ljava/lang/String; = "simplexPoint1"

.field private static final tagSimplexPoint2:Ljava/lang/String; = "simplexPoint2"

.field private static final tagSimplexPoint3:Ljava/lang/String; = "simplexPoint3"

.field private static final tagSimplexPoint4:Ljava/lang/String; = "simplexPoint4"


# instance fields
.field private locations:[Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/AbstractTriangle;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 25
    const-string v0, "triangle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    .line 27
    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 30
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/LineSegment;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 43
    const-string v0, "segment"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v1}, Lcom/jme3/math/LineSegment;->getNegativeEnd(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 46
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v2, 0x1

    invoke-virtual {p1, v1}, Lcom/jme3/math/LineSegment;->getPositiveEnd(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aput-object p1, v0, v2

    .line 47
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    aput-object p1, v0, v1

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    aput-object p1, v0, v1

    .line 9
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    aput-object p2, p1, v0

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    aput-object p1, v0, v1

    .line 14
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    aput-object p2, p1, v0

    .line 15
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 p2, 0x2

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    aput-object p3, p1, p2

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    aput-object p1, v0, v1

    .line 20
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    aput-object p2, p1, v0

    .line 21
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 p2, 0x2

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    aput-object p3, p1, p2

    .line 22
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 p2, 0x3

    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    aput-object p3, p1, p2

    .line 23
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;II)V
    .locals 4

    .line 31
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 32
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    add-int/lit8 v0, p3, -0x3

    .line 33
    const-string v1, "start position"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    add-int/lit8 v0, p2, 0x3

    .line 34
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 35
    const-string v3, "end position"

    invoke-static {p3, v3, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    sub-int/2addr p3, p2

    .line 36
    rem-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "range a multiple of 3"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 37
    div-int/lit8 p3, p3, 0x3

    .line 38
    new-array v0, p3, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    :goto_1
    if-ge v2, p3, :cond_1

    .line 39
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v1, v0, v2

    mul-int/lit8 v0, v2, 0x3

    add-int/2addr v0, p2

    .line 40
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object v1, v1, v2

    invoke-static {p1, v0, v1}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>([Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 49
    const-string v0, "vertices"

    invoke-static {p1, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 50
    array-length v0, p1

    .line 51
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 52
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(Lcom/jme3/math/Vector3f;)J
.end method

.method private static native createShape(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J
.end method

.method private static native createShape(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J
.end method

.method private static native createShape(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J
.end method

.method private createShape()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    .line 2
    aget-object v1, v0, v2

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v0, v0, v5

    invoke-static {v1, v2, v3, v0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numVertices = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    aget-object v1, v0, v2

    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-static {v1, v2, v0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_2
    aget-object v1, v0, v2

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J

    move-result-wide v0

    goto :goto_0

    .line 7
    :cond_3
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape(Lcom/jme3/math/Vector3f;)J

    move-result-wide v0

    .line 8
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 9
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 11
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native recalcAabb(J)V
.end method


# virtual methods
.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljf/h;->C(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public copyVertex(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public copyVertices()[F
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object v4, v4, v2

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    iget v6, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public countMeshVertices()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v0, v0

    return v0
.end method

.method public getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iget v5, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    iput v4, p1, Lcom/jme3/math/Vector3f;->x:F

    :cond_1
    iget v4, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iget v5, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    iput v4, p1, Lcom/jme3/math/Vector3f;->y:F

    :cond_2
    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v3

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iput v3, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public maxRadius()F
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v5

    cmpl-double v7, v5, v2

    if-lez v7, :cond_0

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "simplexPoint1"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    const-string v2, "simplexPoint2"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    const-string v3, "simplexPoint3"

    invoke-interface {p1, v3, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    const-string v4, "simplexPoint4"

    invoke-interface {p1, v4, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    if-nez v2, :cond_0

    filled-new-array {v0}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    filled-new-array {v0, v2}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    filled-new-array {v0, v2, v3}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_2
    filled-new-array {v0, v2, v3, v1}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->recalcAabb(J)V

    return-void
.end method

.method public toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 2

    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>([Lcom/jme3/math/Vector3f;)V

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-object v0
.end method

.method public unscaledVolume()F
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    aget-object v0, v0, v2

    invoke-static {v1, v3, v4, v0}, Ljf/i;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "simplexPoint1"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-object v0, v0, v3

    const-string v3, "simplexPoint2"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_0
    const/4 v0, 0x2

    if-le v1, v0, :cond_1

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object v0, v3, v0

    const-string v3, "simplexPoint3"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_1
    const/4 v0, 0x3

    if-le v1, v0, :cond_2

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->locations:[Lcom/jme3/math/Vector3f;

    aget-object v0, v1, v0

    const-string v1, "simplexPoint4"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_2
    return-void
.end method
