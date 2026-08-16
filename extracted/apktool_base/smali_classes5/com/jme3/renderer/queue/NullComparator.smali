.class public Lcom/jme3/renderer/queue/NullComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

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

    .line 2
    check-cast p1, Lcom/jme3/scene/Geometry;

    check-cast p2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/NullComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result p1

    return p1
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0

    return-void
.end method
