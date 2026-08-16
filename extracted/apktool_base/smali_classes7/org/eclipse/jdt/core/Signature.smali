.class public final Lorg/eclipse/jdt/core/Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARRAY_TYPE_SIGNATURE:I = 0x4

.field public static final BASE_TYPE_SIGNATURE:I = 0x2

.field private static final BOOLEAN:[C

.field private static final BYTE:[C

.field private static final CAPTURE:[C

.field public static final CAPTURE_TYPE_SIGNATURE:I = 0x6

.field private static final CHAR:[C

.field public static final CLASS_TYPE_SIGNATURE:I = 0x1

.field public static final C_ARRAY:C = '['

.field public static final C_BOOLEAN:C = 'Z'

.field public static final C_BYTE:C = 'B'

.field public static final C_CAPTURE:C = '!'

.field public static final C_CHAR:C = 'C'

.field public static final C_COLON:C = ':'

.field public static final C_DOLLAR:C = '$'

.field public static final C_DOT:C = '.'

.field public static final C_DOUBLE:C = 'D'

.field public static final C_EXCEPTION_START:C = '^'

.field public static final C_EXTENDS:C = '+'

.field public static final C_FLOAT:C = 'F'

.field public static final C_GENERIC_END:C = '>'

.field public static final C_GENERIC_START:C = '<'

.field public static final C_INT:C = 'I'

.field public static final C_INTERSECTION:C = '|'

.field public static final C_LONG:C = 'J'

.field public static final C_NAME_END:C = ';'

.field public static final C_PARAM_END:C = ')'

.field public static final C_PARAM_START:C = '('

.field public static final C_RESOLVED:C = 'L'

.field public static final C_SEMICOLON:C = ';'

.field public static final C_SHORT:C = 'S'

.field public static final C_STAR:C = '*'

.field public static final C_SUPER:C = '-'

.field public static final C_TYPE_VARIABLE:C = 'T'

.field public static final C_UNION:C = '&'

.field public static final C_UNRESOLVED:C = 'Q'

.field public static final C_VOID:C = 'V'

.field private static final DOUBLE:[C

.field private static final EXTENDS:[C

.field private static final FLOAT:[C

.field private static final INT:[C

.field public static final INTERSECTION_TYPE_SIGNATURE:I = 0x7

.field private static final LONG:[C

.field private static final SHORT:[C

.field public static final SIG_BOOLEAN:Ljava/lang/String; = "Z"

.field public static final SIG_BYTE:Ljava/lang/String; = "B"

.field public static final SIG_CHAR:Ljava/lang/String; = "C"

.field public static final SIG_DOUBLE:Ljava/lang/String; = "D"

.field public static final SIG_FLOAT:Ljava/lang/String; = "F"

.field public static final SIG_INT:Ljava/lang/String; = "I"

.field public static final SIG_LONG:Ljava/lang/String; = "J"

.field public static final SIG_SHORT:Ljava/lang/String; = "S"

.field public static final SIG_VOID:Ljava/lang/String; = "V"

.field private static final SUPER:[C

.field public static final TYPE_VARIABLE_SIGNATURE:I = 0x3

.field public static final UNION_TYPE_SIGNATURE:I = 0x8

.field private static final VOID:[C

.field public static final WILDCARD_TYPE_SIGNATURE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "boolean"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->BOOLEAN:[C

    const-string v0, "byte"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->BYTE:[C

    const-string v0, "capture-of"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->CAPTURE:[C

    const-string v0, "char"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->CHAR:[C

    const-string v0, "double"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->DOUBLE:[C

    const-string v0, "extends"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->EXTENDS:[C

    const-string v0, "float"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->FLOAT:[C

    const-string v0, "int"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->INT:[C

    const-string v0, "long"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->LONG:[C

    const-string v0, "short"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->SHORT:[C

    const-string v0, "super"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->SUPER:[C

    const-string v0, "void"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/Signature;->VOID:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendArgumentSimpleNames([CIILjava/lang/StringBuffer;)V
    .locals 8

    const/16 v0, 0x3c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    move v2, v1

    :goto_0
    const/16 v4, 0x3e

    if-le p1, p2, :cond_0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    aget-char v5, p0, p1

    const/16 v6, 0x2c

    const/4 v7, 0x1

    if-eq v5, v6, :cond_5

    if-eq v5, v0, :cond_4

    if-eq v5, v4, :cond_1

    goto :goto_2

    :cond_1
    if-ne v1, v7, :cond_3

    if-lez v2, :cond_2

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v4, p1, -0x1

    invoke-static {p0, v3, v4, p3}, Lorg/eclipse/jdt/core/Signature;->appendSimpleName([CIILjava/lang/StringBuffer;)V

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v7, :cond_7

    :goto_1
    add-int/lit8 v3, p1, 0x1

    goto :goto_2

    :cond_5
    if-ne v1, v7, :cond_7

    if-lez v2, :cond_6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v4, p1, -0x1

    invoke-static {p0, v3, v4, p3}, Lorg/eclipse/jdt/core/Signature;->appendSimpleName([CIILjava/lang/StringBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static appendArrayTypeSignature([CIZLjava/lang/StringBuffer;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/Signature;->appendArrayTypeSignature([CIZLjava/lang/StringBuffer;Z)I

    move-result p0

    return p0
.end method

.method private static appendArrayTypeSignature([CIZLjava/lang/StringBuffer;Z)I
    .locals 6

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 3
    aget-char v2, p0, p1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p1, 0x1

    .line 4
    aget-char v4, p0, v2

    :goto_0
    if-eq v4, v3, :cond_2

    .line 5
    invoke-static {p0, v2, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result v4

    sub-int v5, v2, p1

    :goto_1
    const/16 p0, 0x5d

    if-lt v1, v5, :cond_1

    if-eqz p4, :cond_0

    const/16 p0, 0x2e

    .line 6
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    return v4

    .line 8
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 9
    aget-char v4, p0, v2

    goto :goto_0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static appendCaptureTypeSignature([CIZLjava/lang/StringBuffer;)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    aget-char v0, p0, p1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/Signature;->CAPTURE:[C

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeArgumentSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static appendClassTypeSignature([CIZLjava/lang/StringBuffer;)I
    .locals 11

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_f

    aget-char v0, p0, p1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    const/16 v2, 0x51

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    xor-int/lit8 v1, p2, 0x1

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    add-int/2addr p1, v2

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, -0x1

    move v7, v3

    move v6, v5

    :goto_2
    array-length v8, p0

    if-ge p1, v8, :cond_e

    aget-char v8, p0, p1

    const/16 v9, 0x24

    const/16 v10, 0x2e

    if-eq v8, v9, :cond_c

    if-eq v8, v10, :cond_a

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_8

    const/16 v9, 0x3b

    if-eq v8, v9, :cond_7

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_6

    if-eq v6, v5, :cond_4

    if-nez v7, :cond_4

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v6, "new "

    invoke-virtual {p3, v4, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "(){}"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v7, v2

    :cond_4
    if-nez v7, :cond_5

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    move v6, v5

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeArgumentSignatures([CIZLjava/lang/StringBuffer;)I

    move-result p1

    move v1, v3

    goto :goto_3

    :cond_7
    return p1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_b
    invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_c
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v0, :cond_d

    invoke-virtual {p3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    move v7, v1

    goto :goto_3

    :cond_d
    move v7, v3

    :goto_3
    add-int/2addr p1, v2

    goto :goto_2

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static appendIntersectionTypeSignature([CIZLjava/lang/StringBuffer;)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_6

    aget-char v0, p0, p1

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendClassTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    aget-char v0, p0, p1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_3

    :goto_0
    aget-char v0, p0, p1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " | "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendClassTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should be at the end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "should be a colon at this location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static appendSimpleName([CIILjava/lang/StringBuffer;)V
    .locals 7

    aget-char v0, p0, p1

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    const-string v0, "?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    aget-char v1, p0, p1

    const/16 v2, 0x65

    const/16 v3, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/Signature;->SUPER:[C

    invoke-static {v1, p0, p1, v0}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, v2, v0}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/Signature;->EXTENDS:[C

    invoke-static {v1, p0, p1, p2}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, v2, v0}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, p2

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v2, p1, :cond_3

    goto :goto_2

    :cond_3
    aget-char v5, p0, v2

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_6

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_4

    goto :goto_5

    :cond_4
    if-nez v1, :cond_5

    move v4, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_d

    move v3, v2

    goto :goto_5

    :cond_7
    if-nez v1, :cond_d

    aget-char v0, p0, p1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    move v0, v2

    :goto_2
    if-gez v0, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 p1, v0, 0x1

    :goto_3
    if-gez v3, :cond_b

    add-int/lit8 v0, p2, 0x1

    goto :goto_4

    :cond_b
    move v0, v3

    :goto_4
    sub-int/2addr v0, p1

    invoke-virtual {p3, p0, p1, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    if-ltz v3, :cond_c

    invoke-static {p0, v3, v4, p3}, Lorg/eclipse/jdt/core/Signature;->appendArgumentSimpleNames([CIILjava/lang/StringBuffer;)V

    add-int/lit8 p1, v4, 0x1

    sub-int/2addr p2, v4

    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_c
    return-void

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private static appendTypeArgumentSignature([CIZLjava/lang/StringBuffer;)I
    .locals 2

    array-length v0, p0

    if-ge p1, v0, :cond_3

    aget-char v0, p0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "? super "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_1
    const-string v0, "? extends "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_2
    const/16 p0, 0x3f

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static appendTypeArgumentSignatures([CIZLjava/lang/StringBuffer;)I
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    aget-char v0, p0, p1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    aget-char v1, p0, p1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeArgumentSignature([CIZLjava/lang/StringBuffer;)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static appendTypeSignature([CIZLjava/lang/StringBuffer;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;Z)I

    move-result p0

    return p0
.end method

.method private static appendTypeSignature([CIZLjava/lang/StringBuffer;Z)I
    .locals 3

    .line 2
    array-length v0, p0

    if-ge p1, v0, :cond_e

    .line 3
    aget-char v0, p0, p1

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p0, p1, p2, p3, v2}, Lorg/eclipse/jdt/core/Signature;->appendArrayTypeSignature([CIZLjava/lang/StringBuffer;Z)I

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/16 p4, 0x21

    if-eq v0, p4, :cond_d

    const/16 p4, 0x2d

    if-eq v0, p4, :cond_c

    const/16 p4, 0x46

    if-eq v0, p4, :cond_b

    const/16 p4, 0x4c

    if-eq v0, p4, :cond_a

    const/16 p4, 0x51

    if-eq v0, p4, :cond_a

    const/16 p4, 0x56

    if-eq v0, p4, :cond_9

    const/16 p4, 0x7c

    if-eq v0, p4, :cond_8

    const/16 p4, 0x2a

    if-eq v0, p4, :cond_c

    const/16 p4, 0x2b

    if-eq v0, p4, :cond_c

    const/16 p4, 0x49

    if-eq v0, p4, :cond_7

    const/16 p4, 0x4a

    if-eq v0, p4, :cond_6

    const/16 p4, 0x53

    if-eq v0, p4, :cond_5

    const/16 p4, 0x54

    if-eq v0, p4, :cond_4

    const/16 p4, 0x5a

    if-eq v0, p4, :cond_3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 7
    :pswitch_0
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->DOUBLE:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 8
    :pswitch_1
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->CHAR:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 9
    :pswitch_2
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->BYTE:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 10
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendArrayTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    .line 11
    :cond_3
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->BOOLEAN:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 12
    :cond_4
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeVariableSignature([CI)I

    move-result p2

    add-int/lit8 p4, p1, 0x1

    sub-int p1, p2, p1

    sub-int/2addr p1, v2

    .line 13
    invoke-virtual {p3, p0, p4, p1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return p2

    .line 14
    :cond_5
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->SHORT:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 15
    :cond_6
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->LONG:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 16
    :cond_7
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->INT:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 17
    :cond_8
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendIntersectionTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    .line 18
    :cond_9
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->VOID:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 19
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendClassTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    .line 20
    :cond_b
    sget-object p0, Lorg/eclipse/jdt/core/Signature;->FLOAT:[C

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return p1

    .line 21
    :cond_c
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendTypeArgumentSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    .line 22
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/Signature;->appendCaptureTypeSignature([CIZLjava/lang/StringBuffer;)I

    move-result p0

    return p0

    .line 23
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkArrayDimension([CII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-lt p1, p2, :cond_0

    return v1

    :cond_0
    aget-char v2, p0, p1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_6

    return p1

    :cond_2
    if-nez v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    return v1

    :cond_6
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static checkName([C[CII)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->fragmentEquals([C[CIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length p0, p0

    add-int/2addr p2, p0

    if-ne p2, p3, :cond_0

    return p2

    :cond_0
    aget-char p0, p1, p2

    const/16 p1, 0x20

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2e

    if-eq p0, p1, :cond_1

    const/16 p1, 0x3c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x3e

    if-eq p0, p1, :cond_1

    const/16 p1, 0x5b

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return p2

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static checkNextChar([CCIIZ)I
    .locals 0

    invoke-static {p0, p2, p3}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p2

    if-ge p2, p3, :cond_0

    aget-char p3, p0, p2

    if-ne p3, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    if-eqz p4, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static consumeWhitespace([CII)I
    .locals 2

    :goto_0
    if-lt p1, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-char v0, p0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static createArraySignature(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/Signature;->createArraySignature([CI)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static createArraySignature([CI)[C
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    add-int v1, p1, v0

    .line 2
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, p1, :cond_1

    .line 3
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    const/16 v4, 0x5b

    .line 4
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static createCharArrayTypeSignature([CZ)[C
    .locals 3

    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lorg/eclipse/jdt/core/Signature;->encodeTypeSignature([CIZILjava/lang/StringBuffer;)I

    move-result p1

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    if-lt p1, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array p1, p0, [C

    invoke-virtual {v1, v2, p0, p1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createIntersectionTypeSignature([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    array-length v0, p0

    .line 8
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 9
    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->createIntersectionTypeSignature([[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createIntersectionTypeSignature([[C)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    const/16 v3, 0x3a

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createMethodSignature([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 11
    array-length v0, p0

    .line 12
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 13
    new-instance p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/Signature;->createMethodSignature([[C[C)[C

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 14
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createMethodSignature([[C[C)[C
    .locals 9

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    .line 2
    array-length v4, p1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    .line 3
    new-array v5, v3, [C

    const/16 v2, 0x28

    .line 4
    aput-char v2, v5, v1

    const/4 v6, 0x1

    move v2, v1

    move v3, v6

    :goto_1
    if-lt v2, v0, :cond_0

    const/16 p0, 0x29

    .line 5
    aput-char p0, v5, v3

    add-int/2addr v3, v6

    .line 6
    invoke-static {p1, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    .line 7
    :cond_0
    aget-object v7, p0, v2

    .line 8
    array-length v8, v7

    .line 9
    invoke-static {v7, v1, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createTypeParameterSignature(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 10
    array-length v0, p1

    .line 11
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 12
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, v1}, Lorg/eclipse/jdt/core/Signature;->createTypeParameterSignature([C[[C)[C

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 13
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createTypeParameterSignature([C[[C)[C
    .locals 7

    .line 1
    array-length v0, p1

    const/16 v1, 0x3a

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([CC)[C

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_2

    .line 3
    array-length v3, p0

    add-int/2addr v4, v3

    .line 4
    new-array v5, v4, [C

    .line 5
    invoke-static {p0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, v2

    :goto_1
    if-lt p0, v0, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 6
    aput-char v1, v5, v3

    .line 7
    aget-object v3, p1, p0

    array-length v6, v3

    .line 8
    invoke-static {v3, v2, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v4, v6

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    aget-object v5, p1, v3

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createTypeSignature([CZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/Signature;->createCharArrayTypeSignature([CZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static createUnionTypeSignature([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    array-length v0, p0

    .line 8
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 9
    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->createUnionTypeSignature([[C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static createUnionTypeSignature([[C)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x26

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    const/16 v3, 0x3a

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static encodeArrayDimension([CIILjava/lang/StringBuffer;)I
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-static {p0, v1, p1, p2, v0}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x5d

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, p2, v2}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static encodeQualifiedName([CIILjava/lang/StringBuffer;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt p1, p2, :cond_0

    goto :goto_4

    :cond_0
    aget-char v2, p0, p1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_4

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_5

    const/16 v5, 0x3e

    if-eq v2, v5, :cond_5

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_5

    const/16 v5, 0x20

    if-eq v2, v5, :cond_2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3

    :cond_2
    :goto_1
    if-ne v1, v4, :cond_3

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_3

    :cond_3
    invoke-static {p0, v4, p1, p2, v3}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    :goto_2
    move v1, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_3
    add-int/2addr p1, v3

    goto :goto_0

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    return p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static encodeTypeSignature([CIZILjava/lang/StringBuffer;)I
    .locals 4

    invoke-static {p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    if-ge p1, p3, :cond_13

    aget-char v0, p0, p1

    const/16 v1, 0x3f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    const/16 v3, 0x66

    if-eq v0, v3, :cond_7

    const/16 v3, 0x69

    if-eq v0, v3, :cond_6

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_5

    const/16 v3, 0x73

    if-eq v0, v3, :cond_4

    const/16 v3, 0x76

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->DOUBLE:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x44

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->CHAR:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x43

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->CAPTURE:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    aget-char v0, p0, p1

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x21

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->BOOLEAN:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x5a

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->BYTE:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x42

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->VOID:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x56

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->SHORT:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x53

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->LONG:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x4a

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->INT:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x49

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->FLOAT:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result p0

    const/16 p1, 0x46

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p0

    :cond_8
    :goto_0
    invoke-static {p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkArrayDimension([CII)I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {p0, v0, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeArrayDimension([CIILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    :cond_9
    const/4 v0, -0x1

    :goto_1
    if-eqz p2, :cond_a

    const/16 v1, 0x4c

    goto :goto_2

    :cond_a
    const/16 v1, 0x51

    :goto_2
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeQualifiedName([CIILjava/lang/StringBuffer;)I

    move-result p1

    const/16 v1, 0x3c

    invoke-static {p0, v1, p1, p3, v2}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-static {p0, v1, v3, p3, v2}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_b
    invoke-static {p0, v3, p2, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeTypeSignature([CIZILjava/lang/StringBuffer;)I

    move-result p1

    :goto_4
    const/16 v3, 0x2c

    invoke-static {p0, v3, p1, p3, v2}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result v3

    if-gtz v3, :cond_c

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, p3, v3}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result p1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    invoke-static {p0, v3, p2, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeTypeSignature([CIZILjava/lang/StringBuffer;)I

    move-result p1

    goto :goto_4

    :cond_d
    :goto_5
    const/16 v1, 0x2e

    invoke-static {p0, v1, p1, p3, v2}, Lorg/eclipse/jdt/core/Signature;->checkNextChar([CCIIZ)I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v3

    goto :goto_3

    :cond_e
    const/16 p0, 0x3b

    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lez v0, :cond_f

    goto :goto_6

    :cond_f
    move v0, p1

    :goto_6
    return v0

    :cond_10
    :goto_7
    add-int/2addr p1, v2

    invoke-static {p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->consumeWhitespace([CII)I

    move-result p1

    sget-object v0, Lorg/eclipse/jdt/core/Signature;->EXTENDS:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_11

    const/16 p1, 0x2b

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, v0, p2, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeTypeSignature([CIZILjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_11
    sget-object v0, Lorg/eclipse/jdt/core/Signature;->SUPER:[C

    invoke-static {v0, p0, p1, p3}, Lorg/eclipse/jdt/core/Signature;->checkName([C[CII)I

    move-result v0

    if-lez v0, :cond_12

    const/16 p1, 0x2d

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, v0, p2, p3, p4}, Lorg/eclipse/jdt/core/Signature;->encodeTypeSignature([CIZILjava/lang/StringBuffer;)I

    move-result p0

    return p0

    :cond_12
    const/16 p0, 0x2a

    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getArrayCount(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getArrayCount([C)I

    move-result p0

    return p0
.end method

.method public static getArrayCount([C)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    aget-char v1, p0, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getElementType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 6
    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getElementType([C)[C

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_0
    return-object p0
.end method

.method public static getElementType([C)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getArrayCount([C)I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 3
    new-array v2, v1, [C

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static getIntersectionTypeBounds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getIntersectionTypeBounds([C)[[C

    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntersectionTypeBounds([C)[[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeSignatureKind([C)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v1, p0

    const/4 v2, 0x1

    move v3, v2

    .line 5
    :goto_0
    invoke-static {p0, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result v4

    .line 6
    const-string v5, "Invalid format"

    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 7
    invoke-static {p0, v3, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v1, -0x1

    if-ne v4, v3, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 9
    new-array p0, p0, [[C

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 11
    :cond_1
    aget-char v3, p0, v6

    const/16 v6, 0x3a

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getParameterCount(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getParameterCount([C)I

    move-result p0

    return p0
.end method

.method public static getParameterCount([C)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 1
    :try_start_0
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 2
    :goto_0
    aget-char v2, p0, v0

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p0

    .line 11
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterTypes([C)[[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getParameterCount([C)I

    move-result v0

    .line 2
    new-array v1, v0, [[C

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x28

    .line 3
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    .line 4
    :goto_0
    aget-char v3, p0, v0

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 6
    invoke-static {p0, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getQualifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getQualifier([C)[C

    move-result-object p0

    .line 6
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getQualifier([C)[C
    .locals 4

    const/16 v0, 0x3c

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[CII)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static getReturnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getReturnType([C)[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x29

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getSignatureQualifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getSignatureQualifier([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getSignatureQualifier([C)[C
    .locals 7

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    array-length v4, p0

    const/16 v5, 0x2e

    if-lt v2, v4, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    aget-char v4, p0, v2

    const/16 v6, 0x24

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v3, :cond_7

    move p0, v1

    .line 5
    :goto_3
    array-length v2, v0

    if-lt p0, v2, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    aget-char v2, v0, p0

    if-ne v2, v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    if-gtz v3, :cond_6

    .line 7
    invoke-static {v0, v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 8
    :cond_7
    :goto_4
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0
.end method

.method public static getSignatureSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getSignatureSimpleName([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getSignatureSimpleName([C)[C
    .locals 7

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    array-length v4, p0

    const/16 v5, 0x2e

    if-lt v2, v4, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    aget-char v4, p0, v2

    const/16 v6, 0x24

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v3, :cond_9

    move p0, v1

    move v2, p0

    .line 5
    :goto_3
    array-length v4, v0

    if-lt p0, v4, :cond_4

    goto :goto_5

    .line 6
    :cond_4
    aget-char v4, v0, p0

    const/16 v6, 0x20

    if-eq v4, v6, :cond_6

    if-eq v4, v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, p0, 0x1

    :goto_4
    if-gtz v3, :cond_8

    add-int/lit8 p0, p0, 0x1

    .line 7
    array-length v3, v0

    invoke-static {v0, p0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    if-lez v2, :cond_7

    .line 8
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 9
    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    :cond_7
    return-object p0

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    return-object v0
.end method

.method public static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_0
    if-gez v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_3

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_1

    goto :goto_3

    :cond_1
    if-nez v4, :cond_2

    move v6, v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_8

    move v5, v1

    goto :goto_3

    :cond_4
    if-nez v4, :cond_8

    move v2, v1

    :goto_1
    if-gez v5, :cond_6

    if-gez v2, :cond_5

    return-object p0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-gez v2, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v2, 0x1

    :goto_2
    sub-int v2, v5, v3

    .line 15
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 16
    invoke-static {p0, v5, v6, v1}, Lorg/eclipse/jdt/core/Signature;->appendArgumentSimpleNames([CIILjava/lang/StringBuffer;)V

    add-int/lit8 v2, v6, 0x1

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 17
    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getSimpleName([C)[C
    .locals 9

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_0
    if-gez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-char v7, p0, v1

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_3

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_1

    goto :goto_3

    :cond_1
    if-nez v4, :cond_2

    move v6, v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_8

    move v5, v1

    goto :goto_3

    :cond_4
    if-nez v4, :cond_8

    move v2, v1

    :goto_1
    if-gez v5, :cond_6

    if-gez v2, :cond_5

    return-object p0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 3
    invoke-static {p0, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0

    .line 4
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    if-gez v2, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :goto_2
    sub-int v4, v5, v2

    .line 5
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 6
    invoke-static {p0, v5, v6, v1}, Lorg/eclipse/jdt/core/Signature;->appendArgumentSimpleNames([CIILjava/lang/StringBuffer;)V

    add-int/lit8 v2, v6, 0x1

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array v0, p0, [C

    .line 9
    invoke-virtual {v1, v3, p0, v0, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v0

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getSimpleNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getSimpleNames([C)[[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleNames([C)[[C
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p0

    :goto_0
    if-nez v1, :cond_1

    .line 2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_1
    const/4 v2, 0x1

    move v3, v0

    :goto_1
    const/16 v4, 0x3c

    const/16 v5, 0x2e

    if-lt v3, v1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    aget-char v6, p0, v3

    if-eq v6, v5, :cond_7

    if-eq v6, v4, :cond_3

    goto :goto_5

    .line 4
    :cond_3
    :goto_2
    new-array v6, v2, [[C

    move v2, v0

    move v3, v2

    move v7, v3

    :goto_3
    if-lt v2, v1, :cond_4

    goto :goto_4

    .line 5
    :cond_4
    aget-char v8, p0, v2

    if-ne v8, v4, :cond_5

    :goto_4
    sub-int/2addr v1, v3

    .line 6
    new-array v2, v1, [C

    aput-object v2, v6, v7

    .line 7
    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6

    :cond_5
    if-ne v8, v5, :cond_6

    sub-int v8, v2, v3

    .line 8
    new-array v9, v8, [C

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    .line 9
    invoke-static {p0, v3, v9, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getThrownExceptionTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getThrownExceptionTypes([C)[[C

    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThrownExceptionTypes([C)[[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x5e

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/16 v0, 0x29

    .line 2
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    if-eq v0, v3, :cond_1

    add-int/2addr v0, v2

    .line 3
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v0

    add-int/2addr v0, v2

    .line 4
    array-length p0, p0

    if-ne v0, p0, :cond_0

    .line 5
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 8
    :cond_2
    array-length v3, p0

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-lt v1, v3, :cond_3

    .line 10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[C

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 11
    :cond_3
    aget-char v5, p0, v1

    if-ne v5, v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-static {p0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v5

    add-int/2addr v5, v2

    .line 13
    invoke-static {p0, v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getTypeArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeArguments([C)[[C

    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeArguments([C)[[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    sub-int/2addr v0, v1

    .line 2
    aget-char v1, p0, v0

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    move v3, v1

    :goto_0
    if-ltz v0, :cond_4

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 3
    aget-char v4, p0, v0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_3

    if-eq v4, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ltz v0, :cond_7

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v0, v1

    .line 5
    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_6

    .line 6
    aget-char v4, p0, v0

    if-ne v4, v2, :cond_5

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 8
    new-array p0, p0, [[C

    .line 9
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 10
    :cond_5
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeArgumentSignature([CI)I

    move-result v4

    add-int/2addr v4, v1

    .line 11
    invoke-static {p0, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_2

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 13
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 14
    :cond_8
    :goto_3
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0
.end method

.method public static getTypeErasure(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_0
    return-object p0
.end method

.method public static getTypeErasure([C)[C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x3c

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    .line 2
    :cond_0
    array-length v2, p0

    .line 3
    new-array v3, v2, [C

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-lt v1, v2, :cond_2

    if-gtz v5, :cond_1

    add-int v0, v6, v2

    sub-int/2addr v0, v7

    .line 4
    new-array v0, v0, [C

    .line 5
    invoke-static {v3, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v7

    .line 6
    invoke-static {p0, v7, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 8
    :cond_2
    aget-char v8, p0, v1

    if-eq v8, v0, :cond_5

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_4

    if-nez v5, :cond_7

    add-int/lit8 v7, v1, 0x1

    goto :goto_1

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    if-nez v5, :cond_6

    sub-int v8, v1, v7

    .line 10
    invoke-static {p0, v7, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getTypeParameterBounds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeParameterBounds([C)[[C

    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeParameterBounds([C)[[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    if-ltz v1, :cond_4

    .line 2
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 3
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    .line 4
    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    if-gez v2, :cond_1

    .line 5
    array-length v0, p0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    .line 6
    filled-new-array {p0}, [[C

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    :goto_0
    add-int/2addr v2, v3

    .line 8
    array-length v4, p0

    invoke-static {v0, p0, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p0

    if-nez v1, :cond_3

    return-object p0

    .line 9
    :cond_3
    array-length v0, p0

    add-int/2addr v0, v3

    .line 10
    new-array v0, v0, [[C

    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    array-length v1, p0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getTypeParameters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object p0

    .line 20
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeParameters([C)[[C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 3
    aget-char v1, p0, v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_0
    move v4, v3

    if-ge v3, v0, :cond_a

    .line 5
    aget-char v5, p0, v3

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    new-array p0, p0, [[C

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    const/16 v5, 0x3a

    .line 9
    invoke-static {v5, p0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v3

    if-ltz v3, :cond_9

    if-ge v3, v0, :cond_9

    .line 10
    :catch_0
    :goto_1
    aget-char v6, p0, v3

    if-eq v6, v5, :cond_4

    .line 11
    invoke-static {p0, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 12
    aget-char v6, p0, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v7, 0x21

    if-eq v6, v7, :cond_8

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_7

    const/16 v7, 0x54

    if-eq v6, v7, :cond_6

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    :try_start_1
    invoke-static {p0, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanArrayTypeSignature([CI)I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 14
    :cond_6
    invoke-static {p0, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeVariableSignature([CI)I

    move-result v3

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {p0, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result v3

    goto :goto_2

    .line 16
    :cond_8
    invoke-static {p0, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanCaptureTypeSignature([CI)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 17
    :cond_9
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    :catch_1
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getTypeSignatureKind(Ljava/lang/String;)I
    .locals 0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeSignatureKind([C)I

    move-result p0

    return p0
.end method

.method public static getTypeSignatureKind([C)I
    .locals 8

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    .line 2
    aget-char v0, p0, v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_4

    .line 3
    array-length v3, p0

    move v4, v1

    move v5, v4

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    aget-char v6, p0, v4

    if-eq v6, v2, :cond_2

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_1
    if-nez v5, :cond_3

    add-int/2addr v4, v1

    if-ge v4, v3, :cond_4

    .line 5
    aget-char v0, p0, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/16 p0, 0x21

    if-eq v0, p0, :cond_c

    const/16 p0, 0x26

    if-eq v0, p0, :cond_b

    const/16 p0, 0x2d

    if-eq v0, p0, :cond_a

    const/16 p0, 0x46

    if-eq v0, p0, :cond_9

    const/16 p0, 0x4c

    if-eq v0, p0, :cond_8

    const/16 p0, 0x51

    if-eq v0, p0, :cond_8

    const/16 p0, 0x56

    if-eq v0, p0, :cond_9

    const/16 p0, 0x7c

    if-eq v0, p0, :cond_7

    const/16 p0, 0x2a

    if-eq v0, p0, :cond_a

    const/16 p0, 0x2b

    if-eq v0, p0, :cond_a

    const/16 p0, 0x49

    if-eq v0, p0, :cond_9

    const/16 p0, 0x4a

    if-eq v0, p0, :cond_9

    const/16 p0, 0x53

    if-eq v0, p0, :cond_9

    const/16 p0, 0x54

    if-eq v0, p0, :cond_6

    const/16 p0, 0x5a

    if-eq v0, p0, :cond_9

    const/16 p0, 0x5b

    if-eq v0, p0, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    const/4 p0, 0x4

    return p0

    :cond_6
    const/4 p0, 0x3

    return p0

    :cond_7
    const/4 p0, 0x7

    return p0

    :cond_8
    return v1

    :cond_9
    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_a
    const/4 p0, 0x5

    return p0

    :cond_b
    const/16 p0, 0x8

    return p0

    :cond_c
    const/4 p0, 0x6

    return p0

    .line 7
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTypeVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeVariable([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getTypeVariable([C)[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 1
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getUnionTypeBounds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getUnionTypeBounds([C)[[C

    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnionTypeBounds([C)[[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getTypeSignatureKind([C)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v1, p0

    const/4 v2, 0x1

    move v3, v2

    .line 5
    :goto_0
    invoke-static {p0, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanClassTypeSignature([CI)I

    move-result v4

    .line 6
    const-string v5, "Invalid format"

    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 7
    invoke-static {p0, v3, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v1, -0x1

    if-ne v4, v3, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 9
    new-array p0, p0, [[C

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 11
    :cond_1
    aget-char v3, p0, v6

    const/16 v6, 0x3a

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeCapture(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->removeCapture([C)[C

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static removeCapture([C)[C
    .locals 1

    const/16 v0, 0x21

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->remove([CC)[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray([C)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    aget-char v1, p0, v0

    const/16 v2, 0x28

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4
    invoke-static {p0, v0, v3, v1}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array p0, p0, [C

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2, p0, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p0

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZ)[C

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static toCharArray([C[C[[CZZ)[C
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 9
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray([C[C[[CZZZ)[C
    .locals 6

    const/16 v0, 0x28

    .line 10
    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 11
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 12
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object p4

    .line 13
    invoke-static {p4, v3, p3, v1}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 16
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 17
    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p0

    .line 18
    array-length p1, p0

    add-int/lit8 p4, p1, -0x1

    move v0, p4

    :goto_0
    if-gez p4, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    aget-object v4, p0, p4

    aget-char v4, v4, v3

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_7

    :goto_1
    move p4, v3

    :goto_2
    if-lt p4, p1, :cond_3

    const/16 p0, 0x29

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array p0, p0, [C

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {v1, v3, p1, p0, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p0

    :cond_3
    if-ne p4, v0, :cond_4

    .line 23
    aget-object v4, p0, p4

    invoke-static {v4, v3, p3, v1, p5}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;Z)I

    goto :goto_3

    .line 24
    :cond_4
    aget-object v4, p0, p4

    invoke-static {v4, v3, p3, v1}, Lorg/eclipse/jdt/core/Signature;->appendTypeSignature([CIZLjava/lang/StringBuffer;)I

    :goto_3
    if-eqz p2, :cond_5

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    aget-object v4, p2, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 27
    :cond_5
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq p4, v4, :cond_6

    const/16 v4, 0x2c

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 30
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static toQualifiedName([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 10
    array-length v0, p0

    .line 11
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 12
    new-instance p0, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->toQualifiedName([[C)[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 13
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toQualifiedName([[C)[C
    .locals 7

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    move v3, v1

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 4
    new-array v5, v4, [C

    move v2, v1

    move v3, v2

    :goto_1
    if-lt v2, v0, :cond_2

    return-object v5

    .line 5
    :cond_2
    aget-object v4, p0, v2

    .line 6
    array-length v6, v4

    .line 7
    invoke-static {v4, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    add-int/lit8 v4, v0, -0x1

    if-eq v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x2e

    .line 8
    aput-char v6, v5, v3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_4
    aget-object v5, p0, v3

    array-length v5, v5

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v6, v0

    goto :goto_1

    .line 3
    :cond_0
    array-length v1, p2

    .line 4
    new-array v2, v1, [[C

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_2

    move-object v6, v2

    .line 5
    :goto_1
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    if-nez p1, :cond_1

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_2

    :goto_3
    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v4 .. v9}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C[C[[CZZZ)[C

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([C)V

    return-object p2

    .line 6
    :cond_2
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
