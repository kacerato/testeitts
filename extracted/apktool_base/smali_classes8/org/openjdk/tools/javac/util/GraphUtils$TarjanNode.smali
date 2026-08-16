.class public abstract Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;
.super Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TarjanNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "N:",
        "Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode<",
        "TD;TN;>;>",
        "Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode<",
        "TD;TN;>;",
        "Ljava/lang/Comparable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field active:Z

.field index:I

.field lowlink:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;-><init>(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->compareTo(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    iget p1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public abstract getAllDependencies()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+TN;>;"
        }
    .end annotation
.end method
