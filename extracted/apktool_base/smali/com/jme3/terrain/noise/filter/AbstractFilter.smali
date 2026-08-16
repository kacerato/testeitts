.class public abstract Lcom/jme3/terrain/noise/filter/AbstractFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/noise/Filter;


# instance fields
.field private enabled:Z

.field protected postFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/noise/Filter;",
            ">;"
        }
    .end annotation
.end field

.field protected preFilters:Ljava/util/List;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->preFilters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->postFilters:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->enabled:Z

    return-void
.end method


# virtual methods
.method public addPostFilter(Lcom/jme3/terrain/noise/Filter;)Lcom/jme3/terrain/noise/Filter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->postFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPreFilter(Lcom/jme3/terrain/noise/Filter;)Lcom/jme3/terrain/noise/Filter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->preFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->preFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, p4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/jme3/terrain/noise/Filter;

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/jme3/terrain/noise/Filter;->doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object p4

    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->postFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, p4

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/jme3/terrain/noise/Filter;

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/jme3/terrain/noise/Filter;->doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v5

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public abstract filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
.end method

.method public getMargin(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->preFilters:Ljava/util/List;

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
    iget-object v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->postFilters:Ljava/util/List;

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
    return p2
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/terrain/noise/filter/AbstractFilter;->enabled:Z

    return-void
.end method
