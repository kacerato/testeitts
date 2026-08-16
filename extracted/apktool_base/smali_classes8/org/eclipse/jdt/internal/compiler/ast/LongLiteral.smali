.class public Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;
.source "SourceFile"


# static fields
.field private static final DECIMAL_MAX_VALUE:[C

.field private static final DECIMAL_MIN_VALUE:[C

.field private static final HEXA_MINUS_ONE_VALUE:[C

.field private static final HEXA_MIN_VALUE:[C

.field private static final OCTAL_MINUS_ONE_VALUE:[C

.field private static final OCTAL_MIN_VALUE:[C


# instance fields
.field private reducedForm:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0x8000000000000000L"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->HEXA_MIN_VALUE:[C

    const-string v0, "0xffffffffffffffffL"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->HEXA_MINUS_ONE_VALUE:[C

    const-string v0, "01000000000000000000000L"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->OCTAL_MIN_VALUE:[C

    const-string v0, "01777777777777777777777L"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->OCTAL_MINUS_ONE_VALUE:[C

    const-string v0, "9223372036854775808L"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->DECIMAL_MIN_VALUE:[C

    const-string v0, "9223372036854775807L"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->DECIMAL_MAX_VALUE:[C

    return-void
.end method

.method public constructor <init>([C[CII)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;-><init>([CII)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->reducedForm:[C

    return-void
.end method

.method public static buildLongLiteral([CII)Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->removePrefixZerosAndUnderscores([CZ)[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->OCTAL_MIN_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;-><init>([C[CII)V

    return-object v1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->HEXA_MIN_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;-><init>([C[CII)V

    return-object v1

    :cond_4
    :goto_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;

    if-eq v0, p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;-><init>([C[CII)V

    return-object v1
.end method

.method private computeValue([CIII)V
    .locals 5

    const-wide/16 v0, 0x0

    :goto_0
    if-lt p4, p2, :cond_0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_0
    add-int/lit8 v2, p4, 0x1

    aget-char p4, p1, p4

    invoke-static {p4, p3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->digit(CI)I

    move-result p4

    if-gez p4, :cond_1

    return-void

    :cond_1
    int-to-long v3, p3

    mul-long/2addr v0, v3

    int-to-long v3, p4

    add-long/2addr v0, v3

    move p4, v2

    goto :goto_0
.end method


# virtual methods
.method public computeConstant()V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->reducedForm:[C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    :goto_0
    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aget-char v4, v0, v3

    const/16 v5, 0x30

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_1
    aget-char v5, v0, v4

    const/16 v10, 0x78

    if-eq v5, v10, :cond_5

    const/16 v10, 0x58

    if-ne v5, v10, :cond_2

    goto :goto_2

    :cond_2
    const/16 v10, 0x62

    if-eq v5, v10, :cond_4

    const/16 v10, 0x42

    if-ne v5, v10, :cond_3

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_3

    :cond_4
    :goto_1
    move v4, v9

    move v5, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v6

    move v4, v9

    goto :goto_3

    :cond_6
    move v4, v3

    move v5, v8

    :goto_3
    if-eq v5, v9, :cond_f

    const-wide/16 v9, -0x1

    if-eq v5, v7, :cond_c

    if-eq v5, v8, :cond_9

    if-eq v5, v6, :cond_7

    goto :goto_5

    :cond_7
    const/16 v3, 0x13

    if-gt v1, v3, :cond_11

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->HEXA_MINUS_ONE_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_8
    invoke-direct {p0, v0, v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->computeValue([CIII)V

    goto :goto_5

    :cond_9
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->DECIMAL_MAX_VALUE:[C

    array-length v7, v6

    if-gt v1, v7, :cond_b

    array-length v7, v6

    if-ne v1, v7, :cond_a

    invoke-static {v0, v6, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[CII)I

    move-result v1

    if-lez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-direct {p0, v0, v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->computeValue([CIII)V

    goto :goto_5

    :cond_b
    :goto_4
    return-void

    :cond_c
    const/16 v3, 0x18

    if-gt v1, v3, :cond_11

    if-ne v1, v3, :cond_d

    aget-char v1, v0, v4

    const/16 v3, 0x31

    if-le v1, v3, :cond_d

    return-void

    :cond_d
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->OCTAL_MINUS_ONE_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_e
    invoke-direct {p0, v0, v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->computeValue([CIII)V

    goto :goto_5

    :cond_f
    add-int/lit8 v1, v1, -0x3

    const/16 v3, 0x40

    if-le v1, v3, :cond_10

    return-void

    :cond_10
    invoke-direct {p0, v0, v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->computeValue([CIII)V

    :cond_11
    :goto_5
    return-void
.end method

.method public convertToMinValue()Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x15

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->reducedForm:[C

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    :goto_0
    array-length v1, v0

    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->DECIMAL_MIN_VALUE:[C

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;->reducedForm:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;-><init>([C[CII)V

    return-object v0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 1

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_0
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public literalType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
