.class public final Lorg/blacksquircle/ui/editorkit/model/LinesCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;",
        ">;",
        "LNf/a;"
    }
.end annotation


# instance fields
.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;-><init>(I)V

    filled-new-array {v0}, [Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    move-result-object v0

    invoke-static {v0}, Lpf/H;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(II)V
    .locals 2

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    new-instance v1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    invoke-direct {v1, p2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    new-instance v1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getIndexForEndOfLine(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final getIndexForLine(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->getStart()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getIndexForStartOfLine(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result p1

    return p1
.end method

.method public final getLine(I)Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    return-object p1

    :cond_0
    new-instance p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;-><init>(I)V

    return-object p1
.end method

.method public final getLineCount()I
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLineForIndex(I)I
    .locals 4

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final shiftIndexes(II)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    :goto_0
    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getLineCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->getIndexForLine(I)I

    move-result v0

    add-int/2addr v0, p2

    if-lez p1, :cond_2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->remove(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection;->lines:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    invoke-virtual {v1, v0}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->setStart(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
