.class public Lorg/eclipse/jdt/internal/core/util/PublicScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/compiler/IScanner;
.implements Lorg/eclipse/jdt/core/compiler/ITerminalSymbols;


# static fields
.field public static final BINARY_LITERAL_NOT_BELOW_17:Ljava/lang/String; = "Binary_Literal_Not_Below_17"

.field public static final BracketKinds:I = 0x3

.field public static final COMMENT_ARRAYS_SIZE:I = 0x1e

.field public static final CurlyBracket:I = 0x2

.field private static final EMPTY_LINE_ENDS:[I

.field public static final END_OF_SOURCE:Ljava/lang/String; = "End_Of_Source"

.field public static final HIGH_SURROGATE_MAX_VALUE:I = 0xdbff

.field public static final HIGH_SURROGATE_MIN_VALUE:I = 0xd800

.field public static final ILLEGAL_HEXA_LITERAL:Ljava/lang/String; = "Illegal_Hexa_Literal"

.field public static final INVALID_BINARY:Ljava/lang/String; = "Invalid_Binary_Literal"

.field public static final INVALID_CHARACTER_CONSTANT:Ljava/lang/String; = "Invalid_Character_Constant"

.field public static final INVALID_CHAR_IN_STRING:Ljava/lang/String; = "Invalid_Char_In_String"

.field public static final INVALID_DIGIT:Ljava/lang/String; = "Invalid_Digit"

.field public static final INVALID_ESCAPE:Ljava/lang/String; = "Invalid_Escape"

.field public static final INVALID_FLOAT:Ljava/lang/String; = "Invalid_Float_Literal"

.field public static final INVALID_HEXA:Ljava/lang/String; = "Invalid_Hexa_Literal"

.field public static final INVALID_HIGH_SURROGATE:Ljava/lang/String; = "Invalid_High_Surrogate"

.field public static final INVALID_INPUT:Ljava/lang/String; = "Invalid_Input"

.field public static final INVALID_LOW_SURROGATE:Ljava/lang/String; = "Invalid_Low_Surrogate"

.field public static final INVALID_OCTAL:Ljava/lang/String; = "Invalid_Octal_Literal"

.field public static final INVALID_UNDERSCORE:Ljava/lang/String; = "Invalid_Underscore"

.field public static final INVALID_UNICODE_ESCAPE:Ljava/lang/String; = "Invalid_Unicode_Escape"

.field static final InternalTableSize:I = 0x6

.field private static final InternalTokenNameIdentifier:I = 0x5

.field public static final LOW_SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final LOW_SURROGATE_MIN_VALUE:I = 0xdc00

.field public static final NULL_SOURCE_STRING:Ljava/lang/String; = "Null_Source_String"

.field public static final OptimizedLength:I = 0x7

.field public static final RoundBracket:I = 0x0

.field public static final SquareBracket:I = 0x1

.field public static final TAG_POSTFIX:C = '$'

.field public static final TAG_POSTFIX_LENGTH:I = 0x1

.field public static final TAG_PREFIX:[C

.field public static final TAG_PREFIX_LENGTH:I

.field static final TableSize:I = 0x1e

.field public static final UNDERSCORES_IN_LITERALS_NOT_BELOW_17:Ljava/lang/String; = "Underscores_In_Literals_Not_Below_17"

.field public static final UNTERMINATED_COMMENT:Ljava/lang/String; = "Unterminated_Comment"

.field public static final UNTERMINATED_STRING:Ljava/lang/String; = "Unterminated_String"

.field static final charArray_a:[C

.field static final charArray_b:[C

.field static final charArray_c:[C

.field static final charArray_d:[C

.field static final charArray_e:[C

.field static final charArray_f:[C

.field static final charArray_g:[C

.field static final charArray_h:[C

.field static final charArray_i:[C

.field static final charArray_j:[C

.field static final charArray_k:[C

.field static final charArray_l:[C

.field static final charArray_m:[C

.field static final charArray_n:[C

.field static final charArray_o:[C

.field static final charArray_p:[C

.field static final charArray_q:[C

.field static final charArray_r:[C

.field static final charArray_s:[C

.field static final charArray_t:[C

.field static final charArray_u:[C

.field static final charArray_v:[C

.field static final charArray_w:[C

.field static final charArray_x:[C

.field static final charArray_y:[C

.field static final charArray_z:[C

.field static final initCharArray:[C


# instance fields
.field public final charArray_length:[[[[C

.field public checkNonExternalizedStringLiterals:Z

.field public commentPtr:I

.field public commentStarts:[I

.field public commentStops:[I

.field public commentTagStarts:[I

.field public complianceLevel:J

.field public containsAssertKeyword:Z

.field public currentCharacter:C

.field public currentPosition:I

.field public diet:Z

.field public eofPosition:I

.field public foundTaskCount:I

.field public foundTaskMessages:[[C

.field public foundTaskPositions:[[I

.field public foundTaskPriorities:[[C

.field public foundTaskTags:[[C

.field public initialPosition:I

.field public insideRecovery:Z

.field public isTaskCaseSensitive:Z

.field protected lastCommentLinePosition:I

.field protected lastPosition:I

.field public lineEnds:[I

.field public linePtr:I

.field newEntry2:I

.field newEntry3:I

.field newEntry4:I

.field newEntry5:I

.field newEntry6:I

.field private nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

.field protected nlsTagsPtr:I

.field public recordLineSeparator:Z

.field public returnOnlyGreater:Z

.field public scanningFloatLiteral:Z

.field public skipComments:Z

.field public source:[C

.field public sourceLevel:J

.field public startPosition:I

.field public taskPriorities:[[C

.field public taskTags:[[C

.field public tokenizeComments:Z

.field public tokenizeWhiteSpace:Z

.field public unicodeAsBackSlash:Z

.field public useAssertAsAnIndentifier:Z

.field public useEnumAsAnIndentifier:Z

.field public wasAcr:Z

.field public withoutUnicodeBuffer:[C

.field public withoutUnicodePtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->EMPTY_LINE_ENDS:[I

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_a:[C

    new-array v1, v0, [C

    const/16 v2, 0x62

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_b:[C

    new-array v1, v0, [C

    const/16 v2, 0x63

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_c:[C

    new-array v1, v0, [C

    const/16 v2, 0x64

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_d:[C

    new-array v1, v0, [C

    const/16 v2, 0x65

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_e:[C

    new-array v1, v0, [C

    const/16 v2, 0x66

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_f:[C

    new-array v1, v0, [C

    const/16 v2, 0x67

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_g:[C

    new-array v1, v0, [C

    const/16 v2, 0x68

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_h:[C

    new-array v1, v0, [C

    const/16 v2, 0x69

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_i:[C

    new-array v1, v0, [C

    const/16 v2, 0x6a

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_j:[C

    new-array v1, v0, [C

    const/16 v2, 0x6b

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_k:[C

    new-array v1, v0, [C

    const/16 v2, 0x6c

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_l:[C

    new-array v1, v0, [C

    const/16 v2, 0x6d

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_m:[C

    new-array v1, v0, [C

    const/16 v2, 0x6e

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_n:[C

    new-array v1, v0, [C

    const/16 v2, 0x6f

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_o:[C

    new-array v1, v0, [C

    const/16 v2, 0x70

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_p:[C

    new-array v1, v0, [C

    const/16 v2, 0x71

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_q:[C

    new-array v1, v0, [C

    const/16 v2, 0x72

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_r:[C

    new-array v1, v0, [C

    const/16 v2, 0x73

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_s:[C

    new-array v1, v0, [C

    const/16 v2, 0x74

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_t:[C

    new-array v1, v0, [C

    const/16 v2, 0x75

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_u:[C

    new-array v1, v0, [C

    const/16 v2, 0x76

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_v:[C

    new-array v1, v0, [C

    const/16 v2, 0x77

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_w:[C

    new-array v1, v0, [C

    const/16 v2, 0x78

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_x:[C

    new-array v1, v0, [C

    const/16 v2, 0x79

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_y:[C

    new-array v0, v0, [C

    const/16 v1, 0x7a

    aput-char v1, v0, v3

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_z:[C

    const/4 v0, 0x6

    new-array v0, v0, [C

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->initCharArray:[C

    const-string v0, "//$NON-NLS-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->TAG_PREFIX:[C

    array-length v0, v0

    sput v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->TAG_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/32 v4, 0x2f0000

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;-><init>(ZZZJ[[C[[CZ)V

    return-void
.end method

.method public constructor <init>(ZZZJJ[[C[[CZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useAssertAsAnIndentifier:Z

    .line 4
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->containsAssertKeyword:Z

    .line 5
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useEnumAsAnIndentifier:Z

    .line 6
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    .line 7
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->skipComments:Z

    .line 8
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeComments:Z

    .line 9
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    .line 10
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    .line 11
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanningFloatLiteral:Z

    const/16 v4, 0x1e

    .line 12
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStops:[I

    .line 13
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStarts:[I

    .line 14
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentTagStarts:[I

    const/4 v5, -0x1

    .line 15
    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    .line 16
    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    const/4 v6, 0x0

    .line 17
    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskTags:[[C

    .line 18
    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPriorities:[[C

    .line 19
    iput v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    .line 20
    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskTags:[[C

    .line 21
    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskPriorities:[[C

    const/4 v7, 0x1

    .line 22
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->isTaskCaseSensitive:Z

    .line 23
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->diet:Z

    const/16 v8, 0xfa

    .line 24
    new-array v8, v8, [I

    iput-object v8, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    .line 25
    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    .line 26
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    const/4 v5, 0x3

    .line 27
    new-array v5, v5, [I

    const/4 v8, 0x2

    const/4 v9, 0x6

    aput v9, v5, v8

    aput v4, v5, v7

    const/4 v8, 0x7

    aput v8, v5, v3

    const-class v8, [C

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[[C

    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    .line 28
    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    .line 29
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->returnOnlyGreater:Z

    move v5, v3

    :goto_0
    if-lt v5, v9, :cond_6

    .line 30
    iput v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry2:I

    .line 31
    iput v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry3:I

    .line 32
    iput v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry4:I

    .line 33
    iput v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry5:I

    .line 34
    iput v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry6:I

    .line 35
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->insideRecovery:Z

    const v4, 0x7fffffff

    .line 36
    iput v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    move/from16 v6, p1

    .line 37
    iput-boolean v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeComments:Z

    move/from16 v8, p2

    .line 38
    iput-boolean v8, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    move-wide/from16 v10, p4

    .line 39
    iput-wide v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    move-wide/from16 v12, p6

    .line 40
    iput-wide v12, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    move/from16 v14, p3

    .line 41
    iput-boolean v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkNonExternalizedStringLiterals:Z

    if-eqz v1, :cond_5

    .line 42
    array-length v4, v1

    if-eqz v2, :cond_4

    .line 43
    array-length v5, v2

    if-eq v5, v4, :cond_1

    if-le v5, v4, :cond_0

    .line 44
    new-array v5, v4, [[C

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v4

    move-object v2, v5

    move-object v5, v1

    goto :goto_1

    .line 45
    :cond_0
    new-array v4, v5, [[C

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v5

    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v1

    move v6, v4

    .line 46
    :goto_1
    new-array v8, v6, [I

    move v1, v3

    :goto_2
    if-lt v1, v6, :cond_3

    add-int/lit8 v1, v6, -0x1

    .line 47
    invoke-static {v5, v3, v1, v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII[I)V

    .line 48
    new-array v4, v6, [[C

    :goto_3
    if-lt v3, v6, :cond_2

    .line 49
    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskPriorities:[[C

    goto :goto_4

    .line 50
    :cond_2
    aget v1, v8, v3

    aget-object v1, v2, v1

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 51
    :cond_3
    aput v1, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v4, v7

    .line 52
    invoke-static {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII)V

    move-object v5, v1

    .line 53
    :goto_4
    iput-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskTags:[[C

    move/from16 v15, p10

    .line 54
    iput-boolean v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->isTaskCaseSensitive:Z

    :cond_5
    return-void

    :cond_6
    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v14, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move/from16 v15, p10

    :goto_5
    if-lt v3, v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-lt v4, v9, :cond_8

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x1e

    goto :goto_5

    .line 55
    :cond_8
    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    aget-object v7, v7, v5

    aget-object v7, v7, v3

    sget-object v16, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->initCharArray:[C

    aput-object v16, v7, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    goto :goto_6
.end method

.method public constructor <init>(ZZZJ[[C[[CZ)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 56
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;-><init>(ZZZJJ[[C[[CZ)V

    return-void
.end method

.method private final consumeDigits(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(IZ)V

    return-void
.end method

.method private final consumeDigits(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits0(IIIZ)I

    move-result p1

    const-string p2, "Underscores_In_Literals_Not_Below_17"

    const-wide/32 v2, 0x330000

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 4
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string p2, "Invalid_Underscore"

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    :goto_0
    return-void

    .line 7
    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final consumeDigits0(IIIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result p4

    if-nez p4, :cond_0

    move p4, p2

    goto :goto_0

    :cond_1
    move p4, v2

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsDigit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsDigit(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits0(IIIZ)I

    move-result p1

    if-nez p1, :cond_3

    return p4

    :cond_3
    return p1

    :cond_4
    if-ne p4, p2, :cond_5

    return p3

    :cond_5
    return p4
.end method

.method private extractInt([CII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt p2, p3, :cond_0

    return v1

    :cond_0
    aget-char v2, p1, p2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    :pswitch_0
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_6
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_7
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_8
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_9
    move v2, v0

    :goto_1
    mul-int/lit8 v1, v1, 0xa

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalScanIdentifierOrKeyword(II[C)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    aget-char v2, p3, p1

    const/16 v5, 0x8

    const/16 v6, 0x75

    const/16 v7, 0x68

    const/4 v10, 0x7

    const/16 v11, 0x69

    const/16 v12, 0x6c

    const/16 v15, 0x6f

    const/16 v3, 0x61

    const/16 v9, 0x74

    const/16 v13, 0x65

    const/4 v14, 0x4

    const/4 v4, 0x3

    const/4 v8, 0x5

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v8

    :pswitch_1
    if-eq v1, v8, :cond_0

    return v8

    :cond_0
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_1

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_1

    return v6

    :cond_1
    return v8

    :pswitch_2
    if-eq v1, v14, :cond_4

    if-eq v1, v5, :cond_2

    return v8

    :cond_2
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_3

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_3

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_3

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_3

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_3

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_3

    const/16 v1, 0x6a

    return v1

    :cond_3
    return v8

    :cond_4
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_5

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_5

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_5

    const/16 v1, 0x1a

    return v1

    :cond_5
    return v8

    :pswitch_3
    if-eq v1, v4, :cond_10

    if-eq v1, v14, :cond_c

    if-eq v1, v8, :cond_a

    const/4 v2, 0x6

    if-eq v1, v2, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    return v8

    :cond_6
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_7

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_7

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_7

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_7

    return v11

    :cond_7
    return v8

    :cond_8
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_9

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_9

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_9

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_9

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_9

    const/16 v1, 0xe3

    return v1

    :cond_9
    return v8

    :cond_a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_b

    const/16 v1, 0x7e

    return v1

    :cond_b
    return v8

    :cond_c
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_e

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_d

    const/16 v1, 0x22

    return v1

    :cond_d
    return v8

    :cond_e
    const/16 v2, 0x72

    if-ne v1, v2, :cond_f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_f

    const/16 v1, 0x27

    return v1

    :cond_f
    return v8

    :cond_10
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_11

    const/4 v1, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_11

    const/16 v1, 0x7f

    return v1

    :cond_11
    return v8

    :pswitch_4
    if-eq v1, v8, :cond_1a

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    if-eq v1, v5, :cond_14

    const/16 v2, 0xc

    if-eq v1, v2, :cond_12

    return v8

    :cond_12
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_13

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_13

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_13

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_13

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_13

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_13

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_13

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_13

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_13

    add-int/lit8 v1, p1, 0xa

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_13

    add-int/lit8 v1, p1, 0xb

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_13

    const/16 v1, 0x55

    return v1

    :cond_13
    return v8

    :cond_14
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_15

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_15

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_15

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_15

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_15

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_15

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_15

    return v7

    :cond_15
    return v8

    :cond_16
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_18

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_17

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_17

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_17

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_17

    const/16 v1, 0x5e

    return v1

    :cond_17
    return v8

    :cond_18
    const/16 v2, 0x77

    if-ne v1, v2, :cond_19

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_19

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_19

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_19

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_19

    const/16 v1, 0x7d

    return v1

    :cond_19
    return v8

    :cond_1a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_1c

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_1b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_1b

    const/16 v1, 0x19

    return v1

    :cond_1b
    return v8

    :cond_1c
    if-ne v1, v6, :cond_1d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_1d

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1d

    const/16 v1, 0x21

    return v1

    :cond_1d
    return v8

    :pswitch_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1e

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_1e

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_1e

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_1e

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1e

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1e

    const/16 v1, 0x7c

    return v1

    :cond_1e
    return v8

    :pswitch_6
    const/4 v2, 0x6

    if-eq v1, v2, :cond_25

    if-eq v1, v10, :cond_21

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1f

    return v8

    :cond_1f
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_20

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_20

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_20

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_20

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_20

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_20

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_20

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_20

    const/16 v1, 0x66

    return v1

    :cond_20
    return v8

    :cond_21
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_23

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_22

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_22

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_22

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_22

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_22

    const/16 v1, 0xd6

    return v1

    :cond_22
    return v8

    :cond_23
    const/16 v2, 0x72

    if-ne v1, v2, :cond_24

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_24

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_24

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_24

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_24

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_24

    return v13

    :cond_24
    return v8

    :cond_25
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_26

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_26

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_26

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_26

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_26

    const/16 v1, 0x67

    return v1

    :cond_26
    return v8

    :pswitch_7
    if-eq v1, v4, :cond_2b

    if-eq v1, v14, :cond_29

    const/4 v2, 0x6

    if-eq v1, v2, :cond_27

    return v8

    :cond_27
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_28

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_28

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_28

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_28

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_28

    const/16 v1, 0x64

    return v1

    :cond_28
    return v8

    :cond_29
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_2a

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_2a

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_2a

    const/16 v1, 0x26

    return v1

    :cond_2a
    return v8

    :cond_2b
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_2c

    const/4 v1, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2c

    const/16 v1, 0x20

    return v1

    :cond_2c
    return v8

    :pswitch_8
    if-ne v1, v14, :cond_2d

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_2d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_2d

    const/16 v1, 0x18

    return v1

    :cond_2d
    return v8

    :pswitch_9
    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    if-eq v1, v4, :cond_36

    const/4 v2, 0x6

    if-eq v1, v2, :cond_34

    const/16 v2, 0x9

    if-eq v1, v2, :cond_32

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2e

    return v8

    :cond_2e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_30

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_2f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_2f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_2f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_2f

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_2f

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2f

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_2f

    const/16 v1, 0x9

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2f

    const/16 v1, 0x10c

    return v1

    :cond_2f
    return v8

    :cond_30
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_31

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_31

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_31

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_31

    const/16 v1, 0x9

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_31

    const/16 v1, 0x41

    return v1

    :cond_31
    return v8

    :cond_32
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_33

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_33

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_33

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_33

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_33

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_33

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_33

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_33

    const/16 v1, 0xb4

    return v1

    :cond_33
    return v8

    :cond_34
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_35

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_35

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_35

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_35

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_35

    const/16 v1, 0xbf

    return v1

    :cond_35
    return v8

    :cond_36
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_37

    const/4 v1, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_37

    const/16 v1, 0x17

    return v1

    :cond_37
    return v8

    :cond_38
    const/4 v1, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_39

    const/16 v1, 0x7b

    return v1

    :cond_39
    return v8

    :pswitch_a
    if-ne v1, v14, :cond_3a

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_3a

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_3a

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_3a

    const/16 v1, 0x194

    return v1

    :cond_3a
    return v8

    :pswitch_b
    if-eq v1, v4, :cond_43

    if-eq v1, v8, :cond_3d

    if-eq v1, v10, :cond_3b

    return v8

    :cond_3b
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_3c

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_3c

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_3c

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_3c

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_3c

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_3c

    const/16 v1, 0xe2

    return v1

    :cond_3c
    return v8

    :cond_3d
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_3f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_3e

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_3e

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_3e

    const/16 v1, 0x63

    return v1

    :cond_3e
    return v8

    :cond_3f
    if-ne v1, v12, :cond_41

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_40

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_40

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_40

    const/16 v1, 0x16

    return v1

    :cond_40
    return v8

    :cond_41
    if-ne v1, v3, :cond_42

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_42

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_42

    const/16 v1, 0x25

    return v1

    :cond_42
    return v8

    :cond_43
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_44

    const/4 v1, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_44

    const/16 v1, 0x7a

    return v1

    :cond_44
    return v8

    :pswitch_c
    if-eq v1, v14, :cond_47

    if-eq v1, v10, :cond_45

    return v8

    :cond_45
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_46

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_46

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_46

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_46

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_46

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_46

    const/16 v1, 0xf3

    return v1

    :cond_46
    return v8

    :cond_47
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_49

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_48

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_48

    const/16 v1, 0xd5

    return v1

    :cond_48
    return v8

    :cond_49
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_4b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_4b

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    const-wide/32 v3, 0x310000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4a

    const/16 v1, 0x190

    return v1

    :cond_4a
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useEnumAsAnIndentifier:Z

    :cond_4b
    return v8

    :pswitch_d
    const/4 v2, 0x2

    if-eq v1, v2, :cond_50

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4e

    if-eq v1, v10, :cond_4c

    return v8

    :cond_4c
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_4d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_4d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_4d

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_4d

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_4d

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_4d

    const/16 v1, 0xd4

    return v1

    :cond_4d
    return v8

    :cond_4e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_4f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_4f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_4f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_4f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_4f

    const/16 v1, 0x15

    return v1

    :cond_4f
    return v8

    :cond_50
    const/4 v1, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_51

    const/16 v1, 0x79

    return v1

    :cond_51
    return v8

    :pswitch_e
    if-eq v1, v14, :cond_5a

    if-eq v1, v8, :cond_54

    if-eq v1, v5, :cond_52

    return v8

    :cond_52
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_53

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_53

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_53

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_53

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_53

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v6, :cond_53

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_53

    const/16 v1, 0x78

    return v1

    :cond_53
    return v8

    :cond_54
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_56

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_55

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_55

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v7, :cond_55

    const/16 v1, 0xe1

    return v1

    :cond_55
    return v8

    :cond_56
    if-ne v1, v12, :cond_58

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_57

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_57

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v2, :cond_57

    const/16 v1, 0xa5

    return v1

    :cond_57
    return v8

    :cond_58
    if-ne v1, v15, :cond_59

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_59

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_59

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_59

    const/16 v1, 0x193

    return v1

    :cond_59
    return v8

    :cond_5a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_5c

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_5b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_5b

    const/16 v1, 0xd3

    return v1

    :cond_5b
    return v8

    :cond_5c
    if-ne v1, v7, :cond_5d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_5d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_5d

    const/16 v1, 0x14

    return v1

    :cond_5d
    return v8

    :pswitch_f
    if-eq v1, v14, :cond_62

    if-eq v1, v8, :cond_60

    if-eq v1, v10, :cond_5e

    return v8

    :cond_5e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_5f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_5f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v12, :cond_5f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_5f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_5f

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5f

    const/16 v1, 0x12

    return v1

    :cond_5f
    return v8

    :cond_60
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_61

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_61

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_61

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_61

    const/16 v1, 0x77

    return v1

    :cond_61
    return v8

    :cond_62
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_63

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_63

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_63

    const/16 v1, 0x13

    return v1

    :cond_63
    return v8

    :pswitch_10
    const/4 v2, 0x6

    if-eq v1, v2, :cond_66

    if-eq v1, v5, :cond_64

    return v8

    :cond_64
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_65

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_65

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_65

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_65

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v3, :cond_65

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_65

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_65

    const/16 v1, 0x62

    return v1

    :cond_65
    return v8

    :cond_66
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_68

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v2, :cond_68

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v13, :cond_68

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_68

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_68

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_67

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->containsAssertKeyword:Z

    const/16 v1, 0x76

    return v1

    :cond_67
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useAssertAsAnIndentifier:Z

    :cond_68
    return v8

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isIdentifier(I)Z
    .locals 1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isKeyword(I)Z
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    const/16 v0, 0x43

    if-eq p0, v0, :cond_0

    const/16 v0, 0x46

    if-eq p0, v0, :cond_0

    const/16 v0, 0x78

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x63
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isLiteral(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseTags()V
    .locals 14

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    aget v4, v4, v1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    aget-char v5, v5, v4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_8

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    new-array v6, v5, [C

    invoke-static {v4, v2, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    move v5, v4

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    move v5, v4

    move v4, v3

    :goto_1
    sget-object v7, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->TAG_PREFIX:[C

    invoke-static {v7, v6, v2, v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    if-nez v8, :cond_3

    const/16 v8, 0xa

    new-array v8, v8, [Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iput-object v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTagsPtr:I

    :cond_3
    :goto_2
    if-ne v0, v7, :cond_4

    goto :goto_4

    :cond_4
    sget v8, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->TAG_PREFIX_LENGTH:I

    add-int/2addr v8, v0

    const/16 v9, 0x24

    invoke-static {v9, v6, v8, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CII)I

    move-result v9

    if-eq v9, v7, :cond_6

    add-int/lit8 v10, v1, 0x1

    :try_start_0
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    add-int v12, v0, v4

    add-int v13, v9, v4

    invoke-direct {p0, v6, v8, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->extractInt([CII)I

    move-result v8

    invoke-direct {v11, v12, v13, v10, v8}, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    add-int/2addr v0, v4

    add-int v8, v9, v4

    invoke-direct {v11, v0, v8, v10, v7}, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;-><init>(IIII)V

    :goto_3
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTagsPtr:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    array-length v10, v8

    if-ne v0, v10, :cond_5

    add-int/lit8 v10, v0, 0xa

    new-array v10, v10, [Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iput-object v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    invoke-static {v8, v3, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iget v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTagsPtr:I

    add-int/lit8 v10, v8, 0x1

    iput v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTagsPtr:I

    aput-object v11, v0, v8

    move v8, v9

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->TAG_PREFIX:[C

    invoke-static {v0, v6, v2, v8, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v0

    goto :goto_2

    :cond_7
    :goto_4
    return-void

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final atEnd()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkTaskTag(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    aget v3, v3, v2

    if-lt v3, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, p1, 0x1

    aget-char v3, v0, v3

    add-int/lit8 p1, p1, 0x2

    :goto_0
    const/4 v4, 0x1

    if-ge p1, p2, :cond_e

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-lt p1, v5, :cond_1

    goto/16 :goto_7

    :cond_1
    const/16 v5, 0x40

    if-eq v3, v5, :cond_d

    move v5, v2

    :goto_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskTags:[[C

    array-length v7, v6

    if-lt v5, v7, :cond_2

    goto/16 :goto_6

    :cond_2
    aget-object v6, v6, v5

    array-length v7, v6

    if-nez v7, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    aget-char v10, v6, v2

    invoke-static {v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_5

    :cond_4
    move v8, v2

    :goto_2
    if-lt v8, v7, :cond_9

    add-int v8, p1, v7

    if-ge v8, p2, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    add-int/lit8 v11, v8, -0x1

    aget-char v11, v0, v11

    invoke-static {v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    aget-char v11, v0, v8

    invoke-static {v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskTags:[[C

    if-nez v3, :cond_6

    const/4 v3, 0x5

    new-array v9, v3, [[C

    iput-object v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskTags:[[C

    new-array v9, v3, [[C

    iput-object v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    new-array v9, v3, [[C

    iput-object v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPriorities:[[C

    new-array v3, v3, [[I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    goto :goto_3

    :cond_6
    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    array-length v10, v3

    if-ne v9, v10, :cond_7

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[C

    iput-object v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskTags:[[C

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[C

    iput-object v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPriorities:[[C

    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[C

    iput-object v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPriorities:[[C

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[I

    iput-object v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskPriorities:[[C

    if-eqz v3, :cond_8

    array-length v9, v3

    if-ge v5, v9, :cond_8

    aget-object v3, v3, v5

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskTags:[[C

    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    aput-object v6, v5, v9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPriorities:[[C

    aput-object v3, v5, v9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    add-int/lit8 v8, v8, -0x1

    filled-new-array {p1, v8}, [I

    move-result-object v5

    aput-object v5, v3, v9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    aput-object v5, v3, v9

    add-int/2addr v9, v4

    iput v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr p1, v7

    goto :goto_6

    :cond_9
    add-int v9, p1, v8

    iget v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v9, v10, :cond_c

    if-lt v9, p2, :cond_a

    goto :goto_5

    :cond_a
    aget-char v9, v0, v9

    aget-char v10, v6, v8

    if-eq v9, v10, :cond_b

    iget-boolean v11, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->isTaskCaseSensitive:Z

    if-nez v11, :cond_c

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v9

    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v10

    if-eq v9, v10, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_6
    aget-char v3, v0, p1

    add-int/2addr p1, v4

    goto/16 :goto_0

    :cond_e
    :goto_7
    move p1, v1

    move v3, v2

    :goto_8
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    if-lt p1, v5, :cond_14

    if-eqz v3, :cond_13

    :goto_9
    if-lt v1, v5, :cond_f

    goto :goto_c

    :cond_f
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    aget-object p1, p1, v1

    array-length p1, p1

    if-nez p1, :cond_12

    add-int/lit8 p1, v1, 0x1

    :goto_a
    if-lt p1, v5, :cond_10

    goto :goto_b

    :cond_10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    aget-object v0, p2, p1

    array-length v2, v0

    if-eqz v2, :cond_11

    aput-object v0, p2, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    aget-object v0, p2, v1

    aget-object p1, p2, p1

    aget p1, p1, v4

    aput p1, v0, v4

    goto :goto_b

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    :goto_c
    return-void

    :cond_14
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    aget-object v7, v6, p1

    aget v7, v7, v2

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskTags:[[C

    aget-object v8, v8, p1

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v8, p1, 0x1

    if-ge v8, v5, :cond_15

    aget-object v5, v6, v8

    aget v5, v5, v2

    sub-int/2addr v5, v4

    goto :goto_d

    :cond_15
    add-int/lit8 v5, p2, -0x1

    :goto_d
    if-ge v5, v7, :cond_16

    move v5, v7

    :cond_16
    move v6, v7

    :goto_e
    const/4 v9, -0x1

    if-lt v6, v5, :cond_17

    move v6, v9

    goto :goto_10

    :cond_17
    aget-char v10, v0, v6

    const/16 v11, 0xa

    if-eq v10, v11, :cond_19

    const/16 v11, 0xd

    if-ne v10, v11, :cond_18

    goto :goto_f

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_19
    :goto_f
    add-int/lit8 v6, v6, -0x1

    :goto_10
    if-ne v6, v9, :cond_1b

    move v10, v5

    :goto_11
    if-gt v10, v7, :cond_1a

    goto :goto_12

    :cond_1a
    aget-char v11, v0, v10

    const/16 v12, 0x2a

    if-ne v11, v12, :cond_1c

    add-int/lit8 v6, v10, -0x1

    :goto_12
    if-ne v6, v9, :cond_1b

    goto :goto_13

    :cond_1b
    move v5, v6

    goto :goto_13

    :cond_1c
    add-int/lit8 v10, v10, -0x1

    goto :goto_11

    :goto_13
    if-ne v7, v5, :cond_1d

    move v3, v4

    goto :goto_16

    :cond_1d
    :goto_14
    aget-char v6, v0, v5

    invoke-static {v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1f

    if-le v7, v5, :cond_1e

    goto :goto_15

    :cond_1e
    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_1f
    :goto_15
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskPositions:[[I

    aget-object v6, v6, p1

    aput v5, v6, v4

    sub-int/2addr v5, v7

    add-int/2addr v5, v4

    new-array v6, v5, [C

    invoke-static {v0, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskMessages:[[C

    aput-object v6, v5, p1

    :goto_16
    move p1, v8

    goto/16 :goto_8
.end method

.method public getCurrentIdentifierSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v0, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    return-object v0

    :cond_1
    packed-switch v0, :pswitch_data_0

    new-array v3, v0, [C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->optimizedCurrentTokenSource6()[C

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->optimizedCurrentTokenSource5()[C

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->optimizedCurrentTokenSource4()[C

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->optimizedCurrentTokenSource3()[C

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->optimizedCurrentTokenSource2()[C

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->optimizedCurrentTokenSource1()[C

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentStringLiteral()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-direct {v0, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getCurrentTokenEndPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentTokenSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    new-array v3, v0, [C

    const/4 v4, 0x1

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v3, v2

    new-array v4, v3, [C

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :goto_0
    return-object v3
.end method

.method public getCurrentTokenSourceString()[C
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    add-int/lit8 v4, v0, -0x2

    new-array v4, v4, [C

    sub-int/2addr v0, v2

    invoke-static {v3, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    new-array v2, v5, [C

    invoke-static {v0, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v2

    :goto_0
    return-object v4
.end method

.method public getCurrentTokenStartPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    return v0
.end method

.method public final getCurrentTokenString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final getLineEnd(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    if-le p1, v2, :cond_1

    return v1

    :cond_1
    if-gtz p1, :cond_2

    return v1

    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    return p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final getLineEnds()[I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->EMPTY_LINE_ENDS:[I

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final getLineNumber(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    return p1
.end method

.method public final getLineStart(I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le p1, v2, :cond_1

    return v1

    :cond_1
    if-gtz p1, :cond_2

    return v1

    :cond_2
    if-ne p1, v3, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->initialPosition:I

    return p1

    :cond_3
    add-int/lit8 p1, p1, -0x2

    aget p1, v0, p1

    add-int/2addr p1, v3

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public getNLSTags()[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTagsPtr:I

    if-eqz v0, :cond_0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->nlsTagsPtr:I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNextChar()I
    .locals 5

    const/4 v0, -0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v2, v1, v2

    iput-char v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_0

    .line 2
    aget-char v1, v1, v3

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    .line 5
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    .line 7
    :cond_1
    :goto_0
    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public final getNextChar(CC)I
    .locals 8

    .line 24
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 25
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_3

    .line 26
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_3

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    .line 28
    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v1, p1, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    move v2, v7

    goto :goto_0

    .line 29
    :cond_2
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    .line 30
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    sub-int/2addr p1, v7

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :goto_0
    return v2

    :cond_3
    if-ne v4, p1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v4, p2, :cond_6

    move v6, v7

    .line 31
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz p1, :cond_5

    .line 32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_5
    return v6

    .line 33
    :cond_6
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 34
    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 35
    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2
.end method

.method public final getNextChar(C)Z
    .locals 7

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 9
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    return v2

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 11
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    .line 13
    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v1, p1, :cond_1

    .line 14
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    .line 15
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_1
    return v6

    :cond_2
    if-eq v4, p1, :cond_3

    .line 16
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 17
    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    .line 18
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v6

    .line 20
    :catch_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    .line 21
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 22
    :catch_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    .line 23
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2
.end method

.method public final getNextCharAsDigit()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 3
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    .line 5
    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    .line 7
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    sub-int/2addr v1, v6

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_1
    return v6

    .line 8
    :cond_2
    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 10
    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v6

    .line 12
    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 13
    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2
.end method

.method public final getNextCharAsDigit(I)Z
    .locals 8

    .line 14
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 15
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    .line 16
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    .line 18
    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->digit(CI)I

    move-result p1

    if-ne p1, v6, :cond_1

    .line 19
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    .line 20
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    sub-int/2addr p1, v7

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_1
    return v7

    .line 21
    :cond_2
    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->digit(CI)I

    move-result p1

    if-ne p1, v6, :cond_3

    .line 22
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 23
    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v7

    .line 25
    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    .line 26
    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2
.end method

.method public getNextCharAsJavaIdentifierPart()Z
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v3, v0

    iput-char v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    aget-char v3, v3, v4

    const/16 v4, 0x75

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-char v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const v5, 0xd800

    const v6, 0xdfff

    const v8, 0xdc00

    if-lt v4, v5, :cond_5

    const v5, 0xdbff

    if-gt v4, v5, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    const-wide/32 v11, 0x310000

    cmp-long v5, v9, v11

    if-gez v5, :cond_2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar()I

    move-result v5

    int-to-char v5, v5

    if-lt v5, v8, :cond_4

    if-le v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v8, v9, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JCC)Z

    move-result v4

    goto :goto_2

    :cond_4
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_5
    if-lt v4, v8, :cond_6

    if-gt v4, v6, :cond_6

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_6
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v4

    :goto_2
    if-eqz v3, :cond_8

    if-nez v4, :cond_7

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_7
    return v7

    :cond_8
    if-nez v4, :cond_9

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    :cond_9
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return v7

    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2
.end method

.method public getNextCharAsJavaIdentifierPartWithBoundCheck()Z
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v6, v4, v0

    iput-char v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/4 v7, 0x1

    if-ge v5, v1, :cond_1

    const/16 v1, 0x5c

    if-ne v6, v1, :cond_1

    aget-char v1, v4, v5

    const/16 v4, 0x75

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-char v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const v5, 0xd800

    const v6, 0xdfff

    const v8, 0xdc00

    if-lt v4, v5, :cond_5

    const v5, 0xdbff

    if-gt v4, v5, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    const-wide/32 v11, 0x310000

    cmp-long v5, v9, v11

    if-gez v5, :cond_2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharWithBoundChecks()I

    move-result v5

    int-to-char v5, v5

    if-lt v5, v8, :cond_4

    if-le v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v8, v9, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JCC)Z

    move-result v4

    goto :goto_2

    :cond_4
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_5
    if-lt v4, v8, :cond_6

    if-gt v4, v6, :cond_6

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_6
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v4

    :goto_2
    if-eqz v1, :cond_8

    if-nez v4, :cond_7

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2

    :cond_7
    return v7

    :cond_8
    if-nez v4, :cond_9

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    return v2

    :cond_9
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return v7

    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    return v2
.end method

.method public final getNextCharWithBoundChecks()I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v3, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/4 v5, 0x0

    if-lt v4, v1, :cond_2

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_1
    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    return v0

    :cond_2
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    aget-char v0, v3, v4

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v2

    :cond_3
    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_4
    :goto_0
    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    return v0
.end method

.method public getNextToken()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->diet:Z

    const/16 v3, 0x5f

    const/16 v4, 0x9e

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->jumpOverMethodBody()V

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->diet:Z

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-le v0, v2, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    move v0, v2

    :goto_0
    const/16 v5, 0x3e8

    const/4 v6, 0x1

    :try_start_0
    iput v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iget v7, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    move v0, v2

    move v8, v0

    :goto_1
    :try_start_1
    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iget v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    const/16 v11, 0x75

    const/16 v12, 0x5c

    :try_start_2
    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v14, v10, 0x1

    iput v14, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v15, v13, v10

    iput-char v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v15, v12, :cond_2

    aget-char v0, v13, v14
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v11, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_2

    :catch_0
    :try_start_3
    iget-boolean v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    if-eqz v13, :cond_3

    iget v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v14, v13, -0x1

    if-eq v7, v14, :cond_3

    sub-int/2addr v13, v6

    iput v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v7, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    return v5

    :cond_3
    iget v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-le v13, v14, :cond_4

    return v4

    :cond_4
    :goto_2
    iget v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-le v13, v14, :cond_6

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    if-eqz v0, :cond_5

    add-int/lit8 v0, v13, -0x1

    if-eq v7, v0, :cond_5

    sub-int/2addr v13, v6

    iput v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v7, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    return v5

    :cond_5
    return v4

    :cond_6
    const/16 v14, 0xc

    const/16 v15, 0x9

    const/16 v4, 0xd

    const/16 v6, 0xa

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v13

    iget v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v11, v10

    goto :goto_3

    :cond_7
    sub-int v11, v13, v10

    iget-char v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v10, v4, :cond_8

    if-ne v10, v6, :cond_9

    :cond_8
    iget-boolean v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_9
    iget-char v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v10, v15, :cond_a

    if-eq v10, v6, :cond_a

    if-eq v10, v14, :cond_a

    if-eq v10, v4, :cond_a

    const/16 v13, 0x20

    if-eq v10, v13, :cond_a

    move v13, v2

    goto :goto_3

    :cond_a
    const/4 v13, 0x1

    :goto_3
    if-eqz v13, :cond_b

    const/4 v8, 0x1

    :cond_b
    if-nez v13, :cond_8a

    if-eqz v8, :cond_f

    iget-boolean v8, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    if-eqz v8, :cond_d

    iget v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v2, v11

    iput v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v7, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    if-eqz v0, :cond_c

    iput v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :cond_c
    return v5

    :cond_d
    if-eqz v0, :cond_e

    iput v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    goto :goto_4

    :cond_e
    iput v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :cond_f
    :goto_4
    iget-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v8, 0x1a

    if-eq v0, v8, :cond_88

    const/16 v8, 0x5b

    if-eq v0, v8, :cond_87

    const/16 v8, 0x21

    const/16 v9, 0x3d

    if-eq v0, v8, :cond_85

    const/16 v8, 0x22

    if-eq v0, v8, :cond_70

    const/16 v8, 0x5d

    if-eq v0, v8, :cond_6f

    const/16 v8, 0x5e

    if-eq v0, v8, :cond_6d

    const/4 v8, 0x3

    const/16 v10, 0x40

    const/16 v11, 0x3e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/16 v3, 0x80

    if-ge v0, v3, :cond_12

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v3, v0

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanIdentifierOrKeyword()I

    move-result v0

    return v0

    :cond_10
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_11
    const/16 v0, 0x135

    return v0

    :cond_12
    const v3, 0xd800

    if-lt v0, v3, :cond_15

    const v3, 0xdbff

    if-gt v0, v3, :cond_15

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    const-wide/32 v8, 0x310000

    cmp-long v3, v3, v8

    if-ltz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar()I

    move-result v3

    int-to-char v3, v3

    const v4, 0xdc00

    if-lt v3, v4, :cond_13

    const v4, 0xdfff

    if-gt v3, v4, :cond_13

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v8, v9, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JCC)Z

    move-result v0

    goto :goto_5

    :cond_13
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Low_Surrogate"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Unicode_Escape"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const v3, 0xdc00

    if-lt v0, v3, :cond_17

    const v3, 0xdfff

    if-gt v0, v3, :cond_17

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    const-wide/32 v8, 0x310000

    cmp-long v0, v2, v8

    if-gez v0, :cond_16

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Unicode_Escape"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_High_Surrogate"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-wide v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanIdentifierOrKeyword()I

    move-result v0

    return v0

    :cond_18
    iget-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_19
    const/16 v0, 0x135

    return v0

    :pswitch_0
    const/16 v0, 0x48

    return v0

    :pswitch_1
    return v3

    :pswitch_2
    const/16 v0, 0x7c

    invoke-virtual {v1, v0, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x50

    return v0

    :cond_1a
    if-lez v0, :cond_1b

    const/16 v0, 0xad

    return v0

    :cond_1b
    const/16 v0, 0x46

    return v0

    :pswitch_3
    const/16 v0, 0x6e

    return v0

    :pswitch_4
    const/16 v0, 0x191

    return v0

    :pswitch_5
    const/16 v0, 0x51

    return v0

    :pswitch_6
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->returnOnlyGreater:Z

    const/16 v2, 0x44

    if-eqz v0, :cond_1c

    return v2

    :cond_1c
    invoke-virtual {v1, v9, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x43

    return v0

    :cond_1d
    if-lez v0, :cond_21

    invoke-virtual {v1, v9, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0xb1

    return v0

    :cond_1e
    if-lez v0, :cond_20

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0xb2

    return v0

    :cond_1f
    return v14

    :cond_20
    const/16 v0, 0xb

    return v0

    :cond_21
    return v2

    :pswitch_7
    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x23

    return v0

    :cond_22
    const/16 v0, 0xa7

    return v0

    :pswitch_8
    const/16 v0, 0x3c

    invoke-virtual {v1, v9, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x42

    return v0

    :cond_23
    if-lez v0, :cond_25

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0xb0

    return v0

    :cond_24
    const/16 v0, 0xe

    return v0

    :cond_25
    const/16 v0, 0x45

    return v0

    :pswitch_9
    return v10

    :pswitch_a
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x196

    return v0

    :cond_26
    const/16 v0, 0x9a

    return v0

    :pswitch_b
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->skipComments:Z

    if-nez v0, :cond_4f

    const/16 v0, 0x2a

    const/16 v8, 0x2f

    invoke-virtual {v1, v8, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v11

    if-nez v11, :cond_38

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v8, 0x3e9

    :try_start_4
    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v10, v0, 0x1

    iput v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v9, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v0, v12, :cond_27

    aget-char v0, v9, v10

    const/16 v9, 0x75

    if-ne v0, v9, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    :cond_27
    iget-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v0, v12, :cond_28

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v0, v9

    if-ne v0, v12, :cond_28

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_28
    move v0, v2

    :cond_29
    :goto_6
    iget-char v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v9, v4, :cond_2d

    if-ne v9, v6, :cond_2a

    goto :goto_8

    :cond_2a
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v0, v9, :cond_2c

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v10, v0, 0x1

    iput v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v9, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v0, v12, :cond_2b

    aget-char v0, v9, v10

    const/16 v9, 0x75

    if-ne v0, v9, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    const/4 v0, 0x1

    goto :goto_7

    :cond_2b
    move v0, v2

    :goto_7
    iget-char v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v9, v12, :cond_29

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v9, v9, v10

    if-ne v9, v12, :cond_29

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_6

    :cond_2c
    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2d
    :goto_8
    if-ne v9, v4, :cond_2f

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    iget v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-le v9, v10, :cond_2f

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    aget-char v11, v9, v10

    if-ne v11, v6, :cond_2e

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput-char v6, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_9

    :cond_2e
    if-ne v11, v12, :cond_2f

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    const/16 v10, 0x75

    if-ne v9, v10, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    const/4 v0, 0x1

    :cond_2f
    :goto_9
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordComment(I)V

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskTags:[[C

    if-eqz v9, :cond_30

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-virtual {v1, v9, v10}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkTaskTag(II)V

    :cond_30
    iget-char v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v9, v4, :cond_31

    if-ne v9, v6, :cond_34

    :cond_31
    iget-boolean v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkNonExternalizedStringLiterals:Z

    if-eqz v4, :cond_32

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastPosition:I

    iget v6, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-ge v4, v6, :cond_32

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->parseTags()V

    :cond_32
    iget-boolean v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v4, :cond_34

    if-eqz v0, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushUnicodeLineSeparator()V

    goto :goto_a

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_34
    :goto_a
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeComments:Z
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_45

    return v8

    :catch_1
    :try_start_5
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordComment(I)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskTags:[[C

    if-eqz v0, :cond_35

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkTaskTag(II)V

    :cond_35
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkNonExternalizedStringLiterals:Z

    if-eqz v0, :cond_36

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-ge v0, v4, :cond_36

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->parseTags()V

    :cond_36
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeComments:Z

    if-eqz v0, :cond_37

    return v8

    :cond_37
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_11

    :cond_38
    if-lez v11, :cond_4f

    :try_start_6
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v13, v11, 0x1

    iput v13, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v11, v9, v11

    iput-char v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v12, :cond_39

    aget-char v9, v9, v13

    const/16 v11, 0x75

    if-ne v9, v11, :cond_39

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    const/4 v9, 0x1

    goto :goto_b

    :cond_39
    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v9, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_3a
    move v9, v2

    :goto_b
    iget-char v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v0, :cond_3b

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_c

    :cond_3b
    move v13, v2

    move v14, v13

    :goto_c
    if-eq v11, v4, :cond_3c

    if-ne v11, v6, :cond_3e

    :cond_3c
    iget-boolean v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v11, :cond_3e

    if-eqz v9, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushUnicodeLineSeparator()V

    goto :goto_d

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_3e
    :goto_d
    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v15, v9, 0x1

    iput v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v3, v11, v9

    iput-char v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v3, v12, :cond_3f

    aget-char v3, v11, v15

    const/16 v11, 0x75

    if-ne v3, v11, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    const/4 v3, 0x1

    goto :goto_e

    :cond_3f
    move v3, v2

    :goto_e
    iget-char v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v12, :cond_40

    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v15, v15, v5

    if-ne v15, v12, :cond_40

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_40
    if-ne v11, v8, :cond_41

    move v13, v2

    :cond_41
    move v5, v2

    :cond_42
    :goto_f
    iget-char v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v8, :cond_46

    if-eqz v14, :cond_46

    if-eqz v13, :cond_43

    const/16 v0, 0x3eb

    goto :goto_10

    :cond_43
    const/16 v0, 0x3ea

    :goto_10
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordComment(I)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentTagStarts:[I

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    aput v5, v3, v4

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->taskTags:[[C

    if-eqz v3, :cond_44

    iget v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkTaskTag(II)V

    :cond_44
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeComments:Z

    if-eqz v3, :cond_45

    return v0

    :cond_45
    :goto_11
    move v0, v7

    const/16 v3, 0x5f

    const/16 v4, 0x9e

    goto/16 :goto_0

    :cond_46
    iget v14, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v14, v15, :cond_4e

    if-eq v11, v4, :cond_47

    if-ne v11, v6, :cond_49

    :cond_47
    iget-boolean v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v11, :cond_49

    if-eqz v3, :cond_48

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushUnicodeLineSeparator()V

    goto :goto_12

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_49
    :goto_12
    iget-char v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v3, v0, :cond_4c

    if-eq v3, v10, :cond_4a

    goto :goto_13

    :cond_4a
    if-nez v5, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->isFirstTag()Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_14

    :cond_4b
    :goto_13
    move v9, v5

    :goto_14
    move v14, v2

    move v5, v9

    goto :goto_15

    :cond_4c
    const/4 v14, 0x1

    :goto_15
    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v11, v9, 0x1

    iput v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v15, v3, v9

    iput-char v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v15, v12, :cond_4d

    aget-char v3, v3, v11

    const/16 v11, 0x75

    if-ne v3, v11, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    const/4 v3, 0x1

    goto :goto_16

    :cond_4d
    move v3, v2

    :goto_16
    iget-char v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v12, :cond_42

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v11, v11, v15

    if-ne v11, v12, :cond_42

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto/16 :goto_f

    :cond_4e
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_Comment"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :try_start_7
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_Comment"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_50

    const/16 v0, 0xab

    return v0

    :cond_50
    return v6

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsDigit()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_51
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_53

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_52

    const/16 v0, 0x192

    return v0

    :cond_52
    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v0, 0x6

    return v0

    :cond_53
    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v0, 0x6

    return v0

    :pswitch_d
    const/16 v0, 0x2d

    invoke-virtual {v1, v0, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_54

    const/4 v0, 0x2

    return v0

    :cond_54
    if-lez v0, :cond_55

    const/16 v0, 0xa9

    return v0

    :cond_55
    invoke-virtual {v1, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 v0, 0x195

    return v0

    :cond_56
    const/4 v0, 0x4

    return v0

    :pswitch_e
    const/16 v0, 0x5a

    return v0

    :pswitch_f
    const/16 v0, 0x2b

    invoke-virtual {v1, v0, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_57

    const/4 v2, 0x1

    return v2

    :cond_57
    if-lez v0, :cond_58

    const/16 v0, 0xa8

    return v0

    :cond_58
    return v8

    :pswitch_10
    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_59

    const/16 v0, 0xaa

    return v0

    :cond_59
    const/16 v0, 0x8

    return v0

    :pswitch_11
    const/16 v0, 0x56

    return v0

    :pswitch_12
    const/4 v0, 0x7

    return v0

    :pswitch_13
    invoke-virtual {v1, v6, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    const-string v3, "Invalid_Character_Constant"

    if-eqz v0, :cond_69

    const/16 v4, 0x27

    if-lez v0, :cond_5c

    :goto_17
    if-ge v2, v8, :cond_5b

    :try_start_8
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int v5, v0, v2

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-eq v5, v9, :cond_5b

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int v9, v0, v2

    aget-char v9, v5, v9

    if-eq v9, v6, :cond_5b

    add-int v9, v0, v2

    aget-char v5, v5, v9

    if-eq v5, v4, :cond_5a

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_5a
    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_5b
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_5f

    :goto_18
    if-ge v2, v8, :cond_5e

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int v5, v0, v2

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-eq v5, v9, :cond_5e

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int v9, v0, v2

    aget-char v9, v5, v9

    if-eq v9, v6, :cond_5e

    add-int v9, v0, v2

    aget-char v5, v5, v9

    if-eq v5, v4, :cond_5d

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_5d
    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_5e
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    if-eqz v0, :cond_61

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v12, :cond_60

    aget-char v0, v0, v8

    const/16 v5, 0x75

    if-ne v0, v5, :cond_60

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_19

    :cond_60
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_62

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    goto :goto_19

    :cond_61
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v0, v5

    iput-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    :cond_62
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanEscapeCharacter()V

    goto :goto_1a

    :cond_63
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v12, :cond_64

    aget-char v0, v0, v8
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    const/16 v5, 0x75

    if-ne v0, v5, :cond_64

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_1a

    :cond_64
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_65

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_65
    :goto_1a
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x2c

    return v0

    :cond_66
    :goto_1b
    const/16 v0, 0x14

    if-ge v2, v0, :cond_68

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int v5, v0, v2

    iget v8, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-eq v5, v8, :cond_68

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int v8, v0, v2

    aget-char v8, v5, v8

    if-eq v8, v6, :cond_68

    add-int v8, v0, v2

    aget-char v5, v5, v8

    if-eq v5, v4, :cond_67

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_67
    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_68
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    const/16 v0, 0x26

    invoke-virtual {v1, v0, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_6a

    const/16 v0, 0x4f

    return v0

    :cond_6a
    if-lez v0, :cond_6b

    const/16 v0, 0xac

    return v0

    :cond_6b
    return v11

    :pswitch_15
    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 v0, 0xaf

    return v0

    :cond_6c
    return v15

    :cond_6d
    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v0, :cond_6e

    const/16 v0, 0xae

    return v0

    :cond_6e
    const/16 v0, 0x3f

    return v0

    :cond_6f
    const/16 v0, 0xa6

    return v0

    :cond_70
    :try_start_b
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v3, v12, :cond_71

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_71

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    :goto_1c
    const/4 v0, 0x1

    goto :goto_1e

    :catch_4
    move-exception v0

    goto/16 :goto_24

    :cond_71
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_72

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_72
    :goto_1d
    move v0, v2

    :goto_1e
    iget-char v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v3, v8, :cond_73

    const/16 v0, 0x2d

    return v0

    :cond_73
    iget v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v5, v9, :cond_82

    if-eq v3, v6, :cond_7a

    if-ne v3, v4, :cond_74

    goto/16 :goto_20

    :cond_74
    if-ne v3, v12, :cond_78

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    if-eqz v0, :cond_75

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v3, v5, 0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v12, :cond_77

    aget-char v0, v0, v3

    const/16 v3, 0x75

    if-ne v0, v3, :cond_77

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    goto :goto_1f

    :cond_75
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-nez v0, :cond_76

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeInitializeBuffer(I)V

    :cond_76
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v0, v3

    iput-char v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    :cond_77
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanEscapeCharacter()V

    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_78

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_78
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v3, v12, :cond_79

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_79

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto/16 :goto_1c

    :cond_79
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_72

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    goto/16 :goto_1d

    :cond_7a
    :goto_20
    if-eqz v0, :cond_80

    move v0, v2

    :goto_21
    const/16 v3, 0x32

    if-ge v0, v3, :cond_81

    iget v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v3, v4, :cond_7f

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v9, v3, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v10, v4, v3

    iput-char v10, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v10, v12, :cond_7b

    aget-char v4, v4, v9

    const/16 v9, 0x75

    if-ne v4, v9, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_22

    :cond_7b
    const/16 v9, 0x75

    :cond_7c
    if-eq v10, v6, :cond_7e

    :goto_22
    iget-char v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v3, v8, :cond_7d

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_7d
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Invalid_Char_In_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    iput v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_23

    :cond_7f
    iput v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_23

    :cond_80
    const/4 v3, 0x1

    sub-int/2addr v5, v3

    iput v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_81
    :goto_23
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Invalid_Char_In_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Unterminated_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_b .. :try_end_b} :catch_4

    :goto_24
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid_Escape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    :goto_25
    const/16 v3, 0x32

    if-ge v2, v3, :cond_84

    iget v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int v4, v3, v2

    iget v5, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-eq v4, v5, :cond_84

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int v5, v3, v2

    aget-char v5, v4, v5

    if-eq v5, v6, :cond_84

    add-int v5, v3, v2

    aget-char v4, v4, v5

    if-eq v4, v8, :cond_83

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_83
    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_84
    throw v0

    :catch_5
    iget v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_String"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_86

    const/16 v0, 0x24

    return v0

    :cond_86
    const/16 v0, 0x47

    return v0

    :cond_87
    const/16 v0, 0xf

    return v0

    :cond_88
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_89

    const/16 v2, 0x9e

    return v2

    :cond_89
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Ctrl-Z"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_6

    :cond_8a
    const/16 v4, 0x9e

    const/4 v6, 0x1

    goto/16 :goto_1

    :catch_6
    move v0, v7

    :catch_7
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    if-eqz v2, :cond_8b

    iget v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_8b

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    const/16 v2, 0x3e8

    return v2

    :cond_8b
    const/16 v2, 0x9e

    return v2

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNextUnicodeChar()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const-string v3, "Invalid_Unicode_Escape"

    if-ge v1, v2, :cond_6

    const/4 v0, 0x6

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v1, v1, v2

    const/16 v4, 0x75

    if-eq v1, v4, :cond_4

    add-int/lit8 v4, v2, 0x4

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-gt v4, v5, :cond_3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v5, v6

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-gt v5, v2, :cond_2

    if-ltz v5, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v7, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v6, v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v6

    if-gt v6, v2, :cond_2

    if-ltz v6, :cond_2

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v7, v7, v8

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v7

    if-gt v7, v2, :cond_2

    if-ltz v7, :cond_2

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v7

    int-to-char v1, v1

    iput-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeInitializeBuffer(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    return-void

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sub-int/2addr v5, v2

    add-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v1, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRawTokenSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v0, v1

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final getRawTokenSourceEnd()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getSource()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    return-object v0
.end method

.method public isFirstTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final jumpOverMethodBody()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    :goto_0
    :try_start_0
    iput v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :cond_1
    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v5, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x75

    const/16 v10, 0x5c

    if-ne v4, v10, :cond_2

    aget-char v5, v5, v6

    if-ne v5, v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v4

    goto :goto_1

    :cond_2
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v5, :cond_4

    if-eq v4, v7, :cond_3

    if-ne v4, v8, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_4
    iget-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_1

    iget-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v5, 0x22

    if-eq v4, v5, :cond_37

    const/16 v5, 0x27

    if-eq v4, v5, :cond_30

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_d

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_c

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_b

    const/16 v5, 0x80

    if-ge v4, v5, :cond_6

    :try_start_1
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v4, v5, v4

    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanIdentifierOrKeyword()I

    goto/16 :goto_16

    :cond_5
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3d

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanNumber(Z)I

    goto/16 :goto_16

    :cond_6
    const v5, 0xd800

    const v6, 0xdfff

    const v7, 0xdc00

    if-lt v4, v5, :cond_9

    const v5, 0xdbff

    if-gt v4, v5, :cond_9

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    const-wide/32 v10, 0x310000

    cmp-long v5, v8, v10

    if-ltz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar()I

    move-result v5

    int-to-char v5, v5

    if-lt v5, v7, :cond_3d

    if-le v5, v6, :cond_7

    goto/16 :goto_16

    :cond_7
    iget-wide v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v6, v7, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JCC)Z

    move-result v4

    goto :goto_2

    :cond_8
    new-instance v4, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v5, "Invalid_Unicode_Escape"

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    if-lt v4, v7, :cond_a

    if-gt v4, v6, :cond_a

    goto/16 :goto_16

    :cond_a
    iget-wide v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanIdentifierOrKeyword()I
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_16

    :cond_b
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    return-void

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x2a

    :try_start_2
    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v6, :cond_1b

    const/16 v4, 0x3e9

    :try_start_3
    iget v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v11, v5, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v6, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v10, :cond_e

    aget-char v5, v6, v11

    if-ne v5, v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    :cond_e
    iget-char v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v10, :cond_f

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v5, v6

    if-ne v5, v10, :cond_f

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_f
    move v5, v1

    :cond_10
    :goto_3
    iget-char v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v6, v7, :cond_14

    if-ne v6, v8, :cond_11

    goto :goto_5

    :cond_11
    iget v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ge v5, v6, :cond_13

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v11, v5, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v6, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v10, :cond_12

    aget-char v5, v6, v11

    if-ne v5, v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    move v5, v2

    goto :goto_4

    :cond_12
    move v5, v1

    :goto_4
    iget-char v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v6, v10, :cond_10

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v6, v6, v11

    if-ne v6, v10, :cond_10

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_3

    :cond_13
    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    :cond_14
    :goto_5
    if-ne v6, v7, :cond_16

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    iget v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-le v6, v11, :cond_16

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    aget-char v12, v6, v11

    if-ne v12, v8, :cond_15

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput-char v8, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_6

    :cond_15
    if-ne v12, v10, :cond_16

    add-int/lit8 v11, v11, 0x1

    aget-char v6, v6, v11

    if-ne v6, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    move v5, v2

    :cond_16
    :goto_6
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordComment(I)V

    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v6, :cond_3d

    iget-char v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v6, v7, :cond_17

    if-ne v6, v8, :cond_3d

    :cond_17
    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkNonExternalizedStringLiterals:Z

    if-eqz v6, :cond_18

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastPosition:I

    iget v7, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-ge v6, v7, :cond_18

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->parseTags()V

    :cond_18
    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v6, :cond_3d

    if-eqz v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushUnicodeLineSeparator()V

    goto/16 :goto_16

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_16

    :catch_0
    :try_start_4
    iget v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v5, v2

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordComment(I)V

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->checkNonExternalizedStringLiterals:Z

    if-eqz v4, :cond_1a

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastPosition:I

    iget v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-ge v4, v5, :cond_1a

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->parseTags()V

    :cond_1a
    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeComments:Z

    if-nez v4, :cond_3d

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_16

    :cond_1b
    if-lez v6, :cond_3d

    :try_start_5
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v11, v6, v11

    iput-char v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v10, :cond_1c

    aget-char v6, v6, v12

    if-ne v6, v9, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    move v6, v2

    goto :goto_7

    :cond_1c
    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v6, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_1d
    move v6, v1

    :goto_7
    iget-char v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v11, v4, :cond_1e

    move v12, v2

    :goto_8
    move v13, v12

    goto :goto_9

    :cond_1e
    move v12, v1

    goto :goto_8

    :goto_9
    if-eq v11, v7, :cond_1f

    if-ne v11, v8, :cond_21

    :cond_1f
    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v11, :cond_21

    if-eqz v6, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushUnicodeLineSeparator()V

    goto :goto_a

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_21
    :goto_a
    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v14, v6, 0x1

    iput v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v15, v11, v6

    iput-char v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v15, v10, :cond_22

    aget-char v11, v11, v14

    if-ne v11, v9, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    move v11, v2

    goto :goto_b

    :cond_22
    move v11, v1

    :goto_b
    iget-char v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v14, v10, :cond_23

    iget-object v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v15, v15, v2

    if-ne v15, v10, :cond_23

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :cond_23
    if-ne v14, v5, :cond_24

    move v12, v1

    :cond_24
    move v2, v1

    :cond_25
    :goto_c
    iget-char v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v14, v5, :cond_27

    if-eqz v13, :cond_27

    if-eqz v12, :cond_26

    const/16 v4, 0x3eb

    goto :goto_d

    :cond_26
    const/16 v4, 0x3ea

    :goto_d
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordComment(I)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentTagStarts:[I

    iget v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    aput v2, v4, v5

    goto/16 :goto_16

    :cond_27
    iget v13, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-lt v13, v15, :cond_28

    return-void

    :cond_28
    if-eq v14, v7, :cond_29

    if-ne v14, v8, :cond_2b

    :cond_29
    iget-boolean v13, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->recordLineSeparator:Z

    if-eqz v13, :cond_2b

    if-eqz v11, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushUnicodeLineSeparator()V

    goto :goto_e

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->pushLineSeparator()V

    :cond_2b
    :goto_e
    iget-char v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v11, v4, :cond_2e

    const/16 v13, 0x40

    if-eq v11, v13, :cond_2c

    goto :goto_f

    :cond_2c
    if-nez v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->isFirstTag()Z

    move-result v11

    if-eqz v11, :cond_2d

    goto :goto_10

    :cond_2d
    :goto_f
    move v6, v2

    :goto_10
    move v13, v1

    move v2, v6

    goto :goto_11

    :cond_2e
    const/4 v13, 0x1

    :goto_11
    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v14, v6, 0x1

    iput v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v15, v11, v6

    iput-char v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v15, v10, :cond_2f

    aget-char v11, v11, v14

    if-ne v11, v9, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    const/4 v11, 0x1

    goto :goto_12

    :cond_2f
    move v11, v1

    :goto_12
    iget-char v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v14, v10, :cond_25

    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v14, v14, v15

    if-ne v14, v10, :cond_25

    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_1
    return-void

    :cond_30
    :try_start_6
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v2, :cond_34

    :try_start_7
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    if-eqz v2, :cond_32

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v4, v10, :cond_31

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_31

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_13

    :cond_31
    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    goto :goto_13

    :cond_32
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v2, v2, v4

    iput-char v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    :cond_33
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanEscapeCharacter()V

    goto :goto_14

    :cond_34
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v4, v10, :cond_35

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_35

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_14

    :cond_35
    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_36

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_7
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_2
    :cond_36
    :goto_14
    :try_start_8
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_16

    :cond_37
    :try_start_9
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v4, v10, :cond_38

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_38

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_15

    :cond_38
    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_39

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_9
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_3
    :cond_39
    :goto_15
    :try_start_a
    iget-char v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v2, v5, :cond_3a

    goto :goto_16

    :cond_3a
    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-lt v4, v6, :cond_3b

    return-void

    :cond_3b
    if-ne v2, v7, :cond_3c

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    aget-char v2, v2, v4

    if-ne v2, v8, :cond_3d

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_16

    :cond_3c
    if-ne v2, v8, :cond_3e

    :catch_4
    :cond_3d
    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3e
    if-ne v2, v10, :cond_42

    :try_start_b
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    if-eqz v2, :cond_40

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v4, v10, :cond_3f

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_17

    :cond_3f
    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_41

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    goto :goto_17

    :cond_40
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v2, v2, v4

    iput-char v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    :cond_41
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanEscapeCharacter()V
    :try_end_b
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_6

    :catch_5
    :cond_42
    :try_start_c
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v4, v10, :cond_43

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_43

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_15

    :cond_43
    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_39

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V
    :try_end_c
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_15

    :catch_6
    return-void
.end method

.method public final jumpOverUnicodeWhiteSpace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public final optimizedCurrentTokenSource1()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char v0, v1, v2

    return-object v1

    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_z:[C

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_y:[C

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_x:[C

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_w:[C

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_v:[C

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_u:[C

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_t:[C

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_s:[C

    return-object v0

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_r:[C

    return-object v0

    :pswitch_9
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_q:[C

    return-object v0

    :pswitch_a
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_p:[C

    return-object v0

    :pswitch_b
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_o:[C

    return-object v0

    :pswitch_c
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_n:[C

    return-object v0

    :pswitch_d
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_m:[C

    return-object v0

    :pswitch_e
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_l:[C

    return-object v0

    :pswitch_f
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_k:[C

    return-object v0

    :pswitch_10
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_j:[C

    return-object v0

    :pswitch_11
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_i:[C

    return-object v0

    :pswitch_12
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_h:[C

    return-object v0

    :pswitch_13
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_g:[C

    return-object v0

    :pswitch_14
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_f:[C

    return-object v0

    :pswitch_15
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_e:[C

    return-object v0

    :pswitch_16
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_d:[C

    return-object v0

    :pswitch_17
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_c:[C

    return-object v0

    :pswitch_18
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_b:[C

    return-object v0

    :pswitch_19
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_a:[C

    return-object v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final optimizedCurrentTokenSource2()[C
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    aget-char v2, v0, v1

    shl-int/lit8 v3, v2, 0x6

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v0, v4

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x1e

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aget-object v3, v5, v3

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry2:I

    :cond_0
    const/4 v7, 0x1

    add-int/2addr v5, v7

    const/4 v8, 0x6

    if-lt v5, v8, :cond_4

    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry2:I

    const/4 v5, -0x1

    :cond_1
    add-int/2addr v5, v7

    if-le v5, v9, :cond_3

    add-int/2addr v9, v7

    if-lt v9, v8, :cond_2

    move v9, v6

    :cond_2
    const/4 v2, 0x2

    new-array v4, v2, [C

    invoke-static {v0, v1, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry2:I

    aput-object v4, v3, v9

    return-object v4

    :cond_3
    aget-object v10, v3, v5

    aget-char v11, v10, v6

    if-ne v2, v11, :cond_1

    aget-char v11, v10, v7

    if-ne v4, v11, :cond_1

    return-object v10

    :cond_4
    aget-object v8, v3, v5

    aget-char v9, v8, v6

    if-ne v2, v9, :cond_0

    aget-char v7, v8, v7

    if-ne v4, v7, :cond_0

    return-object v8
.end method

.method public final optimizedCurrentTokenSource3()[C
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    aget-char v3, v0, v1

    shl-int/lit8 v4, v3, 0x6

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v0, v5

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x1e

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-object v4, v6, v4

    iget v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry3:I

    :cond_0
    add-int/2addr v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x2

    if-lt v6, v9, :cond_4

    iget v11, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry3:I

    const/4 v6, -0x1

    :cond_1
    add-int/2addr v6, v7

    if-le v6, v11, :cond_3

    add-int/2addr v11, v7

    if-lt v11, v9, :cond_2

    move v11, v8

    :cond_2
    const/4 v2, 0x3

    new-array v3, v2, [C

    invoke-static {v0, v1, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v11, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry3:I

    aput-object v3, v4, v11

    return-object v3

    :cond_3
    aget-object v12, v4, v6

    aget-char v13, v12, v8

    if-ne v3, v13, :cond_1

    aget-char v13, v12, v7

    if-ne v2, v13, :cond_1

    aget-char v13, v12, v10

    if-ne v5, v13, :cond_1

    return-object v12

    :cond_4
    aget-object v9, v4, v6

    aget-char v8, v9, v8

    if-ne v3, v8, :cond_0

    aget-char v8, v9, v7

    if-ne v2, v8, :cond_0

    aget-char v8, v9, v10

    if-ne v5, v8, :cond_0

    return-object v9
.end method

.method public final optimizedCurrentTokenSource4()[C
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v1, v3

    add-int/lit8 v4, v2, 0x3

    aget-char v4, v1, v4

    aget-char v5, v1, v2

    shl-int/lit8 v6, v5, 0x6

    add-int/lit8 v7, v2, 0x2

    aget-char v7, v1, v7

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x1e

    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    const/4 v9, 0x2

    aget-object v8, v8, v9

    aget-object v6, v8, v6

    iget v8, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry4:I

    :cond_0
    const/4 v10, 0x1

    add-int/2addr v8, v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x6

    if-lt v8, v13, :cond_4

    iget v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry4:I

    const/4 v8, -0x1

    :goto_0
    add-int/2addr v8, v10

    if-le v8, v14, :cond_2

    add-int/2addr v14, v10

    if-lt v14, v13, :cond_1

    move v14, v11

    :cond_1
    const/4 v3, 0x4

    new-array v4, v3, [C

    invoke-static {v1, v2, v4, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v14, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry4:I

    aput-object v4, v6, v14

    return-object v4

    :cond_2
    aget-object v15, v6, v8

    aget-char v13, v15, v11

    if-ne v5, v13, :cond_3

    aget-char v13, v15, v10

    if-ne v3, v13, :cond_3

    aget-char v13, v15, v9

    if-ne v7, v13, :cond_3

    aget-char v13, v15, v12

    if-ne v4, v13, :cond_3

    return-object v15

    :cond_3
    const/4 v13, 0x6

    goto :goto_0

    :cond_4
    aget-object v13, v6, v8

    aget-char v11, v13, v11

    if-ne v5, v11, :cond_0

    aget-char v10, v13, v10

    if-ne v3, v10, :cond_0

    aget-char v10, v13, v9

    if-ne v7, v10, :cond_0

    aget-char v10, v13, v12

    if-ne v4, v10, :cond_0

    return-object v13
.end method

.method public final optimizedCurrentTokenSource5()[C
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v1, v3

    add-int/lit8 v4, v2, 0x3

    aget-char v4, v1, v4

    aget-char v5, v1, v2

    shl-int/lit8 v6, v5, 0xc

    add-int/lit8 v7, v2, 0x2

    aget-char v7, v1, v7

    shl-int/lit8 v8, v7, 0x6

    add-int/2addr v6, v8

    add-int/lit8 v8, v2, 0x4

    aget-char v8, v1, v8

    add-int/2addr v6, v8

    rem-int/lit8 v6, v6, 0x1e

    iget-object v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aget-object v6, v9, v6

    iget v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry5:I

    :goto_0
    const/4 v11, 0x1

    add-int/2addr v9, v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x6

    if-lt v9, v14, :cond_3

    iget v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry5:I

    const/16 v16, -0x1

    :goto_1
    add-int/lit8 v15, v16, 0x1

    if-le v15, v9, :cond_1

    add-int/2addr v9, v11

    if-lt v9, v14, :cond_0

    move v9, v12

    :cond_0
    const/4 v3, 0x5

    new-array v4, v3, [C

    invoke-static {v1, v2, v4, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry5:I

    aput-object v4, v6, v9

    return-object v4

    :cond_1
    aget-object v16, v6, v15

    aget-char v14, v16, v12

    if-ne v5, v14, :cond_2

    aget-char v14, v16, v11

    if-ne v3, v14, :cond_2

    aget-char v14, v16, v13

    if-ne v7, v14, :cond_2

    aget-char v14, v16, v10

    if-ne v4, v14, :cond_2

    const/4 v14, 0x4

    aget-char v10, v16, v14

    if-ne v8, v10, :cond_2

    return-object v16

    :cond_2
    move/from16 v16, v15

    const/4 v10, 0x3

    const/4 v14, 0x6

    goto :goto_1

    :cond_3
    aget-object v10, v6, v9

    aget-char v12, v10, v12

    if-ne v5, v12, :cond_4

    aget-char v11, v10, v11

    if-ne v3, v11, :cond_4

    aget-char v11, v10, v13

    if-ne v7, v11, :cond_4

    const/4 v11, 0x3

    aget-char v12, v10, v11

    if-ne v4, v12, :cond_5

    const/4 v12, 0x4

    aget-char v12, v10, v12

    if-ne v8, v12, :cond_5

    return-object v10

    :cond_4
    const/4 v11, 0x3

    :cond_5
    move v10, v11

    goto :goto_0
.end method

.method public final optimizedCurrentTokenSource6()[C
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v1, v3

    add-int/lit8 v4, v2, 0x3

    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x5

    aget-char v5, v1, v5

    aget-char v6, v1, v2

    shl-int/lit8 v7, v6, 0xc

    add-int/lit8 v8, v2, 0x2

    aget-char v8, v1, v8

    shl-int/lit8 v9, v8, 0x6

    add-int/2addr v7, v9

    add-int/lit8 v9, v2, 0x4

    aget-char v9, v1, v9

    add-int/2addr v7, v9

    rem-int/lit8 v7, v7, 0x1e

    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->charArray_length:[[[[C

    const/4 v11, 0x4

    aget-object v10, v10, v11

    aget-object v7, v10, v7

    iget v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry6:I

    :goto_0
    const/4 v12, 0x1

    add-int/2addr v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/16 v16, 0x2

    const/4 v15, 0x6

    if-lt v10, v15, :cond_3

    iget v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry6:I

    const/16 v17, -0x1

    :goto_1
    add-int/lit8 v11, v17, 0x1

    if-le v11, v10, :cond_1

    add-int/2addr v10, v12

    if-lt v10, v15, :cond_0

    move v10, v13

    :cond_0
    new-array v3, v15, [C

    invoke-static {v1, v2, v3, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->newEntry6:I

    aput-object v3, v7, v10

    return-object v3

    :cond_1
    aget-object v17, v7, v11

    aget-char v15, v17, v13

    if-ne v6, v15, :cond_2

    aget-char v15, v17, v12

    if-ne v3, v15, :cond_2

    aget-char v15, v17, v16

    if-ne v8, v15, :cond_2

    aget-char v15, v17, v14

    if-ne v4, v15, :cond_2

    const/4 v15, 0x4

    aget-char v14, v17, v15

    if-ne v9, v14, :cond_2

    const/4 v14, 0x5

    aget-char v15, v17, v14

    if-ne v5, v15, :cond_2

    return-object v17

    :cond_2
    move/from16 v17, v11

    const/4 v14, 0x3

    const/4 v15, 0x6

    goto :goto_1

    :cond_3
    aget-object v11, v7, v10

    aget-char v13, v11, v13

    if-ne v6, v13, :cond_4

    aget-char v12, v11, v12

    if-ne v3, v12, :cond_4

    aget-char v12, v11, v16

    if-ne v8, v12, :cond_4

    const/4 v12, 0x3

    aget-char v12, v11, v12

    if-ne v4, v12, :cond_4

    const/4 v12, 0x4

    aget-char v13, v11, v12

    if-ne v9, v13, :cond_5

    const/4 v13, 0x5

    aget-char v13, v11, v13

    if-ne v5, v13, :cond_5

    return-object v11

    :cond_4
    const/4 v12, 0x4

    :cond_5
    move v11, v12

    goto :goto_0
.end method

.method public final pushLineSeparator()V
    .locals 7

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v0, v4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    if-ltz v1, :cond_0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    aget v5, v5, v1

    if-lt v5, v0, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    array-length v6, v5

    add-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    if-lt v1, v6, :cond_1

    add-int/lit16 v1, v6, 0xfa

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    invoke-static {v5, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    aput v0, v1, v5

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v0, v6

    if-ne v0, v2, :cond_2

    aput v6, v1, v5

    add-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    aget v2, v0, v1

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v5, -0x2

    if-ne v2, v6, :cond_4

    sub-int/2addr v5, v4

    aput v5, v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v0, v4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    if-ltz v1, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    aget v2, v2, v1

    if-lt v2, v0, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    array-length v5, v2

    add-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    if-lt v1, v5, :cond_6

    add-int/lit16 v1, v5, 0xfa

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    aput v0, v1, v2

    :goto_0
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final pushUnicodeLineSeparator()V
    .locals 4

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->wasAcr:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public recordComment(I)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_1

    const/16 v2, 0x3ea

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lastCommentLinePosition:I

    neg-int v1, p1

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStops:[I

    array-length v2, p1

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    if-lt v3, v2, :cond_2

    add-int/lit16 v3, v2, 0x12c

    new-array v4, v3, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStops:[I

    const/4 v5, 0x0

    invoke-static {p1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStarts:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStarts:[I

    invoke-static {p1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentTagStarts:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentTagStarts:[I

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStops:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    aput v1, p1, v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentStarts:[I

    aput v0, p1, v2

    return-void
.end method

.method public resetTo(II)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->diet:Z

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->initialPosition:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, p2, :cond_0

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    if-ge p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->commentPtr:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->foundTaskCount:I

    return-void
.end method

.method public final scanEscapeCharacter()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_f

    const/16 v1, 0x27

    if-eq v0, v1, :cond_e

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_d

    const/16 v1, 0x62

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x72

    if-eq v0, v1, :cond_9

    const/16 v1, 0x74

    if-eq v0, v1, :cond_8

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    const-string v1, "Invalid_Escape"

    if-ltz v0, :cond_7

    const/4 v2, 0x7

    if-gt v0, v2, :cond_7

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-le v0, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v5, v6

    iput-char v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-char v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-ltz v5, :cond_4

    if-gt v5, v2, :cond_4

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v5, v6

    iput-char v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_1

    :cond_1
    iget-char v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v3

    if-ltz v3, :cond_2

    if-gt v3, v2, :cond_2

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    :goto_1
    const/16 v2, 0xff

    if-gt v0, v2, :cond_6

    int-to-char v0, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v0, 0x9

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_9
    const/16 v0, 0xd

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_a
    const/16 v0, 0xa

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_b
    const/16 v0, 0xc

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_c
    const/16 v0, 0x8

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_d
    iput-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_e
    iput-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_2

    :cond_f
    iput-char v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    :goto_2
    return-void
.end method

.method public scanIdentifier()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    move v2, v0

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    if-ge v4, v5, :cond_11

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v10, v8, v4

    iput-char v10, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ge v9, v5, :cond_1

    const/16 v5, 0x5c

    if-ne v10, v5, :cond_1

    aget-char v5, v8, v9

    const/16 v8, 0x75

    if-ne v5, v8, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v8

    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v9, v4

    goto :goto_1

    :cond_2
    sub-int/2addr v9, v4

    const/16 v4, 0x9

    if-eq v10, v4, :cond_3

    const/16 v4, 0xa

    if-eq v10, v4, :cond_3

    const/16 v4, 0xc

    if-eq v10, v4, :cond_3

    const/16 v4, 0xd

    if-eq v10, v4, :cond_3

    const/16 v4, 0x20

    if-eq v10, v4, :cond_3

    move v8, v0

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    if-eqz v8, :cond_4

    move v2, v7

    :cond_4
    if-nez v8, :cond_0

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    if-eqz v2, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    sub-int/2addr v0, v9

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    if-eqz v5, :cond_5

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :cond_5
    return v6

    :cond_6
    if-eqz v5, :cond_7

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    goto :goto_2

    :cond_7
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    :cond_8
    :goto_2
    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v1, 0x80

    const/16 v2, 0x135

    if-ge v0, v1, :cond_a

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v1, v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanIdentifierOrKeywordWithBoundCheck()I

    move-result v0

    return v0

    :cond_9
    return v2

    :cond_a
    const v1, 0xd800

    const v3, 0xdfff

    const v4, 0xdc00

    const-string v5, "Invalid_Unicode_Escape"

    const-wide/32 v6, 0x310000

    if-lt v0, v1, :cond_d

    const v1, 0xdbff

    if-gt v0, v1, :cond_d

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    cmp-long v1, v8, v6

    if-ltz v1, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharWithBoundChecks()I

    move-result v1

    int-to-char v1, v1

    if-lt v1, v4, :cond_b

    if-gt v1, v3, :cond_b

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v3, v4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JCC)Z

    move-result v0

    goto :goto_3

    :cond_b
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v1, "Invalid_Low_Surrogate"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-lt v0, v4, :cond_f

    if-gt v0, v3, :cond_f

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_e

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v1, "Invalid_High_Surrogate"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->complianceLevel:J

    invoke-static {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->scanIdentifierOrKeywordWithBoundCheck()I

    move-result v0

    return v0

    :cond_10
    return v2

    :cond_11
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->tokenizeWhiteSpace:Z

    if-eqz v0, :cond_12

    add-int/lit8 v0, v4, -0x1

    if-eq v1, v0, :cond_12

    sub-int/2addr v4, v7

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    return v6

    :cond_12
    const/16 v0, 0x9e

    return v0
.end method

.method public scanIdentifierOrKeyword()I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useAssertAsAnIndentifier:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useEnumAsAnIndentifier:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v3, 0x1

    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-char v2, v0, v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_4

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v4, v4, v2

    and-int/lit8 v5, v4, 0x3c

    if-eqz v5, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v4, :cond_1

    iput-char v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v4, 0x102

    if-eqz v0, :cond_3

    iput-char v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v1, 0x5

    if-nez v0, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v0, v2

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    move v3, v2

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_7

    return v1

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    :goto_2
    invoke-direct {p0, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->internalScanIdentifierOrKeyword(II[C)I

    move-result v0

    return v0
.end method

.method public scanIdentifierOrKeywordWithBoundCheck()I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useAssertAsAnIndentifier:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->useEnumAsAnIndentifier:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v3, 0x1

    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-char v2, v0, v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_4

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v4, v4, v2

    and-int/lit8 v5, v4, 0x3c

    if-eqz v5, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v4, :cond_1

    iput-char v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v4, 0x102

    if-eqz v0, :cond_3

    iput-char v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsJavaIdentifierPartWithBoundCheck()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsJavaIdentifierPartWithBoundCheck()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    const/4 v1, 0x5

    if-nez v0, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v0, v2

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    move v3, v2

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_7

    return v1

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    :goto_2
    invoke-direct {p0, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->internalScanIdentifierOrKeyword(II[C)I

    move-result v0

    return v0
.end method

.method public scanNumber(Z)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x2e

    const-string v3, "Invalid_Underscore"

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    const/16 v6, 0x29

    const/16 v12, 0x4c

    const/16 v13, 0x6c

    const/16 v14, 0x75

    const/16 v15, 0x5c

    const/4 v2, 0x0

    const/16 v7, 0xa

    const/16 v8, 0x2b

    const/4 v9, 0x1

    if-nez p1, :cond_3e

    iget-char v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3e

    const/16 v10, 0x78

    const/16 v11, 0x58

    invoke-virtual {v0, v10, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v10

    if-ltz v10, :cond_28

    iget v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/16 v11, 0x10

    invoke-direct {v0, v11, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(IZ)V

    iget v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    invoke-virtual {v0, v13, v12}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v16

    const-string v12, "Invalid_Hexa_Literal"

    if-ltz v16, :cond_1

    if-eq v11, v10, :cond_0

    return v6

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v1

    const-string v6, "Illegal_Hexa_Literal"

    const-wide/32 v17, 0x310000

    if-eqz v1, :cond_16

    if-ne v11, v10, :cond_2

    move v1, v9

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/16 v11, 0x10

    invoke-direct {v0, v11, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(IZ)V

    iget v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-eqz v1, :cond_4

    if-ne v9, v10, :cond_4

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v1, 0x70

    const/16 v9, 0x50

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_14

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v9, v1, v9

    iput-char v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v9, v15, :cond_5

    aget-char v1, v1, v10

    if-ne v1, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_1

    :cond_5
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_6
    :goto_1
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v1, v5, :cond_7

    if-ne v1, v8, :cond_9

    :cond_7
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v2, v1, v2

    iput-char v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v2, v15, :cond_8

    aget-char v1, v1, v5

    if-ne v1, v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_2

    :cond_8
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_9
    :goto_2
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_c

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_b

    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v1, v4, :cond_a

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    const/16 v1, 0x46

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_e

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_d

    const/16 v1, 0x2a

    return v1

    :cond_d
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const/16 v1, 0x44

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_10

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_f

    return v8

    :cond_f
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/16 v1, 0x4c

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_12

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_11

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_13

    return v8

    :cond_13
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_15

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/16 v1, 0x70

    const/16 v9, 0x50

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_26

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v9, v1, v9

    iput-char v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v9, v15, :cond_17

    aget-char v1, v1, v10

    if-ne v1, v14, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_3

    :cond_17
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_18
    :goto_3
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v1, v5, :cond_19

    if-ne v1, v8, :cond_1b

    :cond_19
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v2, v1, v2

    iput-char v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v2, v15, :cond_1a

    aget-char v1, v1, v5

    if-ne v1, v14, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_4

    :cond_1a
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_1b
    :goto_4
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_1d

    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v1, v4, :cond_1c

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Float_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    const/16 v1, 0x46

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_20

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_1f

    const/16 v1, 0x2a

    return v1

    :cond_1f
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    const/16 v1, 0x44

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_22

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_21

    return v8

    :cond_21
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const/16 v1, 0x4c

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_24

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_23

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_25

    return v8

    :cond_25
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    if-eq v11, v10, :cond_27

    const/16 v1, 0x28

    return v1

    :cond_27
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const/16 v10, 0x62

    const/16 v11, 0x42

    invoke-virtual {v0, v10, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v10

    if-ltz v10, :cond_2e

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    const/4 v2, 0x2

    invoke-direct {v0, v2, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(IZ)V

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-ne v2, v1, :cond_2a

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-gez v1, :cond_29

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Binary_Literal_Not_Below_17"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Binary_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const/16 v1, 0x4c

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_2c

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2b

    return v6

    :cond_2b
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Binary_Literal_Not_Below_17"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2d

    const/16 v1, 0x28

    return v1

    :cond_2d
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Binary_Literal_Not_Below_17"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextCharAsDigit()Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    const/16 v10, 0x4c

    invoke-virtual {v0, v13, v10}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v10

    if-ltz v10, :cond_2f

    return v6

    :cond_2f
    const/16 v6, 0x46

    const/16 v10, 0x66

    invoke-virtual {v0, v10, v6}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v11

    if-ltz v11, :cond_30

    const/16 v6, 0x2a

    return v6

    :cond_30
    const/16 v6, 0x44

    const/16 v10, 0x64

    invoke-virtual {v0, v10, v6}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v11

    if-ltz v11, :cond_31

    return v8

    :cond_31
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    move v9, v2

    :cond_32
    const/16 v1, 0x65

    const/16 v6, 0x45

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_3a

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v6, v1, v6

    iput-char v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v6, v15, :cond_33

    aget-char v1, v1, v9

    if-ne v1, v14, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_5

    :cond_33
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_34

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_34
    :goto_5
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v1, v5, :cond_35

    if-ne v1, v8, :cond_37

    :cond_35
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v5, v1, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v5, v15, :cond_36

    aget-char v1, v1, v6

    if-ne v1, v14, :cond_36

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_6

    :cond_36
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_37

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_37
    :goto_6
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_39

    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v1, v4, :cond_38

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Float_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    :goto_7
    const/16 v1, 0x46

    const/16 v3, 0x66

    goto :goto_8

    :cond_3a
    move v2, v9

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_3b

    const/16 v1, 0x2a

    return v1

    :cond_3b
    const/16 v1, 0x44

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-gez v1, :cond_3d

    if-nez v2, :cond_3c

    goto :goto_9

    :cond_3c
    const/16 v10, 0x28

    return v10

    :cond_3d
    :goto_9
    return v8

    :cond_3e
    const/16 v10, 0x28

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    if-nez p1, :cond_3f

    const/16 v11, 0x4c

    invoke-virtual {v0, v13, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v11

    if-ltz v11, :cond_3f

    return v6

    :cond_3f
    if-nez p1, :cond_40

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(C)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-direct {v0, v7, v9}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(IZ)V

    move v1, v9

    goto :goto_a

    :cond_40
    move/from16 v1, p1

    :goto_a
    const/16 v6, 0x65

    const/16 v11, 0x45

    invoke-virtual {v0, v6, v11}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v6

    if-ltz v6, :cond_48

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v11, v6, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v6, v1, v6

    iput-char v6, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v6, v15, :cond_41

    aget-char v1, v1, v11

    if-ne v1, v14, :cond_41

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_b

    :cond_41
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_42

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_42
    :goto_b
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-eq v1, v5, :cond_43

    if-ne v1, v8, :cond_45

    :cond_43
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    aget-char v2, v1, v2

    iput-char v2, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v2, v15, :cond_44

    aget-char v1, v1, v5

    if-ne v1, v14, :cond_44

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextUnicodeChar()V

    goto :goto_c

    :cond_44
    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_45

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->unicodeStore()V

    :cond_45
    :goto_c
    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_47

    iget-char v1, v0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    if-ne v1, v4, :cond_46

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Float_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->consumeDigits(I)V

    :goto_d
    const/16 v1, 0x44

    const/16 v2, 0x64

    goto :goto_e

    :cond_48
    move v9, v1

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_49

    return v8

    :cond_49
    const/16 v1, 0x46

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_4a

    const/16 v1, 0x2a

    return v1

    :cond_4a
    if-eqz v9, :cond_4b

    move v2, v8

    goto :goto_f

    :cond_4b
    move v2, v10

    :goto_f
    return v2
.end method

.method public final setSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->setSource([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method

.method public final setSource([C)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    move p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    .line 3
    array-length p1, p1

    :goto_0
    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->initialPosition:I

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->containsAssertKeyword:Z

    .line 8
    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    return-void
.end method

.method public final setSource([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->setSource([C)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->setSource([C)V

    .line 12
    :goto_0
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->lineSeparatorPositions:[I

    if-eqz p1, :cond_1

    .line 13
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    .line 14
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EOF\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "behind the EOF\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOT started!\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, "<source beginning>\n...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->lineEnds:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->linePtr:I

    invoke-static {v1, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getLineStart(I)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "\n===============================\nStarts here -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, -0x1

    if-le v1, v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "<-- Ends here\n===============================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->eofPosition:I

    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringAction(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_7

    const/16 v0, 0xf

    if-eq p1, v0, :cond_6

    const/16 v0, 0x55

    if-eq p1, v0, :cond_5

    const/16 v0, 0x56

    const-string v1, ")"

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x69

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const-string p1, "not-a-token"

    return-object p1

    :pswitch_0
    const-string p1, "public"

    return-object p1

    :pswitch_1
    const-string p1, "protected"

    return-object p1

    :pswitch_2
    const-string p1, "private"

    return-object p1

    :pswitch_3
    const-string p1, "native"

    return-object p1

    :pswitch_4
    const-string p1, "final"

    return-object p1

    :pswitch_5
    const-string p1, "abstract"

    return-object p1

    :pswitch_6
    const-string p1, "?"

    return-object p1

    :pswitch_7
    const-string p1, "||"

    return-object p1

    :pswitch_8
    const-string p1, "&&"

    return-object p1

    :pswitch_9
    const-string p1, "~"

    return-object p1

    :pswitch_a
    const-string p1, "!"

    return-object p1

    :pswitch_b
    const-string p1, "|"

    return-object p1

    :pswitch_c
    const-string p1, "<"

    return-object p1

    :pswitch_d
    const-string p1, ">"

    return-object p1

    :pswitch_e
    const-string p1, ">="

    return-object p1

    :pswitch_f
    const-string p1, "<="

    return-object p1

    :pswitch_10
    const-string p1, "instanceof"

    return-object p1

    :pswitch_11
    const-string p1, ";"

    return-object p1

    :pswitch_12
    const-string p1, "^"

    return-object p1

    :pswitch_13
    const-string p1, "&"

    return-object p1

    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "white_space("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string p1, "::"

    return-object p1

    :sswitch_2
    const-string p1, "->"

    return-object p1

    :sswitch_3
    const-string p1, "implements"

    return-object p1

    :sswitch_4
    const-string p1, "extends"

    return-object p1

    :sswitch_5
    const-string p1, "throws"

    return-object p1

    :sswitch_6
    const-string p1, "finally"

    return-object p1

    :sswitch_7
    const-string p1, "catch"

    return-object p1

    :sswitch_8
    const-string p1, "package"

    return-object p1

    :sswitch_9
    const-string p1, "else"

    return-object p1

    :sswitch_a
    const-string p1, "default"

    return-object p1

    :sswitch_b
    const-string p1, "case"

    return-object p1

    :sswitch_c
    const-string p1, "import"

    return-object p1

    :sswitch_d
    const-string p1, "interface"

    return-object p1

    :sswitch_e
    const-string p1, ">>>="

    return-object p1

    :sswitch_f
    const-string p1, ">>="

    return-object p1

    :sswitch_10
    const-string p1, "<<="

    return-object p1

    :sswitch_11
    const-string p1, "%="

    return-object p1

    :sswitch_12
    const-string p1, "^="

    return-object p1

    :sswitch_13
    const-string p1, "|="

    return-object p1

    :sswitch_14
    const-string p1, "&="

    return-object p1

    :sswitch_15
    const-string p1, "/="

    return-object p1

    :sswitch_16
    const-string p1, "*="

    return-object p1

    :sswitch_17
    const-string p1, "-="

    return-object p1

    :sswitch_18
    const-string p1, "+="

    return-object p1

    :sswitch_19
    const-string p1, "="

    return-object p1

    :sswitch_1a
    const-string p1, "]"

    return-object p1

    :sswitch_1b
    const-string p1, "class"

    return-object p1

    :sswitch_1c
    const-string p1, "EOF"

    return-object p1

    :sswitch_1d
    const-string p1, ":"

    return-object p1

    :sswitch_1e
    const-string p1, "try"

    return-object p1

    :sswitch_1f
    const-string p1, "throw"

    return-object p1

    :sswitch_20
    const-string p1, "switch"

    return-object p1

    :sswitch_21
    const-string p1, "return"

    return-object p1

    :sswitch_22
    const-string p1, "if"

    return-object p1

    :sswitch_23
    const-string p1, "for"

    return-object p1

    :sswitch_24
    const-string p1, "do"

    return-object p1

    :sswitch_25
    const-string p1, "continue"

    return-object p1

    :sswitch_26
    const-string p1, "break"

    return-object p1

    :sswitch_27
    const-string p1, "while"

    return-object p1

    :sswitch_28
    const-string p1, "{"

    return-object p1

    :sswitch_29
    const-string p1, ","

    return-object p1

    :sswitch_2a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "String("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Char("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Double("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Float("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Long("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Integer("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_30
    const-string p1, "true"

    return-object p1

    :sswitch_31
    const-string p1, "null"

    return-object p1

    :sswitch_32
    const-string p1, "false"

    return-object p1

    :sswitch_33
    const-string p1, "!="

    return-object p1

    :sswitch_34
    const-string p1, "=="

    return-object p1

    :sswitch_35
    const-string p1, "this"

    return-object p1

    :sswitch_36
    const-string p1, "super"

    return-object p1

    :sswitch_37
    const-string p1, "new"

    return-object p1

    :pswitch_14
    const-string p1, "void"

    return-object p1

    :pswitch_15
    const-string p1, "short"

    return-object p1

    :pswitch_16
    const-string p1, "long"

    return-object p1

    :pswitch_17
    const-string p1, "int"

    return-object p1

    :pswitch_18
    const-string p1, "float"

    return-object p1

    :pswitch_19
    const-string p1, "double"

    return-object p1

    :pswitch_1a
    const-string p1, "char"

    return-object p1

    :pswitch_1b
    const-string p1, "byte"

    return-object p1

    :pswitch_1c
    const-string p1, "boolean"

    return-object p1

    :pswitch_1d
    const-string p1, ">>>"

    return-object p1

    :pswitch_1e
    const-string p1, ">>"

    return-object p1

    :pswitch_1f
    const-string p1, "/"

    return-object p1

    :pswitch_20
    const-string p1, "%"

    return-object p1

    :pswitch_21
    const-string p1, "*"

    return-object p1

    :pswitch_22
    const-string p1, "("

    return-object p1

    :pswitch_23
    const-string p1, "."

    return-object p1

    :pswitch_24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Identifier("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_25
    const-string p1, "-"

    return-object p1

    :pswitch_26
    const-string p1, "+"

    return-object p1

    :pswitch_27
    const-string p1, "--"

    return-object p1

    :pswitch_28
    const-string p1, "++"

    return-object p1

    :cond_0
    const-string p1, "volatile"

    return-object p1

    :cond_1
    const-string p1, "transient"

    return-object p1

    :cond_2
    const-string p1, "}"

    return-object p1

    :cond_3
    const-string p1, "static"

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    const-string p1, "synchronized"

    return-object p1

    :cond_6
    const-string p1, "["

    return-object p1

    :cond_7
    const-string p1, "<<"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_37
        0x21 -> :sswitch_36
        0x22 -> :sswitch_35
        0x23 -> :sswitch_34
        0x24 -> :sswitch_33
        0x25 -> :sswitch_32
        0x26 -> :sswitch_31
        0x27 -> :sswitch_30
        0x28 -> :sswitch_2f
        0x29 -> :sswitch_2e
        0x2a -> :sswitch_2d
        0x2b -> :sswitch_2c
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2a
        0x5a -> :sswitch_29
        0x6e -> :sswitch_28
        0x75 -> :sswitch_27
        0x77 -> :sswitch_26
        0x78 -> :sswitch_25
        0x79 -> :sswitch_24
        0x7a -> :sswitch_23
        0x7b -> :sswitch_22
        0x7c -> :sswitch_21
        0x7d -> :sswitch_20
        0x7e -> :sswitch_1f
        0x7f -> :sswitch_1e
        0x9a -> :sswitch_1d
        0x9e -> :sswitch_1c
        0xa5 -> :sswitch_1b
        0xa6 -> :sswitch_1a
        0xa7 -> :sswitch_19
        0xa8 -> :sswitch_18
        0xa9 -> :sswitch_17
        0xaa -> :sswitch_16
        0xab -> :sswitch_15
        0xac -> :sswitch_14
        0xad -> :sswitch_13
        0xae -> :sswitch_12
        0xaf -> :sswitch_11
        0xb0 -> :sswitch_10
        0xb1 -> :sswitch_f
        0xb2 -> :sswitch_e
        0xb4 -> :sswitch_d
        0xbf -> :sswitch_c
        0xd3 -> :sswitch_b
        0xd4 -> :sswitch_a
        0xd5 -> :sswitch_9
        0xd6 -> :sswitch_8
        0xe1 -> :sswitch_7
        0xe2 -> :sswitch_6
        0xe3 -> :sswitch_5
        0xf3 -> :sswitch_4
        0x10c -> :sswitch_3
        0x195 -> :sswitch_2
        0x196 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x62
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unicodeInitializeBuffer(I)V
    .locals 4

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0xb

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-lt v2, v1, :cond_1

    add-int/lit8 v2, p1, 0xb

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->startPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public unicodeStore()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 4
    new-array v3, v3, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    iget-char v2, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->currentCharacter:C

    aput-char v2, v1, v0

    return-void
.end method

.method public unicodeStore(C)V
    .locals 5

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodePtr:I

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 9
    new-array v3, v3, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PublicScanner;->withoutUnicodeBuffer:[C

    aput-char p1, v1, v0

    return-void
.end method
