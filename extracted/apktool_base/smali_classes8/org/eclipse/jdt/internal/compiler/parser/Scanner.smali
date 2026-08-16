.class public Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;,
        Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;,
        Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;,
        Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;,
        Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;
    }
.end annotation


# static fields
.field public static final BINARY_LITERAL_NOT_BELOW_17:Ljava/lang/String; = "Binary_Literal_Not_Below_17"

.field public static final BracketKinds:I = 0x3

.field public static final COMMENT_ARRAYS_SIZE:I = 0x1e

.field public static final CurlyBracket:I = 0x2

.field private static final EMPTY_LINE_ENDS:[I

.field public static final END_OF_SOURCE:Ljava/lang/String; = "End_Of_Source"

.field public static final HIGH_SURROGATE_MAX_VALUE:I = 0xdbff

.field public static final HIGH_SURROGATE_MIN_VALUE:I = 0xd800

.field public static final IDENTITY_COMPARISON_TAG:[C

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
.field activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

.field public final charArray_length:[[[[C

.field public checkNonExternalizedStringLiterals:Z

.field public checkUninternedIdentityComparison:Z

.field public commentPtr:I

.field public commentStarts:[I

.field public commentStops:[I

.field public commentTagStarts:[I

.field public complianceLevel:J

.field private consumingEllipsisAnnotations:Z

.field public containsAssertKeyword:Z

.field public currentCharacter:C

.field public currentPosition:I

.field public diet:Z

.field public eofPosition:I

.field public fakeInModule:Z

.field public foundTaskCount:I

.field public foundTaskMessages:[[C

.field public foundTaskPositions:[[I

.field public foundTaskPriorities:[[C

.field public foundTaskTags:[[C

.field inCase:Z

.field public initialPosition:I

.field protected insideModuleInfo:Z

.field public insideRecovery:Z

.field public isTaskCaseSensitive:Z

.field public lastCommentLinePosition:I

.field protected lastPosition:I

.field public lineEnds:[I

.field public linePtr:I

.field lookBack:[I

.field newEntry2:I

.field newEntry3:I

.field newEntry4:I

.field newEntry5:I

.field newEntry6:I

.field protected nextToken:I

.field private nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

.field protected nlsTagsPtr:I

.field public recordLineSeparator:Z

.field public returnOnlyGreater:Z

.field protected scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

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

.field public validIdentityComparisonLines:[Z

.field private vanguardParser:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

.field private vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

.field public wasAcr:Z

.field public withoutUnicodeBuffer:[C

.field public withoutUnicodePtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->EMPTY_LINE_ENDS:[I

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_a:[C

    new-array v1, v0, [C

    const/16 v2, 0x62

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_b:[C

    new-array v1, v0, [C

    const/16 v2, 0x63

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_c:[C

    new-array v1, v0, [C

    const/16 v2, 0x64

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_d:[C

    new-array v1, v0, [C

    const/16 v2, 0x65

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_e:[C

    new-array v1, v0, [C

    const/16 v2, 0x66

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_f:[C

    new-array v1, v0, [C

    const/16 v2, 0x67

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_g:[C

    new-array v1, v0, [C

    const/16 v2, 0x68

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_h:[C

    new-array v1, v0, [C

    const/16 v2, 0x69

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_i:[C

    new-array v1, v0, [C

    const/16 v2, 0x6a

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_j:[C

    new-array v1, v0, [C

    const/16 v2, 0x6b

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_k:[C

    new-array v1, v0, [C

    const/16 v2, 0x6c

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_l:[C

    new-array v1, v0, [C

    const/16 v2, 0x6d

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_m:[C

    new-array v1, v0, [C

    const/16 v2, 0x6e

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_n:[C

    new-array v1, v0, [C

    const/16 v2, 0x6f

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_o:[C

    new-array v1, v0, [C

    const/16 v2, 0x70

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_p:[C

    new-array v1, v0, [C

    const/16 v2, 0x71

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_q:[C

    new-array v1, v0, [C

    const/16 v2, 0x72

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_r:[C

    new-array v1, v0, [C

    const/16 v2, 0x73

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_s:[C

    new-array v1, v0, [C

    const/16 v2, 0x74

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_t:[C

    new-array v1, v0, [C

    const/16 v2, 0x75

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_u:[C

    new-array v1, v0, [C

    const/16 v2, 0x76

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_v:[C

    new-array v1, v0, [C

    const/16 v2, 0x77

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_w:[C

    new-array v1, v0, [C

    const/16 v2, 0x78

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_x:[C

    new-array v1, v0, [C

    const/16 v2, 0x79

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_y:[C

    new-array v0, v0, [C

    const/16 v1, 0x7a

    aput-char v1, v0, v3

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_z:[C

    const/4 v0, 0x6

    new-array v0, v0, [C

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initCharArray:[C

    const-string v0, "//$NON-NLS-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->TAG_PREFIX:[C

    array-length v0, v0

    sput v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->TAG_PREFIX_LENGTH:I

    const-string v0, "//$IDENTITY-COMPARISON$"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->IDENTITY_COMPARISON_TAG:[C

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
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

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
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useAssertAsAnIndentifier:Z

    .line 4
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->containsAssertKeyword:Z

    .line 5
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useEnumAsAnIndentifier:Z

    .line 6
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    .line 7
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    .line 8
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    .line 9
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    .line 10
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    .line 11
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanningFloatLiteral:Z

    const/16 v4, 0x1e

    .line 12
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    .line 13
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    .line 14
    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    const/4 v5, -0x1

    .line 15
    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    .line 16
    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    const/4 v6, 0x0

    .line 17
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskTags:[[C

    .line 18
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPriorities:[[C

    .line 19
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    .line 20
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    .line 21
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskPriorities:[[C

    const/4 v7, 0x1

    .line 22
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isTaskCaseSensitive:Z

    .line 23
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->diet:Z

    const/16 v8, 0xfa

    .line 24
    new-array v8, v8, [I

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    .line 25
    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    .line 26
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    .line 27
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    .line 28
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->inCase:Z

    .line 29
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    .line 30
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->insideModuleInfo:Z

    const/4 v5, 0x3

    .line 31
    new-array v5, v5, [I

    const/4 v8, 0x2

    const/4 v9, 0x6

    aput v9, v5, v8

    aput v4, v5, v7

    const/4 v10, 0x7

    aput v10, v5, v3

    const-class v10, [C

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[[C

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    .line 32
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    .line 33
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->returnOnlyGreater:Z

    move v5, v3

    :goto_0
    if-lt v5, v9, :cond_6

    .line 34
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry2:I

    .line 35
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry3:I

    .line 36
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry4:I

    .line 37
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry5:I

    .line 38
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry6:I

    .line 39
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->insideRecovery:Z

    .line 40
    new-array v4, v8, [I

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    .line 41
    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    const v5, 0x7fffffff

    .line 42
    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    move/from16 v10, p1

    .line 43
    iput-boolean v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    move/from16 v11, p2

    .line 44
    iput-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    move-wide/from16 v12, p4

    .line 45
    iput-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    .line 46
    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    aput v3, v4, v7

    aput v3, v4, v3

    .line 47
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumingEllipsisAnnotations:Z

    move-wide/from16 v14, p6

    .line 48
    iput-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    move/from16 v4, p3

    .line 49
    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    if-eqz v1, :cond_5

    .line 50
    array-length v4, v1

    if-eqz v2, :cond_4

    .line 51
    array-length v5, v2

    if-eq v5, v4, :cond_1

    if-le v5, v4, :cond_0

    .line 52
    new-array v5, v4, [[C

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v4

    move-object v2, v5

    move-object v5, v1

    goto :goto_1

    .line 53
    :cond_0
    new-array v4, v5, [[C

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v5

    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v1

    move v6, v4

    .line 54
    :goto_1
    new-array v8, v6, [I

    move v1, v3

    :goto_2
    if-lt v1, v6, :cond_3

    add-int/lit8 v1, v6, -0x1

    .line 55
    invoke-static {v5, v3, v1, v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII[I)V

    .line 56
    new-array v4, v6, [[C

    :goto_3
    if-lt v3, v6, :cond_2

    .line 57
    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskPriorities:[[C

    goto :goto_4

    .line 58
    :cond_2
    aget v1, v8, v3

    aget-object v1, v2, v1

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 59
    :cond_3
    aput v1, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v4, v7

    .line 60
    invoke-static {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->reverseQuickSort([[CII)V

    move-object v5, v1

    .line 61
    :goto_4
    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    move/from16 v1, p10

    .line 62
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isTaskCaseSensitive:Z

    :cond_5
    return-void

    :cond_6
    move/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

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

    .line 63
    :cond_8
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    aget-object v6, v6, v5

    aget-object v6, v6, v3

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initCharArray:[C

    aput-object v16, v6, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

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

    .line 64
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

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
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(IZ)V

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
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits0(IIIZ)I

    move-result p1

    const-string p2, "Underscores_In_Literals_Not_Below_17"

    const-wide/32 v2, 0x330000

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

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
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

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

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result p4

    if-nez p4, :cond_0

    move p4, p2

    goto :goto_0

    :cond_1
    move p4, v2

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsDigit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsDigit(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits0(IIIZ)I

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

.method private getScanContext(I)Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isInModuleDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->INACTIVE:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    return-object p1

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>()V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContextDetector;->getScanContext([CI)Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    move-result-object p1

    return-object p1
.end method

.method private getVanguardParser()Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardParser:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;-><init>(JJ)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardParser:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setActiveParser(Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isInModuleDeclaration()Z

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(IIZLorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardParser:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    return-object v0
.end method

.method private internalScanIdentifierOrKeyword(II[C)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    aget-char v2, p3, p1

    const/16 v4, 0x68

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/16 v9, 0x6c

    const/16 v10, 0x69

    const/16 v11, 0x61

    const/16 v15, 0x6f

    const/16 v5, 0x74

    const/4 v6, 0x5

    const/16 v14, 0x65

    const/4 v3, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v16, 0x16

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v16

    :pswitch_1
    if-eq v1, v3, :cond_2

    if-eq v1, v6, :cond_0

    return v16

    :cond_0
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_1

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_1

    const/16 v1, 0x4b

    return v1

    :cond_1
    return v16

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_3

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_3

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_3

    const/16 v1, 0x7d

    return v1

    :cond_3
    return v16

    :pswitch_2
    if-eq v1, v3, :cond_6

    if-eq v1, v7, :cond_4

    return v16

    :cond_4
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_5

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_5

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_5

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_5

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_5

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_5

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_5

    const/16 v1, 0x3c

    return v1

    :cond_5
    return v16

    :cond_6
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_7

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_7

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_7

    const/16 v1, 0x6e

    return v1

    :cond_7
    return v16

    :pswitch_3
    if-eq v1, v3, :cond_8

    return v16

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_9

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_9

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v2, :cond_9

    const/16 v1, 0x76

    return v1

    :cond_9
    return v16

    :pswitch_4
    if-eq v1, v13, :cond_18

    if-eq v1, v12, :cond_16

    if-eq v1, v3, :cond_12

    if-eq v1, v6, :cond_10

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    const/16 v2, 0x9

    if-eq v1, v2, :cond_c

    const/16 v2, 0xa

    if-eq v1, v2, :cond_a

    return v16

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_b

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_b

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_b

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_b

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_b

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_b

    const/16 v1, 0x79

    return v1

    :cond_b
    return v16

    :cond_c
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_d

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_d

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_d

    const/16 v1, 0x3b

    return v1

    :cond_d
    return v16

    :cond_e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_f

    const/16 v1, 0x78

    return v1

    :cond_f
    return v16

    :cond_10
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_11

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_11

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_11

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_11

    const/16 v1, 0x4a

    return v1

    :cond_11
    return v16

    :cond_12
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_14

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_13

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_13

    const/16 v1, 0x23

    return v1

    :cond_13
    return v16

    :cond_14
    const/16 v2, 0x72

    if-ne v1, v2, :cond_15

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_15

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_15

    const/16 v1, 0x28

    return v1

    :cond_15
    return v16

    :cond_16
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_17

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_17

    const/16 v1, 0x53

    return v1

    :cond_17
    return v16

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_19

    const/16 v1, 0x7c

    return v1

    :cond_19
    return v16

    :pswitch_5
    if-eq v1, v6, :cond_22

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1e

    if-eq v1, v7, :cond_1c

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1a

    return v16

    :cond_1a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_1b

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_1b

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_1b

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, 0xa

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_1b

    add-int/lit8 v1, p1, 0xb

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1b

    const/16 v1, 0x32

    return v1

    :cond_1b
    return v16

    :cond_1c
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_1d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_1d

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1d

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_1d

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1d

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1d

    const/16 v1, 0x3a

    return v1

    :cond_1d
    return v16

    :cond_1e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_20

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_1f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_1f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_1f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1f

    const/16 v1, 0x30

    return v1

    :cond_1f
    return v16

    :cond_20
    const/16 v2, 0x77

    if-ne v1, v2, :cond_21

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_21

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_21

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_21

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_21

    const/16 v1, 0x33

    return v1

    :cond_21
    return v16

    :cond_22
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_24

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_23

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_23

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_23

    const/16 v1, 0x6d

    return v1

    :cond_23
    return v16

    :cond_24
    const/16 v2, 0x75

    if-ne v1, v2, :cond_25

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_25

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_25

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_25

    const/16 v1, 0x22

    return v1

    :cond_25
    return v16

    :pswitch_6
    const/4 v2, 0x6

    if-eq v1, v2, :cond_28

    if-eq v1, v7, :cond_26

    return v16

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_27

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_27

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_27

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_27

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_27

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_27

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_27

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_27

    return v2

    :cond_27
    return v16

    :cond_28
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_29

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_29

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_29

    const/16 v1, 0x52

    return v1

    :cond_29
    return v16

    :pswitch_7
    packed-switch v1, :pswitch_data_1

    return v16

    :pswitch_8
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_2a

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_2a

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_2a

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_2a

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2a

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_2a

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_2a

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2a

    const/16 v1, 0x38

    return v1

    :cond_2a
    return v16

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_2b

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_2b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_2b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_2b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_2b

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2b

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_2b

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2b

    const/16 v1, 0x77

    return v1

    :cond_2b
    return v16

    :pswitch_a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_2d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2c

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_2c

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_2c

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_2c

    const/16 v1, 0x55

    return v1

    :cond_2c
    return v16

    :cond_2d
    const/16 v2, 0x72

    if-ne v1, v2, :cond_2e

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_2e

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_2e

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_2e

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_2e

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_2e

    const/16 v1, 0x37

    return v1

    :cond_2e
    return v16

    :pswitch_b
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_2f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_2f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_2f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2f

    const/16 v1, 0x39

    return v1

    :cond_2f
    return v16

    :pswitch_c
    if-eq v1, v3, :cond_32

    if-eq v1, v6, :cond_30

    return v16

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_31

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_31

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_31

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_31

    const/16 v1, 0x75

    return v1

    :cond_31
    return v16

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_33

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_33

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_33

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_33

    const/16 v1, 0x72

    return v1

    :cond_33
    return v16

    :pswitch_d
    if-eq v1, v12, :cond_38

    if-eq v1, v3, :cond_36

    const/4 v2, 0x6

    if-eq v1, v2, :cond_34

    return v16

    :cond_34
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_35

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_35

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_35

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_35

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_35

    const/16 v1, 0x36

    return v1

    :cond_35
    return v16

    :cond_36
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_37

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_37

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_37

    const/16 v1, 0x27

    return v1

    :cond_37
    return v16

    :cond_38
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_39

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_39

    const/16 v1, 0x24

    return v1

    :cond_39
    return v16

    :pswitch_e
    const/4 v2, 0x6

    if-eq v1, v2, :cond_3a

    return v16

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v1

    if-eqz v1, :cond_3b

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_3b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_3b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_3b

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_3b

    const/16 v1, 0x71

    return v1

    :cond_3b
    return v16

    :pswitch_f
    if-ne v1, v3, :cond_3c

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_3c

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_3c

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_3c

    return v9

    :cond_3c
    return v16

    :pswitch_10
    if-eq v1, v13, :cond_47

    if-eq v1, v12, :cond_45

    const/4 v2, 0x6

    if-eq v1, v2, :cond_43

    const/16 v2, 0x9

    if-eq v1, v2, :cond_41

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3d

    return v16

    :cond_3d
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_3f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_3e

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_3e

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_3e

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_3e

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_3e

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_3e

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_3e

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_3e

    const/16 v1, 0x7b

    return v1

    :cond_3e
    return v16

    :cond_3f
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_40

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_40

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_40

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_40

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_40

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_40

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_40

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_40

    add-int/lit8 v1, p1, 0x9

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_40

    const/16 v1, 0x11

    return v1

    :cond_40
    return v16

    :cond_41
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_42

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_42

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_42

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, p1, 0x8

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_42

    const/16 v1, 0x46

    return v1

    :cond_42
    return v16

    :cond_43
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_44

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_44

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_44

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_44

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_44

    const/16 v1, 0x6a

    return v1

    :cond_44
    return v16

    :cond_45
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_46

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_46

    const/16 v1, 0x6b

    return v1

    :cond_46
    return v16

    :cond_47
    const/4 v1, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_48

    const/16 v1, 0x51

    return v1

    :cond_48
    return v16

    :pswitch_11
    if-ne v1, v3, :cond_49

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_49

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_49

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_49

    const/16 v1, 0x80

    return v1

    :cond_49
    return v16

    :pswitch_12
    if-eq v1, v12, :cond_52

    if-eq v1, v6, :cond_4c

    if-eq v1, v8, :cond_4a

    return v16

    :cond_4a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_4b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_4b

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_4b

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_4b

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_4b

    return v15

    :cond_4b
    return v16

    :cond_4c
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_4e

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_4d

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_4d

    const/16 v1, 0x35

    return v1

    :cond_4d
    return v16

    :cond_4e
    if-ne v1, v9, :cond_50

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_4f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_4f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_4f

    return v10

    :cond_4f
    return v16

    :cond_50
    if-ne v1, v11, :cond_51

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_51

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_51

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_51

    const/16 v1, 0x26

    return v1

    :cond_51
    return v16

    :cond_52
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_53

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_53

    const/16 v1, 0x50

    return v1

    :cond_53
    return v16

    :pswitch_13
    if-eq v1, v3, :cond_57

    if-eq v1, v8, :cond_54

    return v16

    :cond_54
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_56

    add-int/lit8 v1, p1, 0x2

    aget-char v2, p3, v1

    if-ne v2, v5, :cond_55

    add-int/lit8 v1, p1, 0x3

    aget-char v2, p3, v1

    if-ne v2, v14, :cond_55

    add-int/lit8 v1, p1, 0x4

    aget-char v2, p3, v1

    const/16 v4, 0x6e

    if-ne v2, v4, :cond_55

    add-int/lit8 v1, p1, 0x5

    aget-char v2, p3, v1

    const/16 v4, 0x64

    if-ne v2, v4, :cond_55

    const/4 v2, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v2, p3, v1

    const/16 v4, 0x73

    if-ne v2, v4, :cond_55

    const/16 v1, 0x56

    return v1

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v2

    if-eqz v2, :cond_56

    aget-char v2, p3, v1

    const/16 v4, 0x70

    if-ne v2, v4, :cond_56

    add-int/lit8 v2, v1, 0x1

    aget-char v2, p3, v2

    if-ne v2, v15, :cond_56

    add-int/lit8 v2, v1, 0x2

    aget-char v2, p3, v2

    const/16 v4, 0x72

    if-ne v2, v4, :cond_56

    add-int/lit8 v2, v1, 0x3

    aget-char v2, p3, v2

    if-ne v2, v5, :cond_56

    add-int/2addr v1, v3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_56

    return v5

    :cond_56
    return v16

    :cond_57
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_59

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_58

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_58

    const/16 v1, 0x70

    return v1

    :cond_58
    return v16

    :cond_59
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5b

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_5b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_5b

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v3, 0x310000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5a

    const/16 v1, 0x47

    return v1

    :cond_5a
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useEnumAsAnIndentifier:Z

    :cond_5b
    return v16

    :pswitch_14
    if-eq v1, v13, :cond_60

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5e

    if-eq v1, v8, :cond_5c

    return v16

    :cond_5c
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_5d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_5d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_5d

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_5d

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_5d

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_5d

    const/16 v1, 0x49

    return v1

    :cond_5d
    return v16

    :cond_5e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_5f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_5f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_5f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_5f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_5f

    return v4

    :cond_5f
    return v16

    :cond_60
    const/4 v1, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_61

    const/16 v1, 0x4f

    return v1

    :cond_61
    return v16

    :pswitch_15
    if-eq v1, v3, :cond_6a

    if-eq v1, v6, :cond_64

    if-eq v1, v7, :cond_62

    return v16

    :cond_62
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_63

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_63

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_63

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v10, :cond_63

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_63

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_63

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_63

    const/16 v1, 0x4e

    return v1

    :cond_63
    return v16

    :cond_64
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_66

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_65

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_65

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v4, :cond_65

    const/16 v1, 0x66

    return v1

    :cond_65
    return v16

    :cond_66
    if-ne v1, v9, :cond_68

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_67

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_67

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v2, :cond_67

    const/16 v1, 0x43

    return v1

    :cond_67
    return v16

    :cond_68
    if-ne v1, v15, :cond_69

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_69

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_69

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_69

    const/16 v1, 0x7f

    return v1

    :cond_69
    return v16

    :cond_6a
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_6c

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_6b

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_6b

    return v14

    :cond_6b
    return v16

    :cond_6c
    if-ne v1, v4, :cond_6d

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_6d

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_6d

    const/16 v1, 0x67

    return v1

    :cond_6d
    return v16

    :pswitch_16
    if-eq v1, v3, :cond_72

    if-eq v1, v6, :cond_70

    if-eq v1, v8, :cond_6e

    return v16

    :cond_6e
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_6f

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v15, :cond_6f

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v9, :cond_6f

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_6f

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_6f

    const/4 v1, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_6f

    const/16 v1, 0x63

    return v1

    :cond_6f
    return v16

    :cond_70
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_71

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_71

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_71

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_71

    const/16 v1, 0x4d

    return v1

    :cond_71
    return v16

    :cond_72
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_73

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_73

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_73

    const/16 v1, 0x64

    return v1

    :cond_73
    return v16

    :pswitch_17
    const/4 v2, 0x6

    if-eq v1, v2, :cond_76

    if-eq v1, v7, :cond_74

    return v16

    :cond_74
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_75

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_75

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_75

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_75

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v11, :cond_75

    add-int/lit8 v1, p1, 0x6

    aget-char v1, p3, v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_75

    add-int/lit8 v1, p1, 0x7

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_75

    const/16 v1, 0x34

    return v1

    :cond_75
    return v16

    :cond_76
    add-int/lit8 v1, p1, 0x1

    aget-char v1, p3, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_78

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p3, v1

    if-ne v1, v2, :cond_78

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p3, v1

    if-ne v1, v14, :cond_78

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p3, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_78

    add-int/lit8 v1, p1, 0x5

    aget-char v1, p3, v1

    if-ne v1, v5, :cond_78

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_77

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->containsAssertKeyword:Z

    const/16 v1, 0x4c

    return v1

    :cond_77
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useAssertAsAnIndentifier:Z

    :cond_78
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static isRestrictedKeyword(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final maybeAtEllipsisAnnotationsStart()Z
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumingEllipsisAnnotations:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    return v2

    :sswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_0
        0x11 -> :sswitch_0
        0x15 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x31 -> :sswitch_0
        0x56 -> :sswitch_0
        0x78 -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private parseTags()V
    .locals 15

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    aget v4, v4, v1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v5, v5, v4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_a

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    new-array v6, v5, [C

    invoke-static {v4, v2, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    move v5, v4

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    move v5, v4

    move v4, v3

    :goto_1
    iget-boolean v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    const/4 v8, -0x1

    if-eqz v7, :cond_7

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->TAG_PREFIX:[C

    invoke-static {v7, v6, v2, v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v7

    if-eq v7, v8, :cond_7

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    if-nez v9, :cond_3

    const/16 v9, 0xa

    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTagsPtr:I

    :cond_3
    :goto_2
    if-ne v7, v8, :cond_4

    goto :goto_4

    :cond_4
    sget v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->TAG_PREFIX_LENGTH:I

    add-int/2addr v9, v7

    const/16 v10, 0x24

    invoke-static {v10, v6, v9, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CII)I

    move-result v10

    if-eq v10, v8, :cond_6

    add-int/lit8 v11, v1, 0x1

    :try_start_0
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    add-int v13, v7, v4

    add-int v14, v10, v4

    invoke-direct {p0, v6, v9, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->extractInt([CII)I

    move-result v9

    invoke-direct {v12, v13, v14, v11, v9}, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    add-int/2addr v7, v4

    add-int v9, v10, v4

    invoke-direct {v12, v7, v9, v11, v8}, Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;-><init>(IIII)V

    :goto_3
    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTagsPtr:I

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    array-length v11, v9

    if-ne v7, v11, :cond_5

    add-int/lit8 v11, v7, 0xa

    new-array v11, v11, [Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iput-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    invoke-static {v9, v3, v11, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTagsPtr:I

    add-int/lit8 v11, v9, 0x1

    iput v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTagsPtr:I

    aput-object v12, v7, v9

    move v9, v10

    :cond_6
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->TAG_PREFIX:[C

    invoke-static {v7, v6, v2, v9, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v7

    goto :goto_2

    :cond_7
    :goto_4
    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkUninternedIdentityComparison:Z

    if-eqz v4, :cond_9

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->IDENTITY_COMPARISON_TAG:[C

    invoke-static {v4, v6, v2, v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result v0

    if-eq v0, v8, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    if-nez v0, :cond_8

    new-array v0, v3, [Z

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    :cond_8
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    array-length v5, v4

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    aput-boolean v2, v1, v0

    :cond_9
    return-void

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private updateCase(I)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->inCase:Z

    :cond_0
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x62

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->inCase:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public areRestrictedModuleKeywordsActive()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->INACTIVE:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final atEnd()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final atTypeAnnotation()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;->atConflictScenario(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public checkTaskTag(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

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

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-lt p1, v5, :cond_1

    goto/16 :goto_7

    :cond_1
    const/16 v5, 0x40

    if-eq v3, v5, :cond_d

    move v5, v2

    :goto_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    array-length v7, v6

    if-lt v5, v7, :cond_2

    goto/16 :goto_6

    :cond_2
    aget-object v6, v6, v5

    array-length v7, v6

    if-nez v7, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    aget-char v10, v6, v2

    invoke-static {v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

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

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    add-int/lit8 v11, v8, -0x1

    aget-char v11, v0, v11

    invoke-static {v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    aget-char v11, v0, v8

    invoke-static {v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskTags:[[C

    if-nez v3, :cond_6

    const/4 v3, 0x5

    new-array v9, v3, [[C

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskTags:[[C

    new-array v9, v3, [[C

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    new-array v9, v3, [[C

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPriorities:[[C

    new-array v3, v3, [[I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

    goto :goto_3

    :cond_6
    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    array-length v10, v3

    if-ne v9, v10, :cond_7

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[C

    iput-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskTags:[[C

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[C

    iput-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPriorities:[[C

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[C

    iput-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPriorities:[[C

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [[I

    iput-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

    invoke-static {v3, v2, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskPriorities:[[C

    if-eqz v3, :cond_8

    array-length v9, v3

    if-ge v5, v9, :cond_8

    aget-object v3, v3, v5

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskTags:[[C

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    aput-object v6, v5, v9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPriorities:[[C

    aput-object v3, v5, v9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

    add-int/lit8 v8, v8, -0x1

    filled-new-array {p1, v8}, [I

    move-result-object v5

    aput-object v5, v3, v9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    aput-object v5, v3, v9

    add-int/2addr v9, v4

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr p1, v7

    goto :goto_6

    :cond_9
    add-int v9, p1, v8

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v9, v10, :cond_c

    if-lt v9, p2, :cond_a

    goto :goto_5

    :cond_a
    aget-char v9, v0, v9

    aget-char v10, v6, v8

    if-eq v9, v10, :cond_b

    iget-boolean v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isTaskCaseSensitive:Z

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
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    if-lt p1, v5, :cond_14

    if-eqz v3, :cond_13

    :goto_9
    if-lt v1, v5, :cond_f

    goto :goto_c

    :cond_f
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    aget-object p1, p1, v1

    array-length p1, p1

    if-nez p1, :cond_12

    add-int/lit8 p1, v1, 0x1

    :goto_a
    if-lt p1, v5, :cond_10

    goto :goto_b

    :cond_10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    aget-object v0, p2, p1

    array-length v2, v0

    if-eqz v2, :cond_11

    aput-object v0, p2, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

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
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

    aget-object v7, v6, p1

    aget v7, v7, v2

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskTags:[[C

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
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskPositions:[[I

    aget-object v6, v6, p1

    aput v5, v6, v4

    sub-int/2addr v5, v7

    add-int/2addr v5, v4

    new-array v6, v5, [C

    invoke-static {v0, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskMessages:[[C

    aput-object v6, v5, p1

    :goto_16
    move p1, v8

    goto/16 :goto_8
.end method

.method public disambiguatedRestrictedKeyword(I)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_IDENTIFIER:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    const/16 v2, 0x16

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->AFTER_REQUIRES:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    if-eq v0, v3, :cond_1

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getVanguardParser()Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(IIZLorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;)V

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;->getNextToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public disambiguatedToken(I)I
    .locals 6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getVanguardParser()Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    move-result-object v0

    const/16 v1, 0x62

    if-ne p1, v1, :cond_0

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->inCase:Z

    if-eqz v2, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->inCase:Z

    const/16 p1, 0x45

    return p1

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->maybeAtLambdaOrCast()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->LambdaParameterListGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/16 p1, 0x2f

    return p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->vanguardScanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardScanner;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->IntersectionCastGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/16 p1, 0x41

    return p1

    :cond_2
    const/16 v2, 0xb

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->maybeAtReferenceExpression()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->ReferenceExpressionGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/16 p1, 0x54

    return p1

    :cond_3
    const/16 v2, 0x25

    if-ne p1, v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atTypeAnnotation()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->maybeAtEllipsisAnnotationsStart()Z

    move-result p1

    const/16 v2, 0x1b

    if-eqz p1, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->VarargTypeAnnotationGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumingEllipsisAnnotations:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/16 p1, 0x7e

    return p1

    :cond_4
    move p1, v2

    :cond_5
    return p1
.end method

.method public fastForward(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)I
    .locals 2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x43

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x46

    if-eq p1, v1, :cond_3

    const/16 v1, 0x47

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->ungetToken(I)V

    return v0

    :cond_1
    :pswitch_1
    return p1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isAtAssistIdentifier()Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    :pswitch_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getVanguardParser()Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;->BlockStatementoptGoal:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$VanguardParser;->parse(Lorg/eclipse/jdt/internal/compiler/parser/Scanner$Goal;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :catch_0
    const/16 p1, 0x3d

    return p1

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x67
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentIdentifierSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v0, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    return-object v0

    :cond_1
    packed-switch v0, :pswitch_data_0

    new-array v3, v0, [C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-static {v4, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->optimizedCurrentTokenSource6()[C

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->optimizedCurrentTokenSource5()[C

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->optimizedCurrentTokenSource4()[C

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->optimizedCurrentTokenSource3()[C

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->optimizedCurrentTokenSource2()[C

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->optimizedCurrentTokenSource1()[C

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-direct {v0, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getCurrentTokenEndPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentTokenSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    new-array v3, v0, [C

    const/4 v4, 0x1

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v3, v2

    new-array v4, v3, [C

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :goto_0
    return-object v3
.end method

.method public getCurrentTokenSourceString()[C
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    add-int/lit8 v4, v0, -0x2

    new-array v4, v4, [C

    sub-int/2addr v0, v2

    invoke-static {v3, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    return v0
.end method

.method public final getCurrentTokenString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getIdentityComparisonLines()[Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->validIdentityComparisonLines:[Z

    return-object v0
.end method

.method public final getLineEnd(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

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

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->EMPTY_LINE_ENDS:[I

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final getLineNumber(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    return p1
.end method

.method public final getLineStart(I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

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

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTagsPtr:I

    if-eqz v0, :cond_0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTags:[Lorg/eclipse/jdt/internal/compiler/parser/NLSTag;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nlsTagsPtr:I

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
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v2, v1, v2

    iput-char v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_0

    .line 2
    aget-char v1, v1, v3

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    .line 5
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    .line 7
    :cond_1
    :goto_0
    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public final getNextChar(CC)I
    .locals 8

    .line 24
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 25
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_3

    .line 26
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_3

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    .line 28
    iget-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v1, p1, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    if-ne v1, p2, :cond_2

    move v2, v7

    goto :goto_0

    .line 29
    :cond_2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    .line 30
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr p1, v7

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

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
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz p1, :cond_5

    .line 32
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_5
    return v6

    .line 33
    :cond_6
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 34
    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 35
    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2
.end method

.method public final getNextChar(C)Z
    .locals 7

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 9
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    return v2

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 11
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    .line 13
    iget-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v1, p1, :cond_1

    .line 14
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    .line 15
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_1
    return v6

    :cond_2
    if-eq v4, p1, :cond_3

    .line 16
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 17
    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    .line 18
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v6

    .line 20
    :catch_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    .line 21
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 22
    :catch_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    .line 23
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 3
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    .line 5
    iget-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    .line 7
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr v1, v6

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_1
    return v6

    .line 8
    :cond_2
    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 10
    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v6

    .line 12
    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 13
    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2
.end method

.method public final getNextCharAsDigit(I)Z
    .locals 8

    .line 14
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 15
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v1, v0

    iput-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v5, 0x5c

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    .line 16
    aget-char v1, v1, v3

    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    .line 18
    iget-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->digit(CI)I

    move-result p1

    if-ne p1, v6, :cond_1

    .line 19
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    .line 20
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr p1, v7

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_1
    return v7

    .line 21
    :cond_2
    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->digit(CI)I

    move-result p1

    if-ne p1, v6, :cond_3

    .line 22
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 23
    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v7

    .line 25
    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    .line 26
    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2
.end method

.method public getNextCharAsJavaIdentifierPart()Z
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v3, v0

    iput-char v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    aget-char v3, v3, v4

    const/16 v4, 0x75

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const v5, 0xd800

    const v6, 0xdfff

    const v8, 0xdc00

    if-lt v4, v5, :cond_5

    const v5, 0xdbff

    if-gt v4, v5, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v11, 0x310000

    cmp-long v5, v9, v11

    if-gez v5, :cond_2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v5

    int-to-char v5, v5

    if-lt v5, v8, :cond_4

    if-le v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v8, v9, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JCC)Z

    move-result v4

    goto :goto_2

    :cond_4
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_5
    if-lt v4, v8, :cond_6

    if-gt v4, v6, :cond_6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_6
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v4

    :goto_2
    if-eqz v3, :cond_8

    if-nez v4, :cond_7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_7
    return v7

    :cond_8
    if-nez v4, :cond_9

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    :cond_9
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return v7

    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :catch_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2
.end method

.method public getNextCharAsJavaIdentifierPartWithBoundCheck()Z
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v6, v4, v0

    iput-char v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/4 v7, 0x1

    if-ge v5, v1, :cond_1

    const/16 v1, 0x5c

    if-ne v6, v1, :cond_1

    aget-char v1, v4, v5

    const/16 v4, 0x75

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-char v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const v5, 0xd800

    const v6, 0xdfff

    const v8, 0xdc00

    if-lt v4, v5, :cond_5

    const v5, 0xdbff

    if-gt v4, v5, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v11, 0x310000

    cmp-long v5, v9, v11

    if-gez v5, :cond_2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharWithBoundChecks()I

    move-result v5

    int-to-char v5, v5

    if-lt v5, v8, :cond_4

    if-le v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v8, v9, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JCC)Z

    move-result v4

    goto :goto_2

    :cond_4
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_5
    if-lt v4, v8, :cond_6

    if-gt v4, v6, :cond_6

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_6
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(JC)Z

    move-result v4

    :goto_2
    if-eqz v1, :cond_8

    if-nez v4, :cond_7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2

    :cond_7
    return v7

    :cond_8
    if-nez v4, :cond_9

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    :cond_9
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return v7

    :catch_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    return v2
.end method

.method public final getNextCharWithBoundChecks()I
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v3, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/4 v5, 0x0

    if-lt v4, v1, :cond_2

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_1
    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    return v0

    :cond_2
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    aget-char v0, v3, v4

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v2

    :cond_3
    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_4
    :goto_0
    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    return v0
.end method

.method public getNextNotFakedToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    return v0
.end method

.method public getNextToken()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isInModuleDeclaration()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->INACTIVE:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken0()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->areRestrictedModuleKeywordsActive()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isRestrictedKeyword(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->disambiguatedRestrictedKeyword(I)I

    move-result v0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->updateScanContext(I)V

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    if-nez v2, :cond_5

    return v0

    :cond_5
    const/16 v2, 0x17

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb

    if-eq v0, v2, :cond_7

    const/16 v2, 0x25

    if-eq v0, v2, :cond_7

    const/16 v2, 0x62

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v2, 0x7a

    if-ne v0, v2, :cond_8

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumingEllipsisAnnotations:Z

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->disambiguatedToken(I)I

    move-result v0

    :cond_8
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    aput v4, v2, v1

    aput v0, v2, v3

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->updateCase(I)V

    return v0
.end method

.method public getNextToken0()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->diet:Z

    const/16 v3, 0x21

    const/16 v4, 0x3d

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverMethodBody()V

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->diet:Z

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

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
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    move v0, v2

    move v8, v0

    :goto_1
    :try_start_1
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    const/16 v11, 0x75

    const/16 v12, 0x5c

    :try_start_2
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v14, v10, 0x1

    iput v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v15, v13, v10

    iput-char v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

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
    iget-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v13, :cond_3

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v14, v13, -0x1

    if-eq v7, v14, :cond_3

    sub-int/2addr v13, v6

    iput v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    return v5

    :cond_3
    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-le v13, v14, :cond_4

    return v4

    :cond_4
    :goto_2
    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-le v13, v14, :cond_6

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v0, :cond_5

    add-int/lit8 v0, v13, -0x1

    if-eq v7, v0, :cond_5

    sub-int/2addr v13, v6

    iput v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    return v5

    :cond_5
    return v4

    :cond_6
    const/16 v14, 0x20

    const/16 v15, 0xc

    const/16 v6, 0x9

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v13

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v4, v10

    goto :goto_3

    :cond_7
    sub-int v4, v13, v10

    iget-char v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v10, v11, :cond_8

    if-ne v10, v12, :cond_9

    :cond_8
    iget-boolean v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_9
    iget-char v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v10, v6, :cond_a

    if-eq v10, v12, :cond_a

    if-eq v10, v15, :cond_a

    if-eq v10, v11, :cond_a

    if-eq v10, v14, :cond_a

    move v13, v2

    goto :goto_3

    :cond_a
    const/4 v13, 0x1

    :goto_3
    if-eqz v13, :cond_b

    const/4 v8, 0x1

    :cond_b
    if-nez v13, :cond_8c

    if-eqz v8, :cond_f

    iget-boolean v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v8, :cond_d

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-eqz v0, :cond_c

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :cond_c
    return v5

    :cond_d
    if-eqz v0, :cond_e

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto :goto_4

    :cond_e
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :cond_f
    :goto_4
    iget-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_8a

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_89

    if-eq v0, v3, :cond_87

    const/16 v4, 0x2e

    const/16 v8, 0x22

    if-eq v0, v8, :cond_72

    const/16 v8, 0x5d

    if-eq v0, v8, :cond_71

    const/16 v8, 0x5e

    if-eq v0, v8, :cond_6f

    const/4 v8, 0x3

    const/16 v9, 0x40

    const/16 v10, 0x3e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/16 v3, 0x80

    if-ge v0, v3, :cond_12

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v3, v0

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeyword()I

    move-result v0

    return v0

    :cond_10
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_11
    const/16 v0, 0x81

    return v0

    :cond_12
    const v3, 0xd800

    if-lt v0, v3, :cond_15

    const v3, 0xdbff

    if-gt v0, v3, :cond_15

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v8, 0x310000

    cmp-long v3, v3, v8

    if-ltz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v3

    int-to-char v3, v3

    const v4, 0xdc00

    if-lt v3, v4, :cond_13

    const v4, 0xdfff

    if-gt v3, v4, :cond_13

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

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

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

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
    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeyword()I

    move-result v0

    return v0

    :cond_18
    iget-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_19
    const/16 v0, 0x81

    return v0

    :pswitch_0
    return v9

    :pswitch_1
    return v3

    :pswitch_2
    const/16 v0, 0x7c

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x1f

    return v0

    :cond_1a
    if-lez v0, :cond_1b

    const/16 v0, 0x5c

    return v0

    :cond_1b
    const/16 v0, 0x1c

    return v0

    :pswitch_3
    const/16 v0, 0x31

    return v0

    :pswitch_4
    const/16 v0, 0x25

    return v0

    :pswitch_5
    const/16 v0, 0x1d

    return v0

    :pswitch_6
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->returnOnlyGreater:Z

    if-eqz v0, :cond_1c

    const/16 v0, 0xf

    return v0

    :cond_1c
    const/16 v2, 0x3d

    invoke-virtual {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1d

    return v11

    :cond_1d
    if-lez v0, :cond_21

    invoke-virtual {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x60

    return v0

    :cond_1e
    if-lez v0, :cond_20

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x61

    return v0

    :cond_1f
    const/16 v0, 0x10

    return v0

    :cond_20
    const/16 v0, 0xe

    return v0

    :cond_21
    const/16 v0, 0xf

    return v0

    :pswitch_7
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x13

    return v0

    :cond_22
    const/16 v0, 0x48

    return v0

    :pswitch_8
    const/16 v2, 0x3d

    const/16 v0, 0x3c

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_23

    return v15

    :cond_23
    if-lez v0, :cond_25

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x5f

    return v0

    :cond_24
    const/16 v0, 0x12

    return v0

    :cond_25
    const/16 v0, 0xb

    return v0

    :pswitch_9
    const/16 v0, 0x1a

    return v0

    :pswitch_a
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x7

    return v0

    :cond_26
    return v10

    :pswitch_b
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->skipComments:Z

    if-nez v0, :cond_51

    const/16 v0, 0x2a

    const/16 v4, 0x2f

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v6

    if-nez v6, :cond_3a

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v4, 0x3e9

    :try_start_4
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v8, v0, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v6, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_27

    aget-char v0, v6, v8

    const/16 v6, 0x75

    if-ne v0, v6, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    :cond_27
    iget-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_28

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v8

    if-ne v0, v6, :cond_28

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_28
    move v0, v2

    :cond_29
    :goto_6
    iget-char v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v6, v11, :cond_2d

    if-ne v6, v12, :cond_2a

    goto :goto_8

    :cond_2a
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v0, v6, :cond_2c

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v8, v0, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v6, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_2b

    aget-char v0, v6, v8

    const/16 v6, 0x75

    if-ne v0, v6, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    const/4 v0, 0x1

    goto :goto_7

    :cond_2b
    move v0, v2

    :goto_7
    iget-char v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v8, 0x5c

    if-ne v6, v8, :cond_29

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v6, v6, v9

    if-ne v6, v8, :cond_29

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_6

    :cond_2c
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2d
    :goto_8
    if-ne v6, v11, :cond_2f

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-le v6, v8, :cond_2f

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v9, v6, v8

    if-ne v9, v12, :cond_2e

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput-char v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_9

    :cond_2e
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_2f

    add-int/lit8 v8, v8, 0x1

    aget-char v6, v6, v8

    const/16 v8, 0x75

    if-ne v6, v8, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    const/4 v0, 0x1

    :cond_2f
    :goto_9
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    if-eqz v6, :cond_30

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v6, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkTaskTag(II)V

    :cond_30
    iget-char v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v6, v11, :cond_31

    if-ne v6, v12, :cond_35

    :cond_31
    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    if-nez v6, :cond_32

    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkUninternedIdentityComparison:Z

    if-eqz v6, :cond_33

    :cond_32
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastPosition:I

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v6, v8, :cond_33

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->parseTags()V

    :cond_33
    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v6, :cond_35

    if-eqz v0, :cond_34

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto :goto_a

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_35
    :goto_a
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_47

    return v4

    :catch_1
    :try_start_5
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    if-eqz v0, :cond_36

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkTaskTag(II)V

    :cond_36
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    if-nez v0, :cond_37

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkUninternedIdentityComparison:Z

    if-eqz v0, :cond_38

    :cond_37
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastPosition:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v6, :cond_38

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->parseTags()V

    :cond_38
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    if-eqz v0, :cond_39

    return v4

    :cond_39
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_11

    :cond_3a
    if-lez v6, :cond_51

    :try_start_6
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v8, v6, v8

    iput-char v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_3b

    aget-char v6, v6, v10

    const/16 v8, 0x75

    if-ne v6, v8, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    const/4 v6, 0x1

    goto :goto_b

    :cond_3b
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v6, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_3c
    move v6, v2

    :goto_b
    iget-char v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v8, v0, :cond_3d

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_c

    :cond_3d
    move v10, v2

    move v13, v10

    :goto_c
    if-eq v8, v11, :cond_3e

    if-ne v8, v12, :cond_40

    :cond_3e
    iget-boolean v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v8, :cond_40

    if-eqz v6, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto :goto_d

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_40
    :goto_d
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v14, v6, 0x1

    iput v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v15, v8, v6

    iput-char v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v3, 0x5c

    if-ne v15, v3, :cond_41

    aget-char v3, v8, v14

    const/16 v8, 0x75

    if-ne v3, v8, :cond_41

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    const/4 v3, 0x1

    goto :goto_e

    :cond_41
    move v3, v2

    :goto_e
    iget-char v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v14, 0x5c

    if-ne v8, v14, :cond_42

    iget-object v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v15, v15, v5

    if-ne v15, v14, :cond_42

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_42
    if-ne v8, v4, :cond_43

    move v10, v2

    :cond_43
    move v5, v2

    :cond_44
    :goto_f
    iget-char v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v8, v4, :cond_48

    if-eqz v13, :cond_48

    if-eqz v10, :cond_45

    const/16 v0, 0x3eb

    goto :goto_10

    :cond_45
    const/16 v0, 0x3ea

    :goto_10
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    aput v5, v3, v4

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    if-eqz v3, :cond_46

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkTaskTag(II)V

    :cond_46
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    if-eqz v3, :cond_47

    return v0

    :cond_47
    :goto_11
    move v0, v7

    const/16 v3, 0x21

    const/16 v4, 0x3d

    goto/16 :goto_0

    :cond_48
    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v13, v14, :cond_50

    if-eq v8, v11, :cond_49

    if-ne v8, v12, :cond_4b

    :cond_49
    iget-boolean v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v8, :cond_4b

    if-eqz v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto :goto_12

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_4b
    :goto_12
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v3, v0, :cond_4e

    if-eq v3, v9, :cond_4c

    goto :goto_13

    :cond_4c
    if-nez v5, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isFirstTag()Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_14

    :cond_4d
    :goto_13
    move v6, v5

    :goto_14
    move v13, v2

    move v5, v6

    goto :goto_15

    :cond_4e
    const/4 v13, 0x1

    :goto_15
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v8, v6, 0x1

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v14, v3, v6

    iput-char v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_4f

    aget-char v3, v3, v8

    const/16 v8, 0x75

    if-ne v3, v8, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    const/4 v3, 0x1

    goto :goto_16

    :cond_4f
    move v3, v2

    :goto_16
    iget-char v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v14, 0x5c

    if-ne v8, v14, :cond_44

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v8, v8, v15

    if-ne v8, v14, :cond_44

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto/16 :goto_f

    :cond_50
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_Comment"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :try_start_7
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_Comment"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_52

    const/16 v0, 0x5a

    return v0

    :cond_52
    return v12

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsDigit()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_53
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_54

    const/16 v0, 0x7a

    return v0

    :cond_54
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v2, 0x1

    return v2

    :cond_55
    const/4 v2, 0x1

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v2

    :pswitch_d
    const/16 v0, 0x2d

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_56

    return v8

    :cond_56
    if-lez v0, :cond_57

    const/16 v0, 0x58

    return v0

    :cond_57
    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_58

    const/16 v0, 0x62

    return v0

    :cond_58
    const/4 v0, 0x5

    return v0

    :pswitch_e
    return v14

    :pswitch_f
    const/16 v0, 0x2b

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x2

    return v0

    :cond_59
    if-lez v0, :cond_5a

    const/16 v0, 0x57

    return v0

    :cond_5a
    const/4 v0, 0x4

    return v0

    :pswitch_10
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v0, 0x59

    return v0

    :cond_5b
    const/16 v0, 0x8

    return v0

    :pswitch_11
    const/16 v0, 0x19

    return v0

    :pswitch_12
    const/16 v0, 0x17

    return v0

    :pswitch_13
    invoke-virtual {v1, v12, v11}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    const-string v3, "Invalid_Character_Constant"

    if-eqz v0, :cond_6b

    const/16 v4, 0x27

    if-lez v0, :cond_5e

    :goto_17
    if-ge v2, v8, :cond_5d

    :try_start_8
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v5, v0, v2

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v5, v6, :cond_5d

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v6, v0, v2

    aget-char v6, v5, v6

    if-eq v6, v12, :cond_5d

    add-int v6, v0, v2

    aget-char v5, v5, v6

    if-eq v5, v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_5c
    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_5d
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_61

    :goto_18
    if-ge v2, v8, :cond_60

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v5, v0, v2

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v5, v6, :cond_60

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v6, v0, v2

    aget-char v6, v5, v6

    if-eq v6, v12, :cond_60

    add-int v6, v0, v2

    aget-char v5, v5, v6

    if-eq v5, v4, :cond_5f

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_5f
    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_60
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    const/16 v0, 0x5c

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v5

    if-eqz v5, :cond_65

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    if-eqz v0, :cond_63

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_62

    aget-char v0, v0, v6

    const/16 v5, 0x75

    if-ne v0, v5, :cond_62

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_19

    :cond_62
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto :goto_19

    :cond_63
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v5

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_64
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanEscapeCharacter()V

    goto :goto_1a

    :cond_65
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_66

    aget-char v0, v0, v6
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    const/16 v5, 0x75

    if-ne v0, v5, :cond_66

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_1a

    :cond_66
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_67

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_67
    :goto_1a
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_68

    const/16 v0, 0x2d

    return v0

    :cond_68
    :goto_1b
    const/16 v0, 0x14

    if-ge v2, v0, :cond_6a

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v5, v0, v2

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v5, v6, :cond_6a

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v6, v0, v2

    aget-char v6, v5, v6

    if-eq v6, v12, :cond_6a

    add-int v6, v0, v2

    aget-char v5, v5, v6

    if-eq v5, v4, :cond_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_69
    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_6a
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    const/16 v0, 0x26

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_6c

    const/16 v0, 0x1e

    return v0

    :cond_6c
    if-lez v0, :cond_6d

    const/16 v0, 0x5b

    return v0

    :cond_6d
    const/16 v0, 0x15

    return v0

    :pswitch_15
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/16 v0, 0x5e

    return v0

    :cond_6e
    return v6

    :cond_6f
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v0, :cond_70

    const/16 v0, 0x5d

    return v0

    :cond_70
    const/16 v0, 0x18

    return v0

    :cond_71
    const/16 v0, 0x42

    return v0

    :cond_72
    :try_start_b
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_73

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_73

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    :goto_1c
    const/4 v0, 0x1

    goto :goto_1e

    :catch_4
    move-exception v0

    goto/16 :goto_24

    :cond_73
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_74

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_74
    :goto_1d
    move v0, v2

    :goto_1e
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v3, v8, :cond_75

    return v4

    :cond_75
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v5, v6, :cond_84

    if-eq v3, v12, :cond_7c

    if-ne v3, v11, :cond_76

    goto/16 :goto_20

    :cond_76
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_7a

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    if-eqz v0, :cond_77

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v3, v5, 0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_79

    aget-char v0, v0, v3

    const/16 v3, 0x75

    if-ne v0, v3, :cond_79

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    goto :goto_1f

    :cond_77
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-nez v0, :cond_78

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeInitializeBuffer(I)V

    :cond_78
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v3

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_79
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanEscapeCharacter()V

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_7a
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_7b

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_7b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto/16 :goto_1c

    :cond_7b
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_74

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto/16 :goto_1d

    :cond_7c
    :goto_20
    if-eqz v0, :cond_82

    move v0, v2

    :goto_21
    const/16 v3, 0x32

    if-ge v0, v3, :cond_83

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v3, v4, :cond_81

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v6, v3, 0x1

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v9, v4, v3

    iput-char v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7d

    aget-char v4, v4, v6

    const/16 v6, 0x75

    if-ne v4, v6, :cond_7e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_22

    :cond_7d
    const/16 v6, 0x75

    :cond_7e
    if-eq v9, v12, :cond_80

    :goto_22
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v3, v8, :cond_7f

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_7f
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Invalid_Char_In_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_23

    :cond_81
    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_23

    :cond_82
    const/4 v3, 0x1

    sub-int/2addr v5, v3

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_83
    :goto_23
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Invalid_Char_In_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
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

    if-eqz v3, :cond_86

    :goto_25
    const/16 v3, 0x32

    if-ge v2, v3, :cond_86

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v4, v3, v2

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v4, v5, :cond_86

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v5, v3, v2

    aget-char v5, v4, v5

    if-eq v5, v12, :cond_86

    add-int v5, v3, v2

    aget-char v4, v4, v5

    if-eq v4, v8, :cond_85

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_85
    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_86
    throw v0

    :catch_5
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_String"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_88

    const/16 v0, 0x14

    return v0

    :cond_88
    const/16 v0, 0x3f

    return v0

    :cond_89
    const/4 v0, 0x6

    return v0

    :cond_8a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_8b

    const/16 v2, 0x3d

    return v2

    :cond_8b
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Ctrl-Z"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_6

    :cond_8c
    const/16 v4, 0x3d

    const/4 v6, 0x1

    goto/16 :goto_1

    :catch_6
    move v0, v7

    :catch_7
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v2, :cond_8d

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_8d

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    const/16 v2, 0x3e8

    return v2

    :cond_8d
    const/16 v2, 0x3d

    return v2

    nop

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const-string v3, "Invalid_Unicode_Escape"

    if-ge v1, v2, :cond_6

    const/4 v0, 0x6

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v1, v1, v2

    const/16 v4, 0x75

    if-eq v1, v4, :cond_4

    add-int/lit8 v4, v2, 0x4

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-gt v4, v5, :cond_3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v5, v6

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-gt v5, v2, :cond_2

    if-ltz v5, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v6, v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v6

    if-gt v6, v2, :cond_2

    if-ltz v6, :cond_2

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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

    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeInitializeBuffer(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    return-void

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sub-int/2addr v5, v2

    add-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v1, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRawTokenSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v0, v1

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final getRawTokenSourceEnd()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getSource()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    return-object v0
.end method

.method public isAtAssistIdentifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFirstTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInModuleDeclaration()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->insideModuleInfo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;->isParsingModuleDeclaration()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final jumpOverMethodBody()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    :goto_0
    :try_start_0
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :cond_1
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v5, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x75

    const/16 v10, 0x5c

    if-ne v4, v10, :cond_2

    aget-char v5, v5, v6

    if-ne v5, v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v4

    goto :goto_1

    :cond_2
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v5, :cond_4

    if-eq v4, v7, :cond_3

    if-ne v4, v8, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_4
    iget-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_1

    iget-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v5, 0x22

    if-eq v4, v5, :cond_39

    const/16 v5, 0x27

    if-eq v4, v5, :cond_32

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

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeyword()I

    goto/16 :goto_16

    :cond_5
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanNumber(Z)I

    goto/16 :goto_16

    :cond_6
    const v5, 0xd800

    const v6, 0xdfff

    const v7, 0xdc00

    if-lt v4, v5, :cond_9

    const v5, 0xdbff

    if-gt v4, v5, :cond_9

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v10, 0x310000

    cmp-long v5, v8, v10

    if-ltz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v5

    int-to-char v5, v5

    if-lt v5, v7, :cond_3f

    if-le v5, v6, :cond_7

    goto/16 :goto_16

    :cond_7
    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

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
    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeyword()I
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
    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v6, :cond_1d

    const/16 v4, 0x3e9

    :try_start_3
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v11, v5, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v6, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v10, :cond_e

    aget-char v5, v6, v11

    if-ne v5, v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    :cond_e
    iget-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v10, :cond_f

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v5, v6

    if-ne v5, v10, :cond_f

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_f
    move v5, v1

    :cond_10
    :goto_3
    iget-char v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v6, v7, :cond_14

    if-ne v6, v8, :cond_11

    goto :goto_5

    :cond_11
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v5, v6, :cond_13

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v11, v5, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v6, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v10, :cond_12

    aget-char v5, v6, v11

    if-ne v5, v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    move v5, v2

    goto :goto_4

    :cond_12
    move v5, v1

    :goto_4
    iget-char v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v6, v10, :cond_10

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v6, v6, v11

    if-ne v6, v10, :cond_10

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_3

    :cond_13
    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    :cond_14
    :goto_5
    if-ne v6, v7, :cond_16

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-le v6, v11, :cond_16

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v12, v6, v11

    if-ne v12, v8, :cond_15

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput-char v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_6

    :cond_15
    if-ne v12, v10, :cond_16

    add-int/lit8 v11, v11, 0x1

    aget-char v6, v6, v11

    if-ne v6, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    move v5, v2

    :cond_16
    :goto_6
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v6, :cond_3f

    iget-char v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v6, v7, :cond_17

    if-ne v6, v8, :cond_3f

    :cond_17
    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    if-nez v6, :cond_18

    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkUninternedIdentityComparison:Z

    if-eqz v6, :cond_19

    :cond_18
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastPosition:I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v6, v7, :cond_19

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->parseTags()V

    :cond_19
    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v6, :cond_3f

    if-eqz v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto/16 :goto_16

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_16

    :catch_0
    :try_start_4
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v5, v2

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    if-nez v4, :cond_1b

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkUninternedIdentityComparison:Z

    if-eqz v4, :cond_1c

    :cond_1b
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastPosition:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v4, v5, :cond_1c

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->parseTags()V

    :cond_1c
    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    if-nez v4, :cond_3f

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_16

    :cond_1d
    if-lez v6, :cond_3f

    :try_start_5
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v11, v6, v11

    iput-char v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v11, v10, :cond_1e

    aget-char v6, v6, v12

    if-ne v6, v9, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    move v6, v2

    goto :goto_7

    :cond_1e
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v6, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_1f
    move v6, v1

    :goto_7
    iget-char v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v11, v4, :cond_20

    move v12, v2

    :goto_8
    move v13, v12

    goto :goto_9

    :cond_20
    move v12, v1

    goto :goto_8

    :goto_9
    if-eq v11, v7, :cond_21

    if-ne v11, v8, :cond_23

    :cond_21
    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v11, :cond_23

    if-eqz v6, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto :goto_a

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_23
    :goto_a
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v14, v6, 0x1

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v15, v11, v6

    iput-char v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v15, v10, :cond_24

    aget-char v11, v11, v14

    if-ne v11, v9, :cond_24

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    move v11, v2

    goto :goto_b

    :cond_24
    move v11, v1

    :goto_b
    iget-char v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v14, v10, :cond_25

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v15, v15, v2

    if-ne v15, v10, :cond_25

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_25
    if-ne v14, v5, :cond_26

    move v12, v1

    :cond_26
    move v2, v1

    :cond_27
    :goto_c
    iget-char v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v14, v5, :cond_29

    if-eqz v13, :cond_29

    if-eqz v12, :cond_28

    const/16 v4, 0x3eb

    goto :goto_d

    :cond_28
    const/16 v4, 0x3ea

    :goto_d
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    aput v2, v4, v5

    goto/16 :goto_16

    :cond_29
    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-lt v13, v15, :cond_2a

    return-void

    :cond_2a
    if-eq v14, v7, :cond_2b

    if-ne v14, v8, :cond_2d

    :cond_2b
    iget-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v13, :cond_2d

    if-eqz v11, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto :goto_e

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_2d
    :goto_e
    iget-char v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v11, v4, :cond_30

    const/16 v13, 0x40

    if-eq v11, v13, :cond_2e

    goto :goto_f

    :cond_2e
    if-nez v2, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isFirstTag()Z

    move-result v11

    if-eqz v11, :cond_2f

    goto :goto_10

    :cond_2f
    :goto_f
    move v6, v2

    :goto_10
    move v13, v1

    move v2, v6

    goto :goto_11

    :cond_30
    const/4 v13, 0x1

    :goto_11
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v14, v6, 0x1

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v15, v11, v6

    iput-char v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v15, v10, :cond_31

    aget-char v11, v11, v14

    if-ne v11, v9, :cond_31

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    const/4 v11, 0x1

    goto :goto_12

    :cond_31
    move v11, v1

    :goto_12
    iget-char v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v14, v10, :cond_27

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v14, v14, v15

    if-ne v14, v10, :cond_27

    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_1
    return-void

    :cond_32
    :try_start_6
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v2, :cond_36

    :try_start_7
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    if-eqz v2, :cond_34

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v4, v10, :cond_33

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_13

    :cond_33
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_35

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto :goto_13

    :cond_34
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v2, v2, v4

    iput-char v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_35
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanEscapeCharacter()V

    goto :goto_14

    :cond_36
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v4, v10, :cond_37

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_37

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_14

    :cond_37
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_7
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_2
    :cond_38
    :goto_14
    :try_start_8
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_16

    :cond_39
    :try_start_9
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v4, v10, :cond_3a

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_15

    :cond_3a
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
    :try_end_9
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_3
    :cond_3b
    :goto_15
    :try_start_a
    iget-char v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v2, v5, :cond_3c

    goto :goto_16

    :cond_3c
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-lt v4, v6, :cond_3d

    return-void

    :cond_3d
    if-ne v2, v7, :cond_3e

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v2, v2, v4

    if-ne v2, v8, :cond_3f

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_16

    :cond_3e
    if-ne v2, v8, :cond_40

    :catch_4
    :cond_3f
    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_40
    if-ne v2, v10, :cond_44

    :try_start_b
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    if-eqz v2, :cond_42

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v4, v10, :cond_41

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_41

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_17

    :cond_41
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_43

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto :goto_17

    :cond_42
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v2, v2, v4

    iput-char v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_43
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanEscapeCharacter()V
    :try_end_b
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_6

    :catch_5
    :cond_44
    :try_start_c
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v4, v2, v4

    iput-char v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v4, v10, :cond_45

    aget-char v2, v2, v6

    if-ne v2, v9, :cond_45

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_15

    :cond_45
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v2, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V
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

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public final maybeAtLambdaOrCast()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;->atConflictScenario(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeAtReferenceExpression()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/16 v2, 0xb

    if-eqz v1, :cond_2

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    aget v0, v0, v4

    if-eq v0, v2, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    return v4

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;->atConflictScenario(I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final optimizedCurrentTokenSource1()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char v0, v1, v2

    return-object v1

    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_z:[C

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_y:[C

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_x:[C

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_w:[C

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_v:[C

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_u:[C

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_t:[C

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_s:[C

    return-object v0

    :pswitch_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_r:[C

    return-object v0

    :pswitch_9
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_q:[C

    return-object v0

    :pswitch_a
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_p:[C

    return-object v0

    :pswitch_b
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_o:[C

    return-object v0

    :pswitch_c
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_n:[C

    return-object v0

    :pswitch_d
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_m:[C

    return-object v0

    :pswitch_e
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_l:[C

    return-object v0

    :pswitch_f
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_k:[C

    return-object v0

    :pswitch_10
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_j:[C

    return-object v0

    :pswitch_11
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_i:[C

    return-object v0

    :pswitch_12
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_h:[C

    return-object v0

    :pswitch_13
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_g:[C

    return-object v0

    :pswitch_14
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_f:[C

    return-object v0

    :pswitch_15
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_e:[C

    return-object v0

    :pswitch_16
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_d:[C

    return-object v0

    :pswitch_17
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_c:[C

    return-object v0

    :pswitch_18
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_b:[C

    return-object v0

    :pswitch_19
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_a:[C

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    aget-char v2, v0, v1

    shl-int/lit8 v3, v2, 0x6

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v0, v4

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x1e

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aget-object v3, v5, v3

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry2:I

    :cond_0
    const/4 v7, 0x1

    add-int/2addr v5, v7

    const/4 v8, 0x6

    if-lt v5, v8, :cond_4

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry2:I

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

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry2:I

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    aget-char v3, v0, v1

    shl-int/lit8 v4, v3, 0x6

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v0, v5

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x1e

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-object v4, v6, v4

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry3:I

    :cond_0
    add-int/2addr v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x2

    if-lt v6, v9, :cond_4

    iget v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry3:I

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

    iput v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry3:I

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

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

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

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    const/4 v9, 0x2

    aget-object v8, v8, v9

    aget-object v6, v8, v6

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry4:I

    :cond_0
    const/4 v10, 0x1

    add-int/2addr v8, v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x6

    if-lt v8, v13, :cond_4

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry4:I

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

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry4:I

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

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

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

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aget-object v6, v9, v6

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry5:I

    :goto_0
    const/4 v11, 0x1

    add-int/2addr v9, v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x6

    if-lt v9, v14, :cond_3

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry5:I

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

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry5:I

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

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

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

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->charArray_length:[[[[C

    const/4 v11, 0x4

    aget-object v10, v10, v11

    aget-object v7, v10, v7

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry6:I

    :goto_0
    const/4 v12, 0x1

    add-int/2addr v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/16 v16, 0x2

    const/4 v15, 0x6

    if-lt v10, v15, :cond_3

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry6:I

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

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->newEntry6:I

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

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v4

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    if-ltz v1, :cond_0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    aget v5, v5, v1

    if-lt v5, v0, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    array-length v6, v5

    add-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    if-lt v1, v6, :cond_1

    mul-int/lit8 v1, v6, 0x2

    add-int/lit16 v1, v1, 0xfa

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    invoke-static {v5, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    aput v0, v1, v5

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v6

    if-ne v0, v2, :cond_2

    aput v6, v1, v5

    add-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    aget v2, v0, v1

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v5, -0x2

    if-ne v2, v6, :cond_4

    sub-int/2addr v5, v4

    aput v5, v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v4

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    if-ltz v1, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    aget v2, v2, v1

    if-lt v2, v0, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    array-length v5, v2

    add-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    if-lt v1, v5, :cond_6

    mul-int/lit8 v1, v5, 0x2

    add-int/lit16 v1, v1, 0xfa

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    aput v0, v1, v2

    :goto_0
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final pushUnicodeLineSeparator()V
    .locals 4

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public recordComment(I)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    neg-int v1, p1

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    array-length v2, p1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    if-lt v3, v2, :cond_2

    add-int/lit16 v3, v2, 0x12c

    new-array v4, v3, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    const/4 v5, 0x0

    invoke-static {p1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    invoke-static {p1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    aput v1, p1, v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aput v0, p1, v2

    return-void
.end method

.method public resetTo(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isInModuleDeclaration()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(IIZ)V

    return-void
.end method

.method public resetTo(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(IIZLorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;)V

    return-void
.end method

.method public resetTo(IIZLorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->diet:Z

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, p2, :cond_0

    .line 6
    array-length p2, v1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    if-ge p2, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 7
    :cond_1
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :goto_0
    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->foundTaskCount:I

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/4 v1, 0x1

    aput v0, p2, v1

    aput v0, p2, v0

    .line 11
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumingEllipsisAnnotations:Z

    .line 12
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->insideModuleInfo:Z

    if-nez p4, :cond_2

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getScanContext(I)Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    return-void
.end method

.method public final scanEscapeCharacter()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

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
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v5, v6

    iput-char v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-char v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v5

    if-ltz v5, :cond_4

    if-gt v5, v2, :cond_4

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v5, v6

    iput-char v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_1

    :cond_1
    iget-char v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v3

    if-ltz v3, :cond_2

    if-gt v3, v2, :cond_2

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :goto_1
    const/16 v2, 0xff

    if-gt v0, v2, :cond_6

    int-to-char v0, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

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

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_9
    const/16 v0, 0xd

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_a
    const/16 v0, 0xa

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_b
    const/16 v0, 0xc

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_c
    const/16 v0, 0x8

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_d
    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_e
    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_2

    :cond_f
    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

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

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    move v2, v0

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    if-ge v4, v5, :cond_11

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v10, v8, v4

    iput-char v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v8

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v2, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v9

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-eqz v5, :cond_5

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :cond_5
    return v6

    :cond_6
    if-eqz v5, :cond_7

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto :goto_2

    :cond_7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    :cond_8
    :goto_2
    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v1, 0x80

    const/16 v2, 0x81

    if-ge v0, v1, :cond_a

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v1, v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeywordWithBoundCheck()I

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

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    cmp-long v1, v8, v6

    if-ltz v1, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharWithBoundChecks()I

    move-result v1

    int-to-char v1, v1

    if-lt v1, v4, :cond_b

    if-gt v1, v3, :cond_b

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

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

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

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
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeywordWithBoundCheck()I

    move-result v0

    return v0

    :cond_10
    return v2

    :cond_11
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v0, :cond_12

    add-int/lit8 v0, v4, -0x1

    if-eq v1, v0, :cond_12

    sub-int/2addr v4, v7

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    return v6

    :cond_12
    const/16 v0, 0x3d

    return v0
.end method

.method public scanIdentifierOrKeyword()I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useAssertAsAnIndentifier:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useEnumAsAnIndentifier:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v4, :cond_1

    iput-char v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v4, 0x102

    if-eqz v0, :cond_3

    iput-char v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/16 v1, 0x16

    if-nez v0, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v0, v2

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    move v3, v2

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_7

    return v1

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    :goto_2
    invoke-direct {p0, v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->internalScanIdentifierOrKeyword(II[C)I

    move-result v0

    return v0
.end method

.method public scanIdentifierOrKeywordWithBoundCheck()I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useAssertAsAnIndentifier:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->useEnumAsAnIndentifier:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

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

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v4, :cond_1

    iput-char v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v4, 0x102

    if-eqz v0, :cond_3

    iput-char v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPartWithBoundCheck()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPartWithBoundCheck()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/16 v1, 0x16

    if-nez v0, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v0, v2

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    move v3, v2

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_7

    return v1

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    :goto_2
    invoke-direct {p0, v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->internalScanIdentifierOrKeyword(II[C)I

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

    const/16 v6, 0x2a

    const/16 v11, 0x4c

    const/16 v12, 0x6c

    const/16 v14, 0x75

    const/16 v15, 0x5c

    const/16 v2, 0x2b

    const/4 v13, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x1

    if-nez p1, :cond_40

    iget-char v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v10, 0x30

    if-ne v9, v10, :cond_40

    const/16 v9, 0x78

    const/16 v10, 0x58

    invoke-virtual {v0, v9, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v9

    if-ltz v9, :cond_2a

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/16 v10, 0x10

    invoke-direct {v0, v10, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(IZ)V

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v0, v12, v11}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v16

    const-string v11, "Invalid_Hexa_Literal"

    if-ltz v16, :cond_1

    if-eq v10, v9, :cond_0

    return v6

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v1

    const-string v6, "Illegal_Hexa_Literal"

    const-wide/32 v17, 0x310000

    if-eqz v1, :cond_16

    if-ne v10, v9, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    move v1, v13

    :goto_0
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/16 v10, 0x10

    invoke-direct {v0, v10, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(IZ)V

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-eqz v1, :cond_4

    if-ne v8, v9, :cond_4

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v1, 0x70

    const/16 v8, 0x50

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_14

    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v8, v1, v8

    iput-char v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v8, v15, :cond_5

    aget-char v1, v1, v9

    if-ne v1, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_1

    :cond_5
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_6
    :goto_1
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v1, v5, :cond_7

    if-ne v1, v2, :cond_9

    :cond_7
    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v1, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v15, :cond_8

    aget-char v1, v1, v8

    if-ne v1, v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_2

    :cond_8
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_9
    :goto_2
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_c

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_b

    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v1, v4, :cond_a

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    const/16 v1, 0x46

    const/16 v3, 0x66

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_e

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v3, v17

    if-ltz v1, :cond_d

    return v2

    :cond_d
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const/16 v1, 0x44

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_10

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_f

    const/16 v1, 0x2c

    return v1

    :cond_f
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/16 v1, 0x4c

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_12

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_11

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_13

    const/16 v1, 0x2c

    return v1

    :cond_13
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_15

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/16 v1, 0x70

    const/16 v8, 0x50

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_28

    if-ne v10, v9, :cond_18

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_17

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v8, v1, v8

    iput-char v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v8, v15, :cond_19

    aget-char v1, v1, v9

    if-ne v1, v14, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_3

    :cond_19
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_1a
    :goto_3
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v1, v5, :cond_1b

    if-ne v1, v2, :cond_1d

    :cond_1b
    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v1, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v15, :cond_1c

    aget-char v1, v1, v8

    if-ne v1, v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_4

    :cond_1c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_1d
    :goto_4
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_20

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_1f

    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v1, v4, :cond_1e

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Float_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    const/16 v1, 0x46

    const/16 v3, 0x66

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_22

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v3, v17

    if-ltz v1, :cond_21

    return v2

    :cond_21
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const/16 v1, 0x44

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_24

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_23

    const/16 v1, 0x2c

    return v1

    :cond_23
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    const/16 v1, 0x4c

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_26

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-gez v1, :cond_25

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    cmp-long v1, v1, v17

    if-ltz v1, :cond_27

    const/16 v1, 0x2c

    return v1

    :cond_27
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v6}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    if-eq v10, v9, :cond_29

    const/16 v1, 0x29

    return v1

    :cond_29
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const/16 v9, 0x62

    const/16 v10, 0x42

    invoke-virtual {v0, v9, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v9

    if-ltz v9, :cond_30

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/4 v2, 0x2

    invoke-direct {v0, v2, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(IZ)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ne v2, v1, :cond_2c

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-gez v1, :cond_2b

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Binary_Literal_Not_Below_17"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Binary_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    const/16 v1, 0x4c

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_2e

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2d

    return v6

    :cond_2d
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Binary_Literal_Not_Below_17"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2f

    const/16 v1, 0x29

    return v1

    :cond_2f
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Binary_Literal_Not_Below_17"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsDigit()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    const/16 v9, 0x4c

    invoke-virtual {v0, v12, v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v9

    if-ltz v9, :cond_31

    return v6

    :cond_31
    const/16 v6, 0x46

    const/16 v9, 0x66

    invoke-virtual {v0, v9, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v10

    if-ltz v10, :cond_32

    return v2

    :cond_32
    const/16 v6, 0x44

    const/16 v9, 0x64

    invoke-virtual {v0, v9, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v10

    if-ltz v10, :cond_33

    const/16 v6, 0x2c

    return v6

    :cond_33
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    move v8, v13

    :cond_34
    const/16 v1, 0x65

    const/16 v6, 0x45

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_3c

    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v6, v1, v6

    iput-char v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v6, v15, :cond_35

    aget-char v1, v1, v8

    if-ne v1, v14, :cond_35

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_5

    :cond_35
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_36

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_36
    :goto_5
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v1, v5, :cond_37

    if-ne v1, v2, :cond_39

    :cond_37
    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v1, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v15, :cond_38

    aget-char v1, v1, v6

    if-ne v1, v14, :cond_38

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_6

    :cond_38
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_39
    :goto_6
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v1, v4, :cond_3a

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Float_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    :goto_7
    const/16 v1, 0x46

    const/16 v3, 0x66

    goto :goto_8

    :cond_3c
    move v13, v8

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_3d

    return v2

    :cond_3d
    const/16 v1, 0x44

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-gez v1, :cond_3e

    if-nez v13, :cond_3f

    :cond_3e
    const/16 v1, 0x2c

    goto :goto_9

    :cond_3f
    const/16 v9, 0x29

    return v9

    :goto_9
    return v1

    :cond_40
    const/16 v9, 0x29

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    if-nez p1, :cond_41

    const/16 v10, 0x4c

    invoke-virtual {v0, v12, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v10

    if-ltz v10, :cond_41

    return v6

    :cond_41
    if-nez p1, :cond_42

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {v0, v7, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(IZ)V

    move v1, v8

    goto :goto_a

    :cond_42
    move/from16 v1, p1

    :goto_a
    const/16 v6, 0x65

    const/16 v10, 0x45

    invoke-virtual {v0, v6, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v6

    if-ltz v6, :cond_4a

    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v10, v6, 0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v6, v1, v6

    iput-char v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v6, v15, :cond_43

    aget-char v1, v1, v10

    if-ne v1, v14, :cond_43

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_b

    :cond_43
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_44

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_44
    :goto_b
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v1, v5, :cond_45

    if-ne v1, v2, :cond_47

    :cond_45
    iput-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v1, v5

    iput-char v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v15, :cond_46

    aget-char v1, v1, v6

    if-ne v1, v14, :cond_46

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    goto :goto_c

    :cond_46
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v1, :cond_47

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_47
    :goto_c
    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_49

    iget-char v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v1, v4, :cond_48

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Float_Literal"

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->consumeDigits(I)V

    :goto_d
    const/16 v1, 0x44

    const/16 v3, 0x64

    goto :goto_e

    :cond_4a
    move v8, v1

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v1

    if-ltz v1, :cond_4b

    const/16 v1, 0x2c

    return v1

    :cond_4b
    const/16 v1, 0x2c

    const/16 v3, 0x46

    const/16 v4, 0x66

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v3

    if-ltz v3, :cond_4c

    return v2

    :cond_4c
    if-eqz v8, :cond_4d

    move v2, v1

    goto :goto_f

    :cond_4d
    move v2, v9

    :goto_f
    return v2
.end method

.method public setActiveParser(Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;)V
    .locals 3

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->activeParser:Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lookBack:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;->isParsingModuleDeclaration()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->insideModuleInfo:Z

    :cond_0
    return-void
.end method

.method public final setSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method

.method public final setSource([C)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    move p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    .line 3
    array-length p1, p1

    :goto_0
    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->containsAssertKeyword:Z

    .line 8
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->insideModuleInfo:Z

    return-void
.end method

.method public final setSource([CLorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    .line 14
    :goto_0
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->lineSeparatorPositions:[I

    if-eqz p1, :cond_1

    .line 15
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    .line 16
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EOF\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "behind the EOF\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOT started!\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string v1, "<source beginning>\n...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v1, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineStart(I)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "\n===============================\nStarts here -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, -0x1

    if-le v1, v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_5
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<-- Ends here [in pipeline "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->toStringAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n===============================\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const-string v1, "<-- Ends here\n===============================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

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

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    const/16 v0, 0x74

    if-eq p1, v0, :cond_0

    const-string v0, ")"

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    const-string p1, "not-a-token"

    return-object p1

    :pswitch_0
    const-string p1, "try"

    return-object p1

    :pswitch_1
    const-string p1, "return"

    return-object p1

    :pswitch_2
    const-string p1, "if"

    return-object p1

    :pswitch_3
    const-string p1, "for"

    return-object p1

    :pswitch_4
    const-string p1, "do"

    return-object p1

    :pswitch_5
    const-string p1, "continue"

    return-object p1

    :pswitch_6
    const-string p1, "break"

    return-object p1

    :pswitch_7
    const-string p1, "while"

    return-object p1

    :pswitch_8
    const-string p1, "throw"

    return-object p1

    :pswitch_9
    const-string p1, "default"

    return-object p1

    :pswitch_a
    const-string p1, "="

    return-object p1

    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "white_space("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string p1, "implements"

    return-object p1

    :sswitch_2
    const-string p1, "throws"

    return-object p1

    :sswitch_3
    const-string p1, "module"

    return-object p1

    :sswitch_4
    const-string p1, "else"

    return-object p1

    :sswitch_5
    const-string p1, "finally"

    return-object p1

    :sswitch_6
    const-string p1, "void"

    return-object p1

    :sswitch_7
    const-string p1, "short"

    return-object p1

    :sswitch_8
    const-string p1, "long"

    return-object p1

    :sswitch_9
    const-string p1, "int"

    return-object p1

    :sswitch_a
    const-string p1, "import"

    return-object p1

    :sswitch_b
    const-string p1, "float"

    return-object p1

    :sswitch_c
    const-string p1, "double"

    return-object p1

    :sswitch_d
    const-string p1, "char"

    return-object p1

    :sswitch_e
    const-string p1, "catch"

    return-object p1

    :sswitch_f
    const-string p1, "case"

    return-object p1

    :sswitch_10
    const-string p1, "byte"

    return-object p1

    :sswitch_11
    const-string p1, "boolean"

    return-object p1

    :sswitch_12
    const-string p1, "->"

    return-object p1

    :sswitch_13
    const-string p1, ">>>="

    return-object p1

    :sswitch_14
    const-string p1, ">>="

    return-object p1

    :sswitch_15
    const-string p1, "<<="

    return-object p1

    :sswitch_16
    const-string p1, "%="

    return-object p1

    :sswitch_17
    const-string p1, "^="

    return-object p1

    :sswitch_18
    const-string p1, "|="

    return-object p1

    :sswitch_19
    const-string p1, "&="

    return-object p1

    :sswitch_1a
    const-string p1, "/="

    return-object p1

    :sswitch_1b
    const-string p1, "*="

    return-object p1

    :sswitch_1c
    const-string p1, "-="

    return-object p1

    :sswitch_1d
    const-string p1, "+="

    return-object p1

    :sswitch_1e
    const-string p1, "extends"

    return-object p1

    :sswitch_1f
    const-string p1, "package"

    return-object p1

    :sswitch_20
    const-string p1, "interface"

    return-object p1

    :pswitch_b
    const-string p1, "~"

    return-object p1

    :pswitch_c
    const-string p1, "!"

    return-object p1

    :pswitch_d
    const-string p1, ":"

    return-object p1

    :pswitch_e
    const-string p1, "EOF"

    return-object p1

    :pswitch_f
    const-string p1, "volatile"

    return-object p1

    :pswitch_10
    const-string p1, "transient"

    return-object p1

    :pswitch_11
    const-string p1, "public"

    return-object p1

    :pswitch_12
    const-string p1, "protected"

    return-object p1

    :pswitch_13
    const-string p1, "private"

    return-object p1

    :pswitch_14
    const-string p1, "native"

    return-object p1

    :pswitch_15
    const-string p1, "final"

    return-object p1

    :pswitch_16
    const-string p1, "abstract"

    return-object p1

    :pswitch_17
    const-string p1, "switch"

    return-object p1

    :pswitch_18
    const-string p1, "synchronized"

    return-object p1

    :pswitch_19
    const-string p1, "{"

    return-object p1

    :pswitch_1a
    const-string p1, "static"

    return-object p1

    :pswitch_1b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "String("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Char("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Double("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Float("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Long("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Integer("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_21
    const-string p1, "true"

    return-object p1

    :pswitch_22
    const-string p1, "null"

    return-object p1

    :pswitch_23
    const-string p1, "false"

    return-object p1

    :pswitch_24
    const-string p1, "new"

    return-object p1

    :pswitch_25
    const-string p1, "this"

    return-object p1

    :pswitch_26
    const-string p1, "super"

    return-object p1

    :pswitch_27
    const-string p1, "}"

    return-object p1

    :pswitch_28
    const-string p1, ","

    return-object p1

    :pswitch_29
    const-string p1, "||"

    return-object p1

    :pswitch_2a
    const-string p1, "&&"

    return-object p1

    :pswitch_2b
    const-string p1, "?"

    return-object p1

    :pswitch_2c
    const-string p1, "|"

    return-object p1

    :pswitch_2d
    const-string p1, ";"

    return-object p1

    :pswitch_2e
    return-object v0

    :pswitch_2f
    const-string p1, "^"

    return-object p1

    :pswitch_30
    const-string p1, "("

    return-object p1

    :pswitch_31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Identifier("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_32
    const-string p1, "&"

    return-object p1

    :pswitch_33
    const-string p1, "!="

    return-object p1

    :pswitch_34
    const-string p1, "=="

    return-object p1

    :pswitch_35
    const-string p1, "<<"

    return-object p1

    :pswitch_36
    const-string p1, "instanceof"

    return-object p1

    :pswitch_37
    const-string p1, ">>>"

    return-object p1

    :pswitch_38
    const-string p1, ">"

    return-object p1

    :pswitch_39
    const-string p1, ">>"

    return-object p1

    :pswitch_3a
    const-string p1, ">="

    return-object p1

    :pswitch_3b
    const-string p1, "<="

    return-object p1

    :pswitch_3c
    const-string p1, "<"

    return-object p1

    :pswitch_3d
    const-string p1, "/"

    return-object p1

    :pswitch_3e
    const-string p1, "%"

    return-object p1

    :pswitch_3f
    const-string p1, "*"

    return-object p1

    :pswitch_40
    const-string p1, "::"

    return-object p1

    :pswitch_41
    const-string p1, "["

    return-object p1

    :pswitch_42
    const-string p1, "-"

    return-object p1

    :pswitch_43
    const-string p1, "+"

    return-object p1

    :pswitch_44
    const-string p1, "--"

    return-object p1

    :pswitch_45
    const-string p1, "++"

    return-object p1

    :pswitch_46
    const-string p1, "."

    return-object p1

    :cond_0
    const-string p1, "exports"

    return-object p1

    :cond_1
    const-string p1, "requires"

    return-object p1

    :cond_2
    const-string p1, "class"

    return-object p1

    :cond_3
    const-string p1, "]"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3b
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_20
        0x55 -> :sswitch_1f
        0x56 -> :sswitch_1e
        0x57 -> :sswitch_1d
        0x58 -> :sswitch_1c
        0x59 -> :sswitch_1b
        0x5a -> :sswitch_1a
        0x5b -> :sswitch_19
        0x5c -> :sswitch_18
        0x5d -> :sswitch_17
        0x5e -> :sswitch_16
        0x5f -> :sswitch_15
        0x60 -> :sswitch_14
        0x61 -> :sswitch_13
        0x62 -> :sswitch_12
        0x63 -> :sswitch_11
        0x64 -> :sswitch_10
        0x65 -> :sswitch_f
        0x66 -> :sswitch_e
        0x67 -> :sswitch_d
        0x68 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6a -> :sswitch_a
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_7
        0x6e -> :sswitch_6
        0x6f -> :sswitch_5
        0x70 -> :sswitch_4
        0x71 -> :sswitch_3
        0x78 -> :sswitch_2
        0x7b -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x48
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ungetToken(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    if-nez v0, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Single cell array overflow"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unicodeInitializeBuffer(I)V
    .locals 4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0xb

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-lt v2, v1, :cond_1

    add-int/lit8 v2, p1, 0xb

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public unicodeStore()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 4
    new-array v3, v3, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    iget-char v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    aput-char v2, v1, v0

    return-void
.end method

.method public unicodeStore(C)V
    .locals 5

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 9
    new-array v3, v3, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    aput-char p1, v1, v0

    return-void
.end method

.method public updateScanContext(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x25

    if-eq p1, v0, :cond_3

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x79

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->AFTER_REQUIRES:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :cond_0
    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_KEYWORD:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    goto :goto_0

    :cond_3
    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;->EXPECTING_IDENTIFIER:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanContext:Lorg/eclipse/jdt/internal/compiler/parser/Scanner$ScanContext;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
