.class public Lcom/github/javaparser/Position;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/github/javaparser/Position;",
        ">;"
    }
.end annotation


# static fields
.field public static final ABSOLUTE_BEGIN_LINE:I = -0x1

.field public static final ABSOLUTE_END_LINE:I = -0x2

.field public static final FIRST_COLUMN:I = 0x1

.field public static final FIRST_LINE:I = 0x1

.field public static final HOME:Lcom/github/javaparser/Position;


# instance fields
.field public final column:I

.field public final line:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/javaparser/Position;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/github/javaparser/Position;-><init>(II)V

    sput-object v0, Lcom/github/javaparser/Position;->HOME:Lcom/github/javaparser/Position;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "column"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    if-lt p1, v0, :cond_1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iput p1, p0, Lcom/github/javaparser/Position;->line:I

    iput p2, p0, Lcom/github/javaparser/Position;->column:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t position at column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t position at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static pos(II)Lcom/github/javaparser/Position;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "column"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/github/javaparser/Position;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/github/javaparser/Position;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPosition"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->isAfter(Lcom/github/javaparser/Position;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "otherPosition"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/Position;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->compareTo(Lcom/github/javaparser/Position;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/github/javaparser/Position;

    iget v2, p0, Lcom/github/javaparser/Position;->line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/github/javaparser/Position;->line:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/github/javaparser/Position;->column:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/github/javaparser/Position;->column:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/github/javaparser/Position;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/github/javaparser/Position;->column:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/Position;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAfter(Lcom/github/javaparser/Position;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPosition"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/github/javaparser/Position;->line:I

    iget v1, p1, Lcom/github/javaparser/Position;->line:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/github/javaparser/Position;->column:I

    iget p1, p1, Lcom/github/javaparser/Position;->column:I

    if-le v0, p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    if-gt v0, v1, :cond_2

    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public isAfterOrEqual(Lcom/github/javaparser/Position;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPosition"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->isAfter(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isBefore(Lcom/github/javaparser/Position;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPosition"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/github/javaparser/Position;->line:I

    iget v1, p1, Lcom/github/javaparser/Position;->line:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/github/javaparser/Position;->column:I

    iget p1, p1, Lcom/github/javaparser/Position;->column:I

    if-ge v0, p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    if-lt v0, v1, :cond_2

    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public isBeforeOrEqual(Lcom/github/javaparser/Position;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPosition"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public nextLine()Lcom/github/javaparser/Position;
    .locals 3

    new-instance v0, Lcom/github/javaparser/Position;

    iget v1, p0, Lcom/github/javaparser/Position;->line:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public orIfInvalid(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Position;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alternativePosition"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/javaparser/Position;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/Position;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public right(I)Lcom/github/javaparser/Position;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "characters"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/Position;

    iget v1, p0, Lcom/github/javaparser/Position;->line:I

    iget v2, p0, Lcom/github/javaparser/Position;->column:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/Position;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",col "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/Position;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()Z
    .locals 3

    iget v0, p0, Lcom/github/javaparser/Position;->line:I

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eq v2, v0, :cond_1

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/github/javaparser/Position;->column:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public withColumn(I)Lcom/github/javaparser/Position;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/Position;

    iget v1, p0, Lcom/github/javaparser/Position;->line:I

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public withLine(I)Lcom/github/javaparser/Position;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/Position;

    iget v1, p0, Lcom/github/javaparser/Position;->column:I

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method
