.class public Lcom/jme3/terrain/noise/basis/FilteredBasis;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/noise/Basis;


# instance fields
.field private basis:Lcom/jme3/terrain/noise/Basis;

.field private modulators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/noise/modulator/Modulator;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->modulators:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/noise/Basis;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->modulators:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->basis:Lcom/jme3/terrain/noise/Basis;

    return-void
.end method


# virtual methods
.method public addModulator(Lcom/jme3/terrain/noise/modulator/Modulator;)Lcom/jme3/terrain/noise/Basis;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->modulators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clip(Ljava/nio/FloatBuffer;III)Ljava/nio/FloatBuffer;
    .locals 3

    mul-int v0, p3, p3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p1

    move v1, p4

    :goto_0
    add-int v2, p4, p3

    if-ge v1, v2, :cond_0

    mul-int v2, v1, p2

    add-int/2addr v2, p4

    invoke-virtual {v0, p1, v2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 0

    return-object p4
.end method

.method public getBasis()Lcom/jme3/terrain/noise/Basis;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->basis:Lcom/jme3/terrain/noise/Basis;

    return-object v0
.end method

.method public getBuffer(FFFI)Ljava/nio/FloatBuffer;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    iget-object v2, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->basis:Lcom/jme3/terrain/noise/Basis;

    int-to-float v3, v0

    sub-float v4, p1, v3

    sub-float v3, p2, v3

    invoke-interface {v2, v4, v3, p3, v1}, Lcom/jme3/terrain/noise/Basis;->getBuffer(FFFI)Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, v1, p4, v0}, Lcom/jme3/terrain/noise/basis/FilteredBasis;->clip(Ljava/nio/FloatBuffer;III)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->scale:F

    return v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->basis:Lcom/jme3/terrain/noise/Basis;

    invoke-interface {v0}, Lcom/jme3/terrain/noise/Basis;->init()V

    return-void
.end method

.method public setBasis(Lcom/jme3/terrain/noise/Basis;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->basis:Lcom/jme3/terrain/noise/Basis;

    return-void
.end method

.method public setScale(F)Lcom/jme3/terrain/noise/Basis;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/basis/FilteredBasis;->scale:F

    return-object p0
.end method

.method public value(FFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Method value cannot be called on FilteredBasis and its descendants. Use getBuffer instead!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
