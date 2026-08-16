.class Lcom/jme3/bullet/CollisionSpace$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/bullet/CollisionSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/bullet/collision/PhysicsRayTestResult;Lcom/jme3/bullet/collision/PhysicsRayTestResult;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitFraction()F

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitFraction()F

    move-result p2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    check-cast p2, Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/CollisionSpace$1;->compare(Lcom/jme3/bullet/collision/PhysicsRayTestResult;Lcom/jme3/bullet/collision/PhysicsRayTestResult;)I

    move-result p1

    return p1
.end method
