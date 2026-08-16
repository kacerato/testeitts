.class Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/CRTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceRange"
.end annotation


# instance fields
.field endPos:I

.field startPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    .line 3
    iput v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    .line 6
    iput p2, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    return-void
.end method


# virtual methods
.method public mergeWith(Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    goto :goto_1

    :cond_1
    iget v2, p1, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    if-eq v2, v1, :cond_3

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    :cond_3
    :goto_1
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    if-ne v0, v1, :cond_4

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    goto :goto_3

    :cond_4
    iget p1, p1, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    if-eq p1, v1, :cond_6

    if-le v0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, p1

    :goto_2
    iput v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    :cond_6
    :goto_3
    return-object p0
.end method
