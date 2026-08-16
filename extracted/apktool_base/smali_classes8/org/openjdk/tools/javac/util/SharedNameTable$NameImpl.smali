.class Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;
.super Lorg/openjdk/tools/javac/util/Name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/SharedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameImpl"
.end annotation


# instance fields
.field index:I

.field length:I

.field next:Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/SharedNameTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Name;-><init>(Lorg/openjdk/tools/javac/util/Name$Table;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/util/Name;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    check-cast p1, Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getByteArray()[B
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    check-cast v0, Lorg/openjdk/tools/javac/util/SharedNameTable;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/SharedNameTable;->bytes:[B

    return-object v0
.end method

.method public getByteAt(I)B
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->getByteArray()[B

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public getByteLength()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->length:I

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/SharedNameTable$NameImpl;->index:I

    return v0
.end method
