.class Lcom/jme3/light/LightList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/light/LightList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jme3/light/Light;",
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
.method public compare(Lcom/jme3/light/Light;Lcom/jme3/light/Light;)I
    .locals 1

    .line 2
    iget p1, p1, Lcom/jme3/light/Light;->lastDistance:F

    iget p2, p2, Lcom/jme3/light/Light;->lastDistance:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
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

    .line 1
    check-cast p1, Lcom/jme3/light/Light;

    check-cast p2, Lcom/jme3/light/Light;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/light/LightList$1;->compare(Lcom/jme3/light/Light;Lcom/jme3/light/Light;)I

    move-result p1

    return p1
.end method
