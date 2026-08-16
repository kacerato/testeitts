.class public Lcom/ardor3d/util/stat/MultiStatSample;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _elapsedTime:D

.field private final _values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ardor3d/util/stat/StatType;",
            "Lcom/ardor3d/util/stat/StatValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_values:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_elapsedTime:D

    return-void
.end method

.method public static createNew(Ljava/util/HashMap;)Lcom/ardor3d/util/stat/MultiStatSample;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/ardor3d/util/stat/StatType;",
            "Lcom/ardor3d/util/stat/StatValue;",
            ">;)",
            "Lcom/ardor3d/util/stat/MultiStatSample;"
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/util/stat/MultiStatSample;

    invoke-direct {v0}, Lcom/ardor3d/util/stat/MultiStatSample;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/stat/StatValue;

    invoke-virtual {v3}, Lcom/ardor3d/util/stat/StatValue;->getIterations()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    new-instance v4, Lcom/ardor3d/util/stat/StatValue;

    invoke-direct {v4, v3}, Lcom/ardor3d/util/stat/StatValue;-><init>(Lcom/ardor3d/util/stat/StatValue;)V

    iget-object v3, v0, Lcom/ardor3d/util/stat/MultiStatSample;->_values:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public containsStat(Lcom/ardor3d/util/stat/StatType;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getElapsedTime()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_elapsedTime:D

    return-wide v0
.end method

.method public getStatTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ardor3d/util/stat/StatType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStatValue(Lcom/ardor3d/util/stat/StatType;)Lcom/ardor3d/util/stat/StatValue;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/stat/StatValue;

    return-object p1
.end method

.method public setTimeElapsed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/util/stat/MultiStatSample;->_elapsedTime:D

    return-void
.end method
