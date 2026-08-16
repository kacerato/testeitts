.class Lcom/ardor3d/intersection/PickResults$DistanceComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/intersection/PickResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ardor3d/intersection/PickData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/intersection/PickResults$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/intersection/PickResults$DistanceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ardor3d/intersection/PickData;Lcom/ardor3d/intersection/PickData;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/intersection/PickData;->getIntersectionRecord()Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/intersection/IntersectionRecord;->getClosestDistance()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ardor3d/intersection/PickData;->getIntersectionRecord()Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/intersection/IntersectionRecord;->getClosestDistance()D

    move-result-wide p1

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/intersection/PickData;

    check-cast p2, Lcom/ardor3d/intersection/PickData;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/intersection/PickResults$DistanceComparator;->compare(Lcom/ardor3d/intersection/PickData;Lcom/ardor3d/intersection/PickData;)I

    move-result p1

    return p1
.end method
