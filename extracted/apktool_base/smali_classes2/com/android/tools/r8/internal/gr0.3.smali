.class public Lcom/android/tools/r8/internal/gr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/gr0$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:[C

.field public static final c:I

.field public static final d:I

.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "by"

    const-string v11, "do"

    const-string v0, "boolean"

    const-string v1, "byte"

    const-string v2, "char"

    const-string v3, "double"

    const-string v4, "float"

    const-string v5, "int"

    const-string v6, "long"

    const-string v7, "short"

    const-string v8, "void"

    const-string v9, "it"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sput-object v1, Lcom/android/tools/r8/internal/gr0;->a:Ljava/util/HashSet;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/gr0;->b:[C

    array-length v0, v0

    sput v0, Lcom/android/tools/r8/internal/gr0;->c:I

    add-int/lit8 v0, v0, -0x1a

    sput v0, Lcom/android/tools/r8/internal/gr0;->d:I

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/gr0$a;)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/android/tools/r8/internal/zq0;->a:[C

    sget-object v1, Lcom/android/tools/r8/internal/gr0$a;->b:Lcom/android/tools/r8/internal/gr0$a;

    if-ne p1, v1, :cond_0

    sget p1, Lcom/android/tools/r8/internal/gr0;->c:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/tools/r8/internal/gr0;->d:I

    :goto_0
    add-int/lit8 v1, p1, -0xa

    const/4 v2, 0x1

    move v3, p0

    move v4, v1

    move v5, v2

    :goto_1
    if-le v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v4

    add-int/lit8 v5, v5, 0x1

    move v4, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    const/16 v4, 0xa

    move v5, v3

    :goto_2
    if-le p0, v1, :cond_2

    add-int/lit8 v6, v5, 0x1

    sget-object v7, Lcom/android/tools/r8/internal/gr0;->b:[C

    add-int/lit8 p0, p0, -0x1

    rem-int v8, p0, v1

    add-int/2addr v8, v4

    aget-char v4, v7, v8

    aput-char v4, v0, v5

    div-int/2addr p0, v1

    move v1, p1

    move v4, v3

    move v5, v6

    goto :goto_2

    :cond_2
    add-int/lit8 p1, v5, 0x1

    sget-object v1, Lcom/android/tools/r8/internal/gr0;->b:[C

    sub-int/2addr p0, v2

    add-int/2addr p0, v4

    aget-char p0, v1, p0

    aput-char p0, v0, v5

    sget-boolean p0, Lcom/android/tools/r8/internal/gr0;->e:Z

    if-nez p0, :cond_4

    array-length v1, v0

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_3
    if-nez p0, :cond_6

    aget-char p0, v0, v3

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
