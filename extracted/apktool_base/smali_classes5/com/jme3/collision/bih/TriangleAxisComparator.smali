.class public Lcom/jme3/collision/bih/TriangleAxisComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jme3/collision/bih/BIHTriangle;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final axis:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/collision/bih/TriangleAxisComparator;->axis:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/collision/bih/BIHTriangle;Lcom/jme3/collision/bih/BIHTriangle;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/jme3/collision/bih/BIHTriangle;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/jme3/collision/bih/BIHTriangle;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 4
    iget v0, p0, Lcom/jme3/collision/bih/TriangleAxisComparator;->axis:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v1

    .line 5
    :cond_0
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 6
    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 8
    iget p2, p2, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 10
    iget p2, p2, Lcom/jme3/math/Vector3f;->x:F

    :goto_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_3

    return v2

    :cond_3
    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    return v1
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
    check-cast p1, Lcom/jme3/collision/bih/BIHTriangle;

    check-cast p2, Lcom/jme3/collision/bih/BIHTriangle;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/collision/bih/TriangleAxisComparator;->compare(Lcom/jme3/collision/bih/BIHTriangle;Lcom/jme3/collision/bih/BIHTriangle;)I

    move-result p1

    return p1
.end method
