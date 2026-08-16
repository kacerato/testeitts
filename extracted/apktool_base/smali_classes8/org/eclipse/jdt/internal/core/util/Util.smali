.class public Lorg/eclipse/jdt/internal/core/util/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;,
        Lorg/eclipse/jdt/internal/core/util/Util$Comparable;,
        Lorg/eclipse/jdt/internal/core/util/Util$Comparer;
    }
.end annotation


# static fields
.field private static final ARGUMENTS_DELIMITER:C = '#'

.field private static final BOOLEAN:[C

.field private static final BYTE:[C

.field private static final CHAR:[C

.field private static final DOUBLE:[C

.field private static final EMPTY_ARGUMENT:Ljava/lang/String; = "   "

.field private static final FLOAT:[C

.field private static final INIT:[C

.field private static final INT:[C

.field private static JAVA_LIKE_EXTENSIONS:[[C = null

.field private static final LONG:[C

.field private static final SHORT:[C

.field private static final TASK_PRIORITIES_PROBLEM:Ljava/lang/String; = "TASK_PRIORITIES_PB"

.field private static final VOID:[C

.field private static fgRepeatedMessages:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "boolean"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->BOOLEAN:[C

    const-string v0, "byte"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->BYTE:[C

    const-string v0, "char"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->CHAR:[C

    const-string v0, "double"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->DOUBLE:[C

    const-string v0, "float"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->FLOAT:[C

    const-string v0, "int"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->INT:[C

    const-string v0, "long"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->LONG:[C

    const-string v0, "short"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->SHORT:[C

    const-string v0, "void"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->VOID:[C

    const-string v0, "<init>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->INIT:[C

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->fgRepeatedMessages:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendArrayTypeSignature([CILjava/lang/StringBuffer;Z)V
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    aget-char v1, p0, p1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    aget-char v3, p0, v1

    :goto_0
    if-eq v3, v2, :cond_1

    invoke-static {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignature([CILjava/lang/StringBuffer;Z)V

    sub-int v3, v1, p1

    const/4 p0, 0x0

    :goto_1
    if-lt p0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    aget-char v3, p0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseUnexpectedCharacterException([CIC)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static appendArrayTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I
    .locals 6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    aget-char v2, p0, p1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p1, 0x1

    aget-char v4, p0, v2

    :goto_0
    if-eq v4, v3, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v2, p2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    move-result v4

    sub-int v5, v2, p1

    :goto_1
    const/16 p0, 0x5d

    if-lt v1, v5, :cond_1

    if-eqz p3, :cond_0

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    return v4

    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget-char v4, p0, v2

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseUnexpectedCharacterException([CIC)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static appendCaptureTypeSignatureForAnchor([CILjava/lang/StringBuffer;)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    aget-char v0, p0, p1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeArgumentSignatureForAnchor([CILjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseUnexpectedCharacterException([CIC)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static appendClassTypeSignature([CILjava/lang/StringBuffer;Z)V
    .locals 4

    aget-char v0, p0, p1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    :goto_0
    aget-char v1, p0, p1

    const/16 v2, 0x24

    const/16 v3, 0x2e

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static appendClassTypeSignatureForAnchor([CILjava/lang/StringBuffer;)I
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_8

    aget-char v0, p0, p1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseUnexpectedCharacterException([CIC)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v0, p1, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_7

    aget-char v1, p0, v0

    const/16 v2, 0x24

    const/16 v3, 0x2e

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_5

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->scanGenericEnd([CI)I

    move-result v0

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static appendTypeArgumentSignatureForAnchor([CILjava/lang/StringBuffer;)I
    .locals 3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    aget-char v0, p0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    move-result p0

    return p0

    :cond_2
    return p1

    :cond_3
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static appendTypeSignature([CILjava/lang/StringBuffer;Z)V
    .locals 2

    aget-char v0, p0, p1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_8

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x56

    if-eq v0, v1, :cond_6

    const/16 v1, 0x49

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->DOUBLE:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->CHAR:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->BYTE:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->appendArrayTypeSignature([CILjava/lang/StringBuffer;Z)V

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->BOOLEAN:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeVariableSignature([CI)I

    move-result p3

    add-int/lit8 v0, p1, 0x1

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p0, v0, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->SHORT:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->LONG:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->INT:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->VOID:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->appendClassTypeSignature([CILjava/lang/StringBuffer;Z)V

    goto :goto_0

    :cond_8
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->FLOAT:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I
    .locals 3

    array-length v0, p0

    if-ge p1, v0, :cond_d

    aget-char v0, p0, p1

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendArrayTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseUnexpectedCharacterException([CIC)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p3, 0x21

    if-eq v0, p3, :cond_c

    const/16 p3, 0x2d

    if-eq v0, p3, :cond_b

    const/16 p3, 0x46

    if-eq v0, p3, :cond_a

    const/16 p3, 0x4c

    if-eq v0, p3, :cond_9

    const/16 p3, 0x56

    if-eq v0, p3, :cond_8

    const/16 p3, 0x2a

    if-eq v0, p3, :cond_b

    const/16 p3, 0x2b

    if-eq v0, p3, :cond_b

    const/16 p3, 0x49

    if-eq v0, p3, :cond_7

    const/16 p3, 0x4a

    if-eq v0, p3, :cond_6

    const/16 p3, 0x53

    if-eq v0, p3, :cond_5

    const/16 p3, 0x54

    if-eq v0, p3, :cond_4

    const/16 p3, 0x5a

    if-eq v0, p3, :cond_3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->DOUBLE:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :pswitch_1
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->CHAR:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :pswitch_2
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->BYTE:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_2
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->appendArrayTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->BOOLEAN:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_4
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeVariableSignature([CI)I

    move-result p3

    add-int/lit8 v0, p1, 0x1

    sub-int p1, p3, p1

    sub-int/2addr p1, v2

    invoke-virtual {p2, p0, v0, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return p3

    :cond_5
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->SHORT:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->LONG:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_7
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->INT:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_8
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->VOID:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_9
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendClassTypeSignatureForAnchor([CILjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_a
    sget-object p0, Lorg/eclipse/jdt/internal/core/util/Util;->FLOAT:[C

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    :cond_b
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeArgumentSignatureForAnchor([CILjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_c
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->appendCaptureTypeSignatureForAnchor([CILjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_d
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final arrayConcat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    array-length v0, p0

    array-length v1, p0

    if-nez v1, :cond_2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v0

    return-object v1
.end method

.method private static checkTypeSignature(Ljava/lang/String;IIZ)I
    .locals 5

    const/4 v0, -0x1

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-eq p1, v3, :cond_7

    const/16 v3, 0x46

    if-eq p1, v3, :cond_6

    const/16 v3, 0x4c

    if-eq p1, v3, :cond_3

    const/16 p0, 0x53

    if-eq p1, p0, :cond_6

    const/16 p0, 0x56

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_6

    const/16 p0, 0x49

    if-eq p1, p0, :cond_6

    const/16 p0, 0x4a

    if-eq p1, p0, :cond_6

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_1
    if-nez p3, :cond_2

    return v0

    :cond_2
    if-eqz v2, :cond_6

    return v0

    :cond_3
    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-le p0, v1, :cond_5

    if-lt p0, p2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, p0, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    :pswitch_0
    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    if-lt v1, p2, :cond_8

    return v0

    :cond_8
    add-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v1

    move v1, p1

    move p1, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static combineHashCodes(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x11

    add-int/2addr p0, p1

    return p0
.end method

.method public static compare([B[B)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    .line 1
    :cond_2
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_5

    .line 2
    array-length p0, p0

    if-le p0, v3, :cond_3

    return v2

    .line 3
    :cond_3
    array-length p0, p1

    if-le p0, v3, :cond_4

    return v1

    :cond_4
    return v0

    .line 4
    :cond_5
    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    sub-int/2addr v5, v6

    if-eqz v5, :cond_6

    return v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static compare([C[C)I
    .locals 6

    .line 5
    array-length v0, p0

    .line 6
    array-length v1, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-nez v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 8
    :cond_0
    aget-char v2, p0, v3

    add-int/lit8 v5, v3, 0x1

    .line 9
    aget-char v3, p1, v3

    if-eq v2, v3, :cond_1

    sub-int/2addr v2, v3

    return v2

    :cond_1
    move v2, v4

    move v3, v5

    goto :goto_0
.end method

.method public static concatCompoundNameToCharArray([Ljava/lang/String;)[C
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [C

    return-object p0

    :cond_1
    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_4

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    new-array v4, v3, [C

    move v2, v1

    move v3, v2

    :goto_1
    if-lt v2, v0, :cond_2

    return-object v4

    :cond_2
    aget-object v5, p0, v2

    if-lez v2, :cond_3

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x2e

    aput-char v7, v4, v3

    move v3, v6

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final concatWith([Ljava/lang/String;C)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_4

    .line 6
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object p1
.end method

.method public static concatenateName(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertTypeSignature([CII)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    const/16 p0, 0x2f

    const/16 p1, 0x2e

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeArgumentString(ILjava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_1
    new-array v1, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, "   "

    if-lt v5, v3, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :cond_2
    add-int/lit8 v3, v6, 0x1

    aput-object p1, v1, v6

    if-le v3, p0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    invoke-virtual {v2, v4, p0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-object v1

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-eq v8, v9, :cond_5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v5, 0x1

    if-ne v8, v3, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v8

    goto :goto_1

    :cond_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :cond_8
    add-int/lit8 v7, v6, 0x1

    aput-object v8, v1, v6

    if-le v7, p0, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move v6, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static defaultJavaExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".java"

    return-object v0
.end method

.method public static final editedString(Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/text/edits/TextEdit;->apply(Lorg/eclipse/jface/text/IDocument;I)Lorg/eclipse/text/edits/UndoEdit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;->get()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/text/edits/MalformedTreeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jface/text/BadLocationException;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/text/edits/MalformedTreeException;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method private static encodeArgument(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-le v2, v1, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x1

    move v4, v3

    :goto_2
    if-le v4, v2, :cond_3

    return v3

    :cond_3
    sub-int v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v5

    sub-int v6, v1, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_4

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static equalArrays([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    if-lt v1, p2, :cond_5

    array-length v1, p1

    if-ge v1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_0
    if-lt v1, p2, :cond_2

    return v0

    :cond_2
    aget-object v3, p0, v1

    if-nez v3, :cond_3

    aget-object v3, p1, v1

    if-eqz v3, :cond_4

    return v2

    :cond_3
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method public static equalArraysOrNull([I[I)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    array-length v2, p0

    .line 2
    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_3

    return v0

    .line 3
    :cond_3
    aget v4, p0, v3

    aget v5, p1, v3

    if-eq v4, v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public static equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    array-length v2, p0

    .line 5
    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sub-int/2addr v2, v0

    :goto_0
    if-gez v2, :cond_3

    return v0

    .line 6
    :cond_3
    aget-object v3, p0, v2

    if-nez v3, :cond_4

    .line 7
    aget-object v3, p1, v2

    if-eqz v3, :cond_5

    return v1

    .line 8
    :cond_4
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public static equalArraysOrNullSortFirst([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    array-length v2, p0

    .line 7
    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 8
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->sortCopy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->sortCopy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :cond_3
    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_4

    return v0

    .line 10
    :cond_4
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public static equalArraysOrNullSortFirst([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;[Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    array-length v2, p0

    .line 2
    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->sortCopy([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)[Lorg/eclipse/jdt/internal/core/util/Util$Comparable;

    move-result-object p0

    .line 4
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->sortCopy([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)[Lorg/eclipse/jdt/internal/core/util/Util$Comparable;

    move-result-object p1

    :cond_3
    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_4

    return v0

    .line 5
    :cond_4
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public static equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static equalsIgnoreJavaLikeExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_6

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->getJavaLikeExtensions()[[C

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-lt v6, v5, :cond_1

    return v2

    :cond_1
    aget-object v7, v4, v6

    add-int/lit8 v8, v1, 0x1

    array-length p1, v7

    add-int/2addr p1, v8

    if-eq p1, v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x2e

    if-eq p1, v3, :cond_3

    goto :goto_3

    :cond_3
    move p1, v8

    :goto_2
    if-lt p1, v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int v9, p1, v8

    aget-char v9, v7, v9

    if-eq v3, v9, :cond_5

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_7

    return v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static extractLastName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractParameterTypes([C)[Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getParameterCount([C)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x28

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v0

    move v6, v4

    :goto_0
    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-char v7, p0, v0

    const/16 v8, 0x29

    if-ne v7, v8, :cond_2

    :goto_1
    return-object v1

    :cond_2
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0x4c

    if-ne v7, v8, :cond_5

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x3b

    invoke-static {v7, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    add-int/2addr v0, v2

    if-eqz v0, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    invoke-static {v7}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    add-int/lit8 v7, v6, 0x1

    sub-int v8, v0, v5

    invoke-static {p0, v5, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->convertTypeSignature([CII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    :goto_3
    move v5, v0

    move v6, v7

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v6, 0x1

    sub-int v8, v0, v5

    invoke-static {p0, v5, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->convertTypeSignature([CII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    goto :goto_3
.end method

.method public static extractReturnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findFirstClassFile(Lorg/eclipse/core/resources/IFolder;)Lorg/eclipse/core/resources/IFile;
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFolder;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->findFirstClassFile(Lorg/eclipse/core/resources/IFolder;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v2, Lorg/eclipse/core/resources/IFile;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findLineSeparator([C)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    if-lez v0, :cond_5

    const/4 v1, 0x0

    aget-char v2, p0, v1

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-char v3, p0, v3

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    :goto_1
    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v5, 0xd

    if-eq v2, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    const-string p0, "\r\n"

    goto :goto_2

    :cond_3
    const-string p0, "\r"

    :goto_2
    return-object p0

    :cond_4
    const-string p0, "\n"

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findMethod(Lorg/eclipse/jdt/core/IType;[C[Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IMethod;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result p3

    invoke-static {p3}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p3

    if-nez p3, :cond_0

    array-length p3, p2

    const/4 v2, 0x1

    add-int/2addr p3, v2

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_0

    :cond_0
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    move v2, v1

    :goto_0
    array-length v0, p3

    move v3, v2

    :goto_1
    if-lt v3, v0, :cond_2

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, p2, p3}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/IType;->findMethods(Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p2, p0

    if-lez p2, :cond_1

    aget-object p1, p0, v1

    :cond_1
    return-object p1

    :cond_2
    sub-int v4, v3, v2

    aget-object v4, p2, v4

    aput-object v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static fixTaskTags(Ljava/util/Map;)V
    .locals 10

    const-string v0, "org.eclipse.jdt.core.compiler.taskTags"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitAndTrimOn(C[C)[[C

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const-string v2, "org.eclipse.jdt.core.compiler.taskPriorities"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitAndTrimOn(C[C)[[C

    move-result-object v4

    :cond_1
    const/4 v5, 0x4

    const-string v6, "TASK_PRIORITIES_PB"

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    const-string v1, "Inconsistent values for taskTags (not null) and task priorities (null)"

    invoke-static {v6, v5, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->logRepeatedMessage(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    if-nez v1, :cond_4

    const-string v0, "Inconsistent values for taskTags (null) and task priorities (not null)"

    invoke-static {v6, v5, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->logRepeatedMessage(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    array-length v7, v1

    array-length v8, v4

    if-eq v7, v8, :cond_6

    const-string v9, "Inconsistent values for taskTags and task priorities : length is different"

    invoke-static {v6, v5, v9}, Lorg/eclipse/jdt/internal/core/util/Util;->logRepeatedMessage(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    if-le v7, v8, :cond_5

    new-array v2, v8, [[C

    invoke-static {v1, v5, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-array v0, v7, [[C

    invoke-static {v4, v5, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method public static final getAllTypeArguments([[C)[[[C
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getTypeArguments([C)[[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p0, v1, p2}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/core/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    .line 4
    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 5
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/MemberValuePair;->getMemberName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    if-eqz v0, :cond_2

    const/16 p0, 0xb

    .line 7
    iput p0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 8
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object p0

    invoke-static {p0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 10
    :cond_2
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    if-eqz v0, :cond_3

    const/16 p0, 0xc

    .line 11
    iput p0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 12
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    .line 13
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getTypeName()[C

    move-result-object p0

    invoke-static {p0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p0

    .line 14
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p1

    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    .line 15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 16
    :cond_3
    instance-of v0, p2, [Ljava/lang/Object;

    const/16 v1, 0xe

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    .line 17
    iput v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 18
    check-cast p2, [Ljava/lang/Object;

    .line 19
    array-length v2, p2

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v2, :cond_5

    .line 21
    iget p0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-ne p0, v0, :cond_4

    .line 22
    iput v1, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    :cond_4
    return-object v3

    .line 23
    :cond_5
    iget v6, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 24
    aget-object v7, p2, v5

    invoke-static {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/core/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v0, :cond_6

    .line 25
    iget v8, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-eq v8, v6, :cond_6

    .line 26
    iput v1, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 27
    :cond_6
    instance-of v6, v7, Lorg/eclipse/jdt/internal/core/Annotation;

    if-eqz v6, :cond_9

    .line 28
    move-object v6, v7

    check-cast v6, Lorg/eclipse/jdt/internal/core/Annotation;

    move v8, v4

    :goto_1
    if-lt v8, v5, :cond_7

    goto :goto_2

    .line 29
    :cond_7
    aget-object v9, v3, v8

    invoke-virtual {v6, v9}, Lorg/eclipse/jdt/internal/core/Annotation;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 30
    iget v9, v6, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 31
    :cond_9
    :goto_2
    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 32
    :cond_a
    iput v1, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xe

    if-nez p1, :cond_0

    .line 33
    iput v1, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 35
    :pswitch_0
    iput v1, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v0

    :pswitch_1
    const/16 v0, 0x9

    .line 36
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 39
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 41
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :pswitch_4
    const/4 v0, 0x6

    .line 42
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 43
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :pswitch_5
    const/4 v0, 0x7

    .line 44
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 45
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/16 v0, 0x8

    .line 46
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 47
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 49
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_8
    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 51
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_9
    const/4 v0, 0x4

    .line 52
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getAttribute(Lorg/eclipse/jdt/core/util/IClassFileReader;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/eclipse/jdt/core/util/IClassFileReader;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAttribute(Lorg/eclipse/jdt/core/util/ICodeAttribute;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 3

    .line 5
    invoke-interface {p0}, Lorg/eclipse/jdt/core/util/ICodeAttribute;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p0

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAttribute(Lorg/eclipse/jdt/core/util/IFieldInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 3

    .line 9
    invoke-interface {p0}, Lorg/eclipse/jdt/core/util/IFieldInfo;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p0

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAttribute(Lorg/eclipse/jdt/core/util/IMethodInfo;[C)Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 3

    .line 13
    invoke-interface {p0}, Lorg/eclipse/jdt/core/util/IMethodInfo;->getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move-result-object p0

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IClassFileAttribute;->getAttributeName()[C

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getClassFile([C)Lorg/eclipse/jdt/core/IClassFile;
    .locals 4

    const/16 v0, 0x7c

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    const/16 v1, 0x2f

    invoke-static {v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-static {v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    :cond_0
    if-eq v0, v2, :cond_1

    if-ge v1, v0, :cond_1

    move v1, v0

    :cond_1
    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    return-object v3

    :cond_2
    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getPackageFragment([CII)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    return-object p0
.end method

.method private static getCompilationUnit([CLorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 4

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->getPackageFragment([CII)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v3, p0}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->findWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->createCompilationUnitFrom(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static getDeclaringTypeSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;->parse()V

    iget-object p0, v0, Lorg/eclipse/jdt/internal/core/util/KeyToSignature;->signature:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFullyQualifiedName(Lorg/eclipse/jdt/core/dom/Type;Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    check-cast p0, Lorg/eclipse/jdt/core/dom/WildcardType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/WildcardType;->getBound()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/WildcardType;->isUpperBound()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, " extends "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p0, " super "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getFullyQualifiedName(Lorg/eclipse/jdt/core/dom/Type;Ljava/lang/StringBuffer;)V

    goto/16 :goto_4

    :pswitch_1
    check-cast p0, Lorg/eclipse/jdt/core/dom/QualifiedType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_2
    check-cast p0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getFullyQualifiedName(Lorg/eclipse/jdt/core/dom/Type;Ljava/lang/StringBuffer;)V

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 p0, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p0, 0x3e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_2
    if-nez p0, :cond_3

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getFullyQualifiedName(Lorg/eclipse/jdt/core/dom/Type;Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_4
    check-cast p0, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    check-cast p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    check-cast p0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getFullyQualifiedName(Lorg/eclipse/jdt/core/dom/Type;Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result p0

    :goto_3
    if-lt v2, p0, :cond_7

    :goto_4
    return-void

    :cond_7
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getJavaLikeExtensions()[[C
    .locals 10

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->JAVA_LIKE_EXTENSIONS:[[C

    if-nez v0, :cond_5

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getContentTypeManager()Lorg/eclipse/core/runtime/content/IContentTypeManager;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.javaSource"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/content/IContentTypeManager;->getContentType(Ljava/lang/String;)Lorg/eclipse/core/runtime/content/IContentType;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getContentTypeManager()Lorg/eclipse/core/runtime/content/IContentTypeManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/content/IContentTypeManager;->getAllContentTypes()[Lorg/eclipse/core/runtime/content/IContentType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v6, v0, [[C

    const-string v7, "java"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v6, Lorg/eclipse/jdt/internal/core/util/Util;->JAVA_LIKE_EXTENSIONS:[[C

    goto :goto_4

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aput-object v1, v6, v0

    move v0, v2

    goto :goto_1

    :cond_2
    aget-object v6, v2, v5

    invoke-interface {v6, v0}, Lorg/eclipse/core/runtime/content/IContentType;->isKindOf(Lorg/eclipse/core/runtime/content/IContentType;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v2, v5

    const/16 v7, 0x8

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/content/IContentType;->getFileSpecs(I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_2
    if-lt v8, v7, :cond_3

    goto :goto_3

    :cond_3
    aget-object v9, v6, v8

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->JAVA_LIKE_EXTENSIONS:[[C

    return-object v0
.end method

.method public static getJdkLevel(Ljava/lang/Object;)J
    .locals 5

    :try_start_0
    instance-of v0, p0, Lorg/eclipse/core/resources/IFolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/core/resources/IFolder;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->findFirstClassFile(Lorg/eclipse/core/resources/IFolder;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_4

    :cond_0
    :try_start_1
    instance-of v0, p0, Lorg/eclipse/core/resources/IResource;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/core/resources/IResource;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_6

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isJrt(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/32 v0, 0x350000

    return-wide v0

    :cond_3
    :try_start_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object p0
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v1
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_3

    :cond_6
    move-object p0, v1

    :goto_2
    :try_start_5
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    move-object v1, p0

    goto :goto_4

    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw p0

    :catch_0
    move-object p0, v1

    :catch_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getVersion()J

    move-result-wide v0
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-wide v0

    :catch_2
    :cond_8
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->findLineSeparator([C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 4
    const-string v0, "line.separator"

    const-string v1, "org.eclipse.core.runtime"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 5
    new-array v4, v3, [Lorg/eclipse/core/runtime/preferences/IScopeContext;

    new-instance v5, Lorg/eclipse/core/resources/ProjectScope;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/eclipse/core/resources/ProjectScope;-><init>(Lorg/eclipse/core/resources/IProject;)V

    aput-object v5, v4, v2

    .line 6
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object p1

    invoke-interface {p1, v1, v0, p0, v4}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/eclipse/core/runtime/preferences/IScopeContext;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 7
    :cond_1
    new-array p1, v3, [Lorg/eclipse/core/runtime/preferences/IScopeContext;

    sget-object v3, Lorg/eclipse/core/runtime/preferences/InstanceScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    aput-object v3, p1, v2

    .line 8
    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object v2

    invoke-interface {v2, v1, v0, p0, p1}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/eclipse/core/runtime/preferences/IScopeContext;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 9
    :cond_2
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    return-object p0
.end method

.method private static getLineSeparator([C[C)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->findLineSeparator([C)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 11
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->findLineSeparator([C)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 12
    invoke-static {p0, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfJavaLikeExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNegativeAnnotationMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xe

    if-nez p1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-object v0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :pswitch_2
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    const-wide/16 v0, -0x1

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPackageFragment([CII)Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-ne p1, p2, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr p2, v1

    invoke-static {p0, p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    const/16 p1, 0x2f

    invoke-static {p1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Lorg/eclipse/core/runtime/Path;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p2, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p0

    invoke-virtual {p2}, Lorg/eclipse/core/runtime/Path;->segmentCount()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/core/runtime/Path;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p0, p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p0, 0x3

    if-eq v0, p0, :cond_5

    const/4 p0, 0x4

    if-eq v0, p0, :cond_4

    return-object p2

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    return-object p1

    :cond_5
    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p0

    return-object p0

    :cond_6
    check-cast p1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-nez p0, :cond_7

    return-object p2

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterCount([C)I
    .locals 7

    const/16 v0, 0x28

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    array-length v3, p0

    move v4, v2

    :goto_1
    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-char v5, p0, v0

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    :goto_2
    return v4

    :cond_2
    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v6, 0x4c

    if-ne v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x3b

    invoke-static {v5, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    add-int/2addr v0, v1

    if-eqz v0, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-static {v5}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static getProblemArgumentsForMarker([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    aget-object v2, p0, v1

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->encodeArgument(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getProblemArgumentsFromMarker(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->decodeArgumentString(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getResourceContentsAsByteArray(Lorg/eclipse/core/resources/IFile;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IFile;->getContents(Z)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v0
.end method

.method public static getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method public static getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/16 v1, 0x3c9

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lorg/eclipse/core/filesystem/EFS;->getStore(Ljava/net/URI;)Lorg/eclipse/core/filesystem/IFileStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/filesystem/IFileStore;->fetchInfo()Lorg/eclipse/core/filesystem/IFileInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/filesystem/IFileInfo;->getLength()J

    move-result-wide v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const-string v2, "org.eclipse.jdt.core"

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->file_notFound:Ljava/lang/String;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, p0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    .line 8
    :cond_1
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_1
    const/4 v0, 0x1

    .line 9
    :try_start_1
    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IFile;->getContents(Z)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_4

    long-to-int v0, v2

    .line 10
    :try_start_2
    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 12
    :try_start_4
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v1, 0x3d9

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 14
    :catch_3
    throw p1

    :catch_4
    move-exception p0

    .line 15
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public static getSignature(Lorg/eclipse/jdt/core/dom/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getFullyQualifiedName(Lorg/eclipse/jdt/core/dom/Type;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->rootPathToAttachments:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getSourceAttachmentPropertyName(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/QualifiedName;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method private static getSourceAttachmentPropertyName(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/QualifiedName;
    .locals 3

    new-instance v0, Lorg/eclipse/core/runtime/QualifiedName;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sourceattachment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "org.eclipse.jdt.core"

    invoke-direct {v0, v1, p0}, Lorg/eclipse/core/runtime/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTrimmedSimpleNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getSimpleNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-object p0

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getUnresolvedJavaElement(IILorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 5

    const/4 v0, 0x0

    .line 5
    :try_start_0
    instance-of v1, p2, Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/IType;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->getInitializers()[Lorg/eclipse/jdt/core/IInitializer;

    move-result-object p2

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_1

    return-object v0

    .line 8
    :cond_1
    aget-object v2, p2, v1

    .line 9
    invoke-interface {v2}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v4

    .line 11
    invoke-interface {v3}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v4, p0, :cond_2

    if-gt p1, v3, :cond_2

    .line 12
    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return-object v0
.end method

.method public static getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/IType;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 12

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 14
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto/16 :goto_9

    .line 15
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/core/IType;

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p2, p0}, Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;->get(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p2

    :goto_0
    const/16 v1, 0x2e

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 17
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v3

    if-nez v3, :cond_6

    .line 18
    instance-of p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    if-eqz p0, :cond_2

    .line 19
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    .line 20
    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 21
    :cond_2
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    .line 22
    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz p0, :cond_5

    .line 23
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    move v3, v2

    .line 24
    :goto_1
    array-length v4, p0

    if-lt v3, v4, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    aget-object v4, p0, v3

    .line 26
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 27
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v5

    .line 28
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v4

    .line 29
    invoke-static {v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    .line 30
    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v4

    if-lez v5, :cond_4

    .line 31
    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/Signature;->createArraySignature(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 32
    :cond_4
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 33
    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    .line 34
    :goto_2
    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 35
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance p2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {p2, v3}, Ljava/lang/String;-><init>([C)V

    .line 37
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v3

    .line 38
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v3, :cond_8

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    move v5, v2

    .line 40
    :goto_4
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p0, :cond_9

    move v6, v2

    goto :goto_5

    .line 41
    :cond_9
    array-length v6, p0

    :goto_5
    add-int v7, v5, v6

    .line 42
    new-array v7, v7, [Ljava/lang/String;

    const/16 v8, 0x2f

    if-eqz v5, :cond_a

    .line 43
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    :cond_a
    move v4, v2

    :goto_6
    if-lt v4, v6, :cond_f

    .line 44
    invoke-interface {p1, p2, v7}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p0

    if-eqz v3, :cond_b

    .line 45
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 46
    :cond_b
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 47
    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 48
    :cond_c
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/Member;->findMethods(Lorg/eclipse/jdt/core/IMethod;[Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 50
    array-length p1, p0

    if-nez p1, :cond_d

    goto :goto_7

    .line 51
    :cond_d
    aget-object p0, p0, v2

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    :catch_0
    :cond_e
    :goto_7
    return-object v0

    .line 52
    :cond_f
    aget-object v9, p0, v4

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v9

    if-eqz v3, :cond_10

    .line 53
    invoke-static {v9, v8, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v9

    goto :goto_8

    .line 54
    :cond_10
    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/util/Util;->toUnresolvedTypeSignature([C)[C

    move-result-object v9

    :goto_8
    add-int v10, v5, v4

    .line 55
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([C)V

    aput-object v11, v7, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_11
    :goto_9
    return-object v0
.end method

.method public static getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_17

    const/16 v2, 0x84

    if-eq v1, v2, :cond_16

    const/16 v2, 0x204

    if-eq v1, v2, :cond_16

    const/16 v2, 0x2004

    if-eq v1, v2, :cond_16

    .line 57
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 61
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getFileName()[C

    move-result-object v2

    .line 62
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .line 63
    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 64
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 65
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 66
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_5

    .line 67
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    .line 68
    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 69
    :cond_5
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    if-nez p1, :cond_6

    return-object v0

    .line 70
    :cond_6
    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IType;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    :cond_7
    if-nez v2, :cond_8

    return-object v0

    .line 71
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    if-nez p0, :cond_c

    .line 72
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName([C)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 73
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getClassFile([C)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-nez p0, :cond_9

    return-object v0

    .line 74
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 75
    :cond_a
    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getCompilationUnit([CLorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    .line 76
    :cond_b
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 77
    :cond_c
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/IType;

    if-nez p0, :cond_d

    return-object v0

    .line 78
    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 79
    :cond_e
    :goto_2
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName([C)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0x7c

    .line 80
    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result p0

    const/16 p1, 0x2f

    .line 81
    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_f

    .line 82
    sget-char p2, Ljava/io/File;->separatorChar:C

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p2

    :cond_f
    if-eq p0, v3, :cond_10

    if-ge p2, p0, :cond_10

    move p2, p0

    :cond_10
    if-ne p2, v3, :cond_11

    return-object v0

    .line 83
    :cond_11
    invoke-static {v2, p2, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getPackageFragment([CII)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p0

    .line 84
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object p2

    if-nez p2, :cond_13

    .line 85
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getClassFile([C)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-nez p0, :cond_12

    goto :goto_3

    .line 86
    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    :goto_3
    return-object v0

    .line 87
    :cond_13
    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 88
    array-length v0, p2

    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".class"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/ClassFile;

    .line 90
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;

    return-object p0

    .line 91
    :cond_14
    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getCompilationUnit([CLorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 92
    :cond_15
    :try_start_0
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    .line 93
    invoke-interface {p0, p1}, Lorg/eclipse/jdt/core/ITypeRoot;->getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/JavaElement;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_16
    return-object v0

    .line 94
    :cond_17
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    .line 95
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p0

    return-object p0
.end method

.method public static indexOfEnclosingPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v2, p2, :cond_0

    return v0

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-interface {v3, p0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static indexOfJavaLikeExtension(Ljava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->getJavaLikeExtensions()[[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget-object v5, v1, v4

    array-length v6, v5

    sub-int v7, v0, v6

    add-int/lit8 v8, v7, -0x1

    if-gez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_1
    if-lt v9, v6, :cond_3

    return v8

    :cond_3
    add-int v10, v7, v9

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget-char v11, v5, v9

    if-eq v10, v11, :cond_4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static indexOfMatchingPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static indexOfNestedPath(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isAttributeSupported(I)Z
    .locals 1

    invoke-static {}, Lorg/eclipse/core/filesystem/EFS;->getLocalFileSystem()Lorg/eclipse/core/filesystem/IFileSystem;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/filesystem/IFileSystem;->attributes()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z
    .locals 2

    .line 12
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 14
    :goto_0
    invoke-static {v0, p1, p2, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result p0

    return p0
.end method

.method public static final isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isExcluded([C[[C[[CZ)Z

    move-result p0

    return p0
.end method

.method public static final isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    .line 2
    invoke-interface {p0, v4}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 4
    :cond_1
    invoke-interface {p0, v3}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 5
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    if-nez v3, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v0

    invoke-static {v3, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p0

    return p0

    .line 8
    :cond_4
    invoke-interface {p0, v3}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 9
    check-cast p0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 10
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v0

    invoke-static {p0, v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static final isJavaLikeFileName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfJavaLikeExtension(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static final isJavaLikeFileName([C)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    array-length v1, p0

    .line 3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->getJavaLikeExtensions()[[C

    move-result-object v2

    .line 4
    array-length v3, v2

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_1

    return v0

    .line 5
    :cond_1
    aget-object v5, v2, v4

    .line 6
    array-length v6, v5

    sub-int v7, v1, v6

    add-int/lit8 v8, v7, -0x1

    if-gez v8, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    aget-char v8, p0, v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_3

    goto :goto_2

    :cond_3
    move v8, v0

    :goto_1
    if-lt v8, v6, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int v9, v7, v8

    .line 8
    aget-char v9, p0, v9

    aget-char v10, v5, v8

    if-eq v9, v10, :cond_5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static isReadOnly(Lorg/eclipse/core/resources/IResource;)Z
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnlySupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getResourceAttributes()Lorg/eclipse/core/resources/ResourceAttributes;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/core/resources/ResourceAttributes;->isReadOnly()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static isReadOnlySupported()Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isAttributeSupported(I)Z

    move-result v0

    return v0
.end method

.method public static isValidClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidMethodSignature(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-lt v2, v0, :cond_2

    return v1

    :cond_2
    move v3, v2

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_5

    add-int/2addr v3, v2

    invoke-static {p0, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->checkTypeSignature(Ljava/lang/String;IIZ)I

    move-result p0

    if-ne p0, v0, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    invoke-static {p0, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->checkTypeSignature(Ljava/lang/String;IIZ)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    return v1

    :cond_6
    if-lt v3, v0, :cond_3

    return v1
.end method

.method public static isValidTypeSignature(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->checkTypeSignature(Ljava/lang/String;IIZ)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static localTypeName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static log(ILjava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    .line 5
    const-string v1, "org.eclipse.jdt.core"

    .line 6
    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 4

    .line 10
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const-string v1, "org.eclipse.jdt.core"

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->internal_error:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2, p0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public static log(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/eclipse/core/runtime/Status;

    .line 2
    const-string v2, "org.eclipse.jdt.core"

    const/4 v3, 0x4

    const/4 v1, 0x4

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public static log(Lorg/eclipse/core/runtime/IStatus;)V
    .locals 1

    .line 7
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :goto_0
    return-void
.end method

.method public static logRepeatedMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 5
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->fgRepeatedMessages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->fgRepeatedMessages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static logRepeatedMessage(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->fgRepeatedMessages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->fgRepeatedMessages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p0

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/eclipse/core/resources/IFile;->getContents(Z)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p0
.end method

.method public static normalizeCRs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->normalizeCRs([C[C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static normalizeCRs([C[C)[C
    .locals 10

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    .line 2
    array-length v1, p0

    if-nez v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator([C[C)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    aget-char v3, p0, v2

    move v4, v2

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_3

    if-lez v5, :cond_2

    sub-int/2addr v1, v5

    if-lez v1, :cond_1

    .line 5
    new-array p1, v1, [C

    .line 6
    invoke-static {p0, v5, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v6, v1, -0x1

    const/16 v7, 0x20

    if-ge v4, v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    .line 9
    aget-char v6, p0, v6

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    const/16 v8, 0xa

    if-eq v3, v8, :cond_7

    const/16 v9, 0xd

    if-eq v3, v9, :cond_5

    :goto_2
    move v3, v6

    goto :goto_4

    :cond_5
    sub-int v3, v4, v5

    if-ltz v3, :cond_6

    .line 10
    new-array v9, v3, [C

    .line 11
    invoke-static {p0, v5, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    .line 13
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    if-ne v6, v8, :cond_6

    add-int/lit8 v5, v4, 0x2

    move v3, v7

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v5, v4, 0x1

    goto :goto_2

    :cond_7
    sub-int v3, v4, v5

    .line 14
    new-array v7, v3, [C

    .line 15
    invoke-static {p0, v5, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    .line 17
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static packageName(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static prefixLength([C[C)I
    .locals 5

    .line 1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    aget-char v3, p0, v1

    aget-char v4, p1, v1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private static quickSort([III)V
    .locals 5

    sub-int v0, p2, p1

    .line 17
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget v0, p0, v0

    move v1, p1

    move v2, p2

    .line 18
    :cond_0
    :goto_0
    aget v3, p0, v1

    if-lt v3, v0, :cond_5

    .line 19
    :goto_1
    aget v3, p0, v2

    if-lt v0, v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 20
    aget v4, p0, v1

    .line 21
    aput v3, p0, v1

    .line 22
    aput v4, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 23
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([III)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 24
    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([III)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static quickSort([Ljava/lang/Object;IILorg/eclipse/jdt/internal/core/util/Util$Comparer;)V
    .locals 5

    sub-int v0, p2, p1

    .line 25
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    .line 26
    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-interface {p3, v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util$Comparer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 27
    :goto_1
    aget-object v3, p0, v2

    invoke-interface {p3, v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util$Comparer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 28
    aget-object v3, p0, v1

    .line 29
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 30
    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 31
    invoke-static {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Ljava/lang/Object;IILorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 32
    invoke-static {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Ljava/lang/Object;IILorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static quickSort([Ljava/lang/String;II)V
    .locals 5

    sub-int v0, p2, p1

    .line 33
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    .line 34
    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 35
    :goto_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 36
    aget-object v3, p0, v1

    .line 37
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 38
    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 39
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Ljava/lang/String;II)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 40
    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Ljava/lang/String;II)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static quickSort([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;II)V
    .locals 5

    sub-int v0, p2, p1

    .line 9
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    .line 10
    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-interface {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util$Comparable;->compareTo(Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 11
    :goto_1
    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util$Comparable;->compareTo(Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)I

    move-result v3

    if-ltz v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 12
    aget-object v3, p0, v1

    .line 13
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 14
    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 15
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;II)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 16
    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;II)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static quickSort([[CII)V
    .locals 5

    sub-int v0, p2, p1

    .line 1
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget-object v0, p0, v0

    move v1, p1

    move v2, p2

    .line 2
    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->compare([C[C)I

    move-result v3

    if-ltz v3, :cond_5

    .line 3
    :goto_1
    aget-object v3, p0, v2

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->compare([C[C)I

    move-result v3

    if-ltz v3, :cond_4

    if-gt v1, v2, :cond_1

    .line 4
    aget-object v3, p0, v1

    .line 5
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 6
    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_2

    .line 7
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([[CII)V

    :cond_2
    if-ge v1, p2, :cond_3

    .line 8
    invoke-static {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([[CII)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static raiseIllegalSignatureException([CI)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" starting at "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static raiseUnexpectedCharacterException([CIC)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' in \""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" starting at "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;
    .locals 8

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->hasTrailingSeparator()Z

    move-result v0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segments()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    if-le v1, p1, :cond_1

    move v3, p1

    move v4, v2

    :goto_0
    if-lt v3, v1, :cond_0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v4, v1

    goto :goto_1

    :cond_0
    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    new-array v1, v4, [C

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x2f

    if-lt v3, p1, :cond_4

    move v5, v2

    :goto_2
    if-lt p1, v3, :cond_3

    aget-object p1, p0, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    aget-object p0, p0, v3

    invoke-virtual {p0, v2, p1, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int v2, v5, p1

    goto :goto_3

    :cond_3
    aget-object v6, p0, p1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v7, p0, p1

    invoke-virtual {v7, v2, v6, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x1

    aput-char v4, v1, v5

    add-int/lit8 p1, p1, 0x1

    move v5, v6

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    aput-char v4, v1, v2

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static resetJavaLikeExtensions()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->JAVA_LIKE_EXTENSIONS:[[C

    return-void
.end method

.method private static scanGenericEnd([CI)I
    .locals 5

    aget-char v0, p0, p1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    :goto_0
    if-le p1, v0, :cond_1

    return p1

    :cond_1
    aget-char v3, p0, p1

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static scanTypeSignature([CI)I
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result p0

    return p0
.end method

.method public static setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnlySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getResourceAttributes()Lorg/eclipse/core/resources/ResourceAttributes;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/core/resources/ResourceAttributes;->setReadOnly(Z)V

    :try_start_0
    invoke-interface {p0, v0}, Lorg/eclipse/core/resources/IResource;->setResourceAttributes(Lorg/eclipse/core/resources/ResourceAttributes;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static setSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->rootPathToAttachments:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->rootPathToAttachments:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getSourceAttachmentPropertyName(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/QualifiedName;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->setPersistentProperty(Lorg/eclipse/core/runtime/QualifiedName;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static sort([I)V
    .locals 2

    .line 5
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 6
    array-length v0, p0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([III)V

    :cond_0
    return-void
.end method

.method public static sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V
    .locals 2

    .line 7
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 8
    array-length v0, p0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Ljava/lang/Object;IILorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    :cond_0
    return-void
.end method

.method public static sort([Ljava/lang/String;)V
    .locals 2

    .line 9
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 10
    array-length v0, p0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static sort([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)V
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    array-length v0, p0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;II)V

    :cond_0
    return-void
.end method

.method public static sort([[C)V
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    array-length v0, p0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->quickSort([[CII)V

    :cond_0
    return-void
.end method

.method public static sortCopy([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)[Ljava/lang/Object;
    .locals 3

    .line 9
    array-length v0, p0

    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    return-object v1
.end method

.method public static sortCopy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 13
    array-length v0, p0

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/String;)V

    return-object v1
.end method

.method public static sortCopy([Lorg/eclipse/jdt/core/IJavaElement;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    .line 5
    array-length v0, p0

    .line 6
    new-array v1, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-instance p0, Lorg/eclipse/jdt/internal/core/util/Util$1;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/Util$1;-><init>()V

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    return-object v1
.end method

.method public static sortCopy([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)[Lorg/eclipse/jdt/internal/core/util/Util$Comparable;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/util/Util$Comparable;

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Lorg/eclipse/jdt/internal/core/util/Util$Comparable;)V

    return-object v1
.end method

.method public static final splitOn(CLjava/lang/String;II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_6

    if-le p2, p3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    move v2, p2

    :goto_1
    if-lt v2, p3, :cond_4

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    move v0, p2

    :goto_2
    if-lt p2, p3, :cond_2

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    return-object v3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p0, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, p2, 0x1

    move v1, v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p0, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0
.end method

.method public static final splitTypeLevelsSignature(Ljava/lang/String;)[[C
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->removeCapture([C)[C

    move-result-object p0

    const/16 v0, 0x24

    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    const/16 v0, 0xa

    new-array v0, v0, [[C

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v4, v2, :cond_1

    add-int/lit8 v1, v5, 0x1

    new-array v7, v1, [[C

    aput-object p0, v7, v3

    add-int/lit8 p0, v5, -0x1

    const/4 v1, 0x1

    :goto_1
    if-le v1, v5, :cond_0

    return-object v7

    :cond_0
    aget-object v2, v0, p0

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    aget-char v7, p0, v4

    if-eq v7, v1, :cond_5

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_3

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_7

    array-length v7, v0

    if-ne v5, v7, :cond_7

    add-int/lit8 v7, v5, 0xa

    new-array v7, v7, [[C

    invoke-static {v0, v3, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    aput-char v1, p0, v4

    goto :goto_2

    :cond_5
    if-nez v6, :cond_7

    array-length v7, v0

    if-ne v5, v7, :cond_6

    add-int/lit8 v7, v5, 0xa

    new-array v7, v7, [[C

    invoke-static {v0, v3, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v7

    :cond_6
    add-int/lit8 v7, v4, 0x1

    new-array v7, v7, [C

    aput-object v7, v0, v5

    invoke-static {p0, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v7, v0, v5

    const/16 v8, 0x3b

    aput-char v8, v7, v4

    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static startsWithIgnoreCase([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 6

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v3, v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-lt v3, v4, :cond_3

    if-nez p2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    :cond_3
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static toAnchor(I[CLjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->toAnchor(I[C[CZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toAnchor(I[C[CZ)[C
    .locals 3

    const/16 v0, 0x28

    .line 2
    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p1

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p2

    .line 7
    array-length v0, p2

    :goto_0
    const/4 p1, 0x0

    if-lt p0, v0, :cond_1

    const/16 p0, 0x29

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array p0, p0, [C

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-virtual {v1, p1, p2, p0, p1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ne p0, v2, :cond_2

    .line 11
    aget-object v2, p2, p0

    invoke-static {v2, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    goto :goto_1

    .line 12
    :cond_2
    aget-object v2, p2, p0

    invoke-static {v2, p1, v1, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignatureForAnchor([CILjava/lang/StringBuffer;Z)I

    .line 13
    :goto_1
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    if-eq p0, p1, :cond_3

    const/16 p1, 0x2c

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toCharArrays([Ljava/lang/String;)[[C
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_0
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toCompoundChars(Ljava/lang/String;)[[C
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    new-array v5, v3, [[C

    const/4 v6, 0x0

    move v1, v6

    move v7, v1

    :goto_1
    if-lt v1, v3, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    :cond_2
    sub-int v9, v8, v7

    new-array v9, v9, [C

    aput-object v9, v5, v1

    invoke-virtual {p0, v7, v8, v9, v6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0
.end method

.method public static toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/core/filesystem/EFS;->getStore(Ljava/net/URI;)Lorg/eclipse/core/filesystem/IFileStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/eclipse/core/filesystem/IFileStore;->toLocalFile(ILorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    invoke-interface {p0, v0, p1}, Lorg/eclipse/core/filesystem/IFileStore;->toLocalFile(ILorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toString([C[C[CZZ)Ljava/lang/String;
    .locals 9

    .line 13
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Util;->INIT:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/16 v1, 0x28

    .line 14
    invoke-static {v1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 15
    const-string p0, ""

    return-object p0

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v4, p2

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    .line 17
    array-length v5, p0

    if-lez v5, :cond_3

    .line 18
    aget-char v5, p0, v4

    const/16 v6, 0x5b

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    if-ne v5, v6, :cond_1

    .line 19
    invoke-static {p0, v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 20
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p0

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p0, v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 22
    :goto_0
    invoke-static {v8, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v5

    if-eqz p4, :cond_2

    if-eq v5, v3, :cond_2

    add-int/lit8 v3, v5, 0x1

    .line 23
    array-length v6, p0

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    if-nez v0, :cond_3

    .line 25
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 27
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p0

    .line 29
    array-length p1, p0

    move v1, v4

    :goto_2
    if-lt v1, p1, :cond_6

    const/16 p0, 0x29

    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 31
    const-string p0, " : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_5

    .line 32
    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object p0

    .line 33
    invoke-static {p0, v4, v2, p4}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignature([CILjava/lang/StringBuffer;Z)V

    .line 34
    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_6
    aget-object v3, p0, v1

    invoke-static {v3, v4, v2, p4}, Lorg/eclipse/jdt/internal/core/util/Util;->appendTypeSignature([CILjava/lang/StringBuffer;Z)V

    .line 36
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_7

    const/16 v3, 0x2c

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static toString([[C)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    const/16 v3, 0x2e

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toString([[C[C)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v3, 0x2e

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toStrings([[C)[Ljava/lang/String;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/String;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static toUnresolvedTypeSignature([CIILjava/lang/StringBuffer;)I
    .locals 2

    .line 7
    aget-char v0, p0, p1

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/16 v0, 0x51

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p2, :cond_1

    return p2

    .line 10
    :cond_1
    aget-char v0, p0, p1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p1

    .line 13
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    .line 14
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/Util;->toUnresolvedTypeSignature([CIILjava/lang/StringBuffer;)I

    move-result p1

    goto :goto_0

    :cond_4
    const/16 v0, 0x2e

    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static toUnresolvedTypeSignature([C)[C
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->toUnresolvedTypeSignature([CIILjava/lang/StringBuffer;)I

    .line 4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .line 5
    new-array v0, p0, [C

    .line 6
    invoke-virtual {v1, v2, p0, v0, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v0
.end method

.method public static typeParameterSignatures(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)[Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz p0, :cond_1

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v2, p0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignature(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0
.end method

.method public static typeSignature(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignatures([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->createIntersectionTypeSignature([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntersectionCastTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->typeSignatures([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->createUnionTypeSignature([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object p0

    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static typeSignatures([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[Ljava/lang/String;
    .locals 6

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v4

    const/16 v5, 0x2e

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static validateMethodSignature(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidMethodSignature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    return-void
.end method

.method public static validateTypeSignature(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidTypeSignature(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lorg/eclipse/core/runtime/Assert;->isTrue(Z)Z

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static declared-synchronized verbose(Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 4

    const-class v0, Lorg/eclipse/jdt/internal/core/util/Util;

    monitor-enter v0

    const/4 v1, 0x0

    :cond_0
    const/16 v2, 0xa

    .line 2
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 4
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    :goto_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
