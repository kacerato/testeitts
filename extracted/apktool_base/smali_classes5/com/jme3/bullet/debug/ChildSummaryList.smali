.class Lcom/jme3/bullet/debug/ChildSummaryList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/debug/ChildSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/ChildSummaryList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/ChildSummaryList;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public countValid()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/debug/ChildSummary;

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/ChildSummary;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/ChildSummaryList;->countValid()I

    move-result v2

    check-cast p1, Lcom/jme3/bullet/debug/ChildSummaryList;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/ChildSummaryList;->countValid()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/debug/ChildSummary;

    iget-object v5, p1, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/bullet/debug/ChildSummary;

    invoke-virtual {v4, v5}, Lcom/jme3/bullet/debug/ChildSummary;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v0, v1

    :cond_4
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/ChildSummaryList;->countValid()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/debug/ChildSummary;

    mul-int/lit8 v1, v1, 0x2f

    invoke-virtual {v3}, Lcom/jme3/bullet/debug/ChildSummary;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public update(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p1

    array-length v0, p1

    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    new-instance v2, Lcom/jme3/bullet/debug/ChildSummary;

    invoke-direct {v2}, Lcom/jme3/bullet/debug/ChildSummary;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/jme3/bullet/debug/ChildSummaryList;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/debug/ChildSummary;

    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/debug/ChildSummary;->update(Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/debug/ChildSummary;->update(Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
