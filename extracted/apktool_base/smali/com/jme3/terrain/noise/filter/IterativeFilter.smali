.class public Lcom/jme3/terrain/noise/filter/IterativeFilter;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"


# instance fields
.field private filter:Lcom/jme3/terrain/noise/Filter;

.field private iterations:I

.field private postIterateFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/noise/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private preIterateFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/noise/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->preIterateFilters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->postIterateFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPostIterateFilter(Lcom/jme3/terrain/noise/Filter;)Lcom/jme3/terrain/noise/filter/IterativeFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->postIterateFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPreIterateFilter(Lcom/jme3/terrain/noise/Filter;)Lcom/jme3/terrain/noise/filter/IterativeFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->preIterateFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->iterations:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->preIterateFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, p4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/jme3/terrain/noise/Filter;

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/jme3/terrain/noise/Filter;->doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v6

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->filter:Lcom/jme3/terrain/noise/Filter;

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/jme3/terrain/noise/Filter;->doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object p4

    iget-object v1, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->postIterateFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, p4

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/jme3/terrain/noise/Filter;

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/jme3/terrain/noise/Filter;->doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v6

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object p4, v6

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method public getIterations()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->iterations:I

    return v0
.end method

.method public getMargin(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->preIterateFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/noise/Filter;

    invoke-interface {v1, p1, p2}, Lcom/jme3/terrain/noise/Filter;->getMargin(II)I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->filter:Lcom/jme3/terrain/noise/Filter;

    invoke-interface {v0, p1, p2}, Lcom/jme3/terrain/noise/Filter;->getMargin(II)I

    move-result p2

    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->postIterateFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/noise/Filter;

    invoke-interface {v1, p1, p2}, Lcom/jme3/terrain/noise/Filter;->getMargin(II)I

    move-result p2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->iterations:I

    mul-int/2addr v0, p2

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public setFilter(Lcom/jme3/terrain/noise/Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->filter:Lcom/jme3/terrain/noise/Filter;

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/IterativeFilter;->iterations:I

    return-void
.end method
