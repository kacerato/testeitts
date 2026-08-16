.class public abstract Lorg/openjdk/tools/javac/util/Name;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/Name;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Name$Table;
    }
.end annotation


# instance fields
.field public final table:Lorg/openjdk/tools/javac/util/Name$Table;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name$Table;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    return-void
.end method


# virtual methods
.method public append(CLorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;
    .locals 5

    .line 6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v2

    add-int/2addr v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 8
    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/util/Name;->getBytes([BI)V

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v3, v0

    .line 10
    invoke-virtual {p2, v3, v1}, Lorg/openjdk/tools/javac/util/Name;->getBytes([BI)V

    .line 11
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    invoke-virtual {p1, v3, v4, v2}, Lorg/openjdk/tools/javac/util/Name$Table;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public append(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v1

    add-int/2addr v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/util/Name;->getBytes([BI)V

    .line 4
    invoke-virtual {p1, v2, v0}, Lorg/openjdk/tools/javac/util/Name;->getBytes([BI)V

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    invoke-virtual {p1, v2, v3, v1}, Lorg/openjdk/tools/javac/util/Name$Table;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjdk/tools/javac/util/Name;)I
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getByteArray()[B
.end method

.method public abstract getByteAt(I)B
.end method

.method public abstract getByteLength()I
.end method

.method public abstract getByteOffset()I
.end method

.method public getBytes([BI)V
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public abstract getIndex()I
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(B)I
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    add-int v3, v1, v2

    aget-byte v3, v0, v3

    if-eq v3, p1, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public startsWith(Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result p1

    const/4 v5, 0x0

    if-ge v2, p1, :cond_0

    return v5

    :cond_0
    move v2, v5

    :goto_0
    if-ge v2, p1, :cond_1

    add-int v6, v1, v2

    aget-byte v6, v0, v6

    add-int v7, v4, v2

    aget-byte v7, v3, v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public subName(II)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    if-ge p2, p1, :cond_0

    move p2, p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v2

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, v2, p2}, Lorg/openjdk/tools/javac/util/Name$Table;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUtf()[B
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Name;->getBytes([BI)V

    return-object v0
.end method
