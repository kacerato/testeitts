.class public Lcom/ardor3d/util/geom/VertGroupData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_GROUP:I


# instance fields
.field private final _groupConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;>;"
        }
    .end annotation
.end field

.field private _vertGroups:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/geom/VertGroupData;->_groupConditions:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/util/geom/VertGroupData;->_vertGroups:[J

    return-void
.end method


# virtual methods
.method public getGroupConditions(J)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertGroupData;->_groupConditions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumSet;

    return-object p1
.end method

.method public getGroupForVertex(I)J
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertGroupData;->_vertGroups:[J

    if-eqz v0, :cond_0

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setGroupConditions(JLjava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/util/geom/GeometryTool$MatchCondition;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertGroupData;->_groupConditions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVertGroups([J)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/geom/VertGroupData;->_vertGroups:[J

    return-void
.end method
