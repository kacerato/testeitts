.class Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;
.super Lorg/openjdk/tools/javac/util/Name;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/UnsharedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameImpl"
.end annotation


# instance fields
.field final bytes:[B

.field final index:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/UnsharedNameTable;[BI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Name;-><init>(Lorg/openjdk/tools/javac/util/Name$Table;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    iput p3, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->index:I

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    return-object v0
.end method

.method public getByteAt(I)B
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->index:I

    return v0
.end method
