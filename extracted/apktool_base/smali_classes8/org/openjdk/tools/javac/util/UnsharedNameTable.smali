.class public Lorg/openjdk/tools/javac/util/UnsharedNameTable;
.super Lorg/openjdk/tools/javac/util/Name$Table;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;,
        Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;
    }
.end annotation


# instance fields
.field private hashMask:I

.field private hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

.field public index:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Names;)V
    .locals 1

    const v0, 0x8000

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/UnsharedNameTable;-><init>(Lorg/openjdk/tools/javac/util/Names;I)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Names;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Name$Table;-><init>(Lorg/openjdk/tools/javac/util/Names;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    add-int/lit8 p1, p2, -0x1

    .line 3
    iput p1, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashMask:I

    .line 4
    new-array p1, p2, [Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    return-void
.end method

.method public static create(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/Name$Table;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/UnsharedNameTable;-><init>(Lorg/openjdk/tools/javac/util/Names;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    return-void
.end method

.method public fromChars([CII)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    mul-int/lit8 v0, p3, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Lorg/openjdk/tools/javac/util/Convert;->chars2utf([CI[BII)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;
    .locals 6

    invoke-static {p1, p2, p3}, Lorg/openjdk/tools/javac/util/Name$Table;->hashValue([BII)I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashMask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v1

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;

    if-nez v5, :cond_1

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    aput-object v4, v2, v0

    move-object v2, v4

    goto :goto_1

    :cond_0
    const-string v4, "previousNonNullTableEntry cannot be null here."

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    iput-object v4, v3, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->getByteLength()I

    move-result v3

    if-ne v3, p3, :cond_2

    iget-object v3, v5, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    invoke-static {v3, v4, p1, p2, p3}, Lorg/openjdk/tools/javac/util/Name$Table;->equals([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v5

    :cond_2
    move-object v3, v1

    :goto_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    goto :goto_0

    :cond_3
    new-array v1, p3, [B

    invoke-static {p1, p2, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;

    iget p2, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->index:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->index:I

    invoke-direct {p1, p0, v1, p2}, Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;-><init>(Lorg/openjdk/tools/javac/util/UnsharedNameTable;[BI)V

    new-instance p2, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;-><init>(Lorg/openjdk/tools/javac/util/UnsharedNameTable$NameImpl;)V

    if-nez v3, :cond_4

    iget-object p3, p0, Lorg/openjdk/tools/javac/util/UnsharedNameTable;->hashes:[Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    aput-object p2, p3, v0

    goto :goto_2

    :cond_4
    iget-object p3, v3, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    const-string v0, "previousNonNullTableEntry.next must be null."

    invoke-static {p3, v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v3, Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lorg/openjdk/tools/javac/util/UnsharedNameTable$HashEntry;

    :goto_2
    return-object p1
.end method
