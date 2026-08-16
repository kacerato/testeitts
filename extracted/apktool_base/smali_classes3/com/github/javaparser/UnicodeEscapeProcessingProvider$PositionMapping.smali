.class public final Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/UnicodeEscapeProcessingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;,
        Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
    }
.end annotation


# instance fields
.field private final _deltas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;",
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

    iput-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "column",
            "lineDelta",
            "columnDelta"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lookup(Lcom/github/javaparser/Position;)Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-object p1

    :cond_0
    neg-int p1, p1

    add-int/lit8 v0, p1, -0x1

    if-nez v0, :cond_1

    sget-object p1, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->NONE:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    add-int/lit8 p1, p1, -0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-object p1
.end method

.method public transform(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Position;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->lookup(Lcom/github/javaparser/Position;)Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->transform(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Position;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Range;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->transform(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Position;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->transform(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Position;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    if-ne v1, v2, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/github/javaparser/Range;

    invoke-direct {p1, v0, v1}, Lcom/github/javaparser/Range;-><init>(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)V

    return-object p1
.end method
