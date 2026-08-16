.class public Lorg/openjdk/tools/javac/util/Position;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;,
        Lorg/openjdk/tools/javac/util/Position$LineMapImpl;,
        Lorg/openjdk/tools/javac/util/Position$LineMap;
    }
.end annotation


# static fields
.field public static final FIRSTCOLUMN:I = 0x1

.field public static final FIRSTLINE:I = 0x1

.field public static final FIRSTPOS:I = 0x0

.field public static final LINESHIFT:I = 0xa

.field public static final MAXCOLUMN:I = 0x3ff

.field public static final MAXLINE:I = 0x3fffff

.field public static final MAXPOS:I = 0x7fffffff

.field public static final NOPOS:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodePosition(II)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    if-lt p1, v0, :cond_2

    const v0, 0x3fffff

    if-gt p0, v0, :cond_1

    const/16 v0, 0x3ff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "line must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeLineMap([CIZ)Lorg/openjdk/tools/javac/util/Position$LineMap;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;-><init>()V

    :goto_0
    invoke-virtual {p2, p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->build([CI)V

    return-object p2
.end method
