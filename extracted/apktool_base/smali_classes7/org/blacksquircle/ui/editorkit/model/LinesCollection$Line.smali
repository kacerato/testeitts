.class public final Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/editorkit/model/LinesCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Line"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;",
        ">;"
    }
.end annotation


# instance fields
.field private start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;IILjava/lang/Object;)Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    :cond_0
    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->copy(I)Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->compareTo(Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;)I
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    iget p1, p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    return v0
.end method

.method public final copy(I)Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    invoke-direct {v0, p1}, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    iget p1, p1, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getStart()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public final setStart(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/model/LinesCollection$Line;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
