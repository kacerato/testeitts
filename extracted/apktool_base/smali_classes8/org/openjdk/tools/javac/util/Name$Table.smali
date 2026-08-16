.class public abstract Lorg/openjdk/tools/javac/util/Name$Table;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Table"
.end annotation


# instance fields
.field public final names:Lorg/openjdk/tools/javac/util/Names;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Names;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    return-void
.end method

.method public static equals([BI[BII)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static hashValue([BII)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    shl-int/lit8 v2, v1, 0x5

    sub-int/2addr v2, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, p1

    move p1, v3

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract fromChars([CII)Lorg/openjdk/tools/javac/util/Name;
.end method

.method public fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/util/Name$Table;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public fromUtf([B)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/util/Name$Table;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public abstract fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;
.end method
