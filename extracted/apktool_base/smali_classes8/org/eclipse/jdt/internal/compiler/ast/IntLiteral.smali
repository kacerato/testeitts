.class public Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;
.source "SourceFile"


# static fields
.field private static final DECIMAL_MAX_VALUE:[C

.field private static final DECIMAL_MIN_VALUE:[C

.field private static final HEXA_MINUS_ONE_VALUE:[C

.field private static final HEXA_MIN_VALUE:[C

.field private static final OCTAL_MINUS_ONE_VALUE:[C

.field private static final OCTAL_MIN_VALUE:[C

.field public static final One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;


# instance fields
.field private reducedForm:[C

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "0x80000000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->HEXA_MIN_VALUE:[C

    const-string v0, "0xffffffff"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->HEXA_MINUS_ONE_VALUE:[C

    const-string v0, "020000000000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->OCTAL_MIN_VALUE:[C

    const-string v0, "037777777777"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->OCTAL_MINUS_ONE_VALUE:[C

    const-string v0, "2147483648"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->DECIMAL_MIN_VALUE:[C

    const-string v0, "2147483647"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->DECIMAL_MAX_VALUE:[C

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x31

    const/4 v4, 0x0

    aput-char v3, v2, v4

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;-><init>([C[CIIILorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    return-void
.end method

.method public constructor <init>([C[CII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;-><init>([CII)V

    .line 2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->reducedForm:[C

    return-void
.end method

.method public constructor <init>([C[CIIILorg/eclipse/jdt/internal/compiler/impl/Constant;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;-><init>([CII)V

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->reducedForm:[C

    .line 5
    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->value:I

    .line 6
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void
.end method

.method public static buildIntLiteral([CII)Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->removePrefixZerosAndUnderscores([CZ)[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->OCTAL_MIN_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;-><init>([C[CII)V

    return-object v1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->HEXA_MIN_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;-><init>([C[CII)V

    return-object v1

    :cond_4
    :goto_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-eq v0, p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    invoke-direct {v1, p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;-><init>([C[CII)V

    return-object v1
.end method

.method private computeValue([CIII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt p4, p2, :cond_0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_0
    add-int/lit8 v1, p4, 0x1

    aget-char p4, p1, p4

    invoke-static {p4, p3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->digit(CI)I

    move-result p4

    if-gez p4, :cond_1

    return-void

    :cond_1
    mul-int/2addr v0, p3

    add-int/2addr v0, p4

    move p4, v1

    goto :goto_0
.end method


# virtual methods
.method public computeConstant()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->reducedForm:[C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    aget-char v3, v0, v2

    const/16 v4, 0x30

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/16 v7, 0xa

    const/4 v8, 0x2

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_1
    aget-char v2, v0, v3

    const/16 v4, 0x78

    if-eq v2, v4, :cond_5

    const/16 v4, 0x58

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x62

    if-eq v2, v4, :cond_4

    const/16 v4, 0x42

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    move v3, v6

    goto :goto_3

    :cond_4
    :goto_1
    move v2, v8

    move v3, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v5

    move v2, v8

    goto :goto_3

    :cond_6
    move v3, v7

    :goto_3
    if-eq v3, v8, :cond_10

    const/4 v4, -0x1

    if-eq v3, v6, :cond_c

    if-eq v3, v7, :cond_9

    if-eq v3, v5, :cond_7

    goto :goto_5

    :cond_7
    if-gt v1, v7, :cond_f

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->HEXA_MINUS_ONE_VALUE:[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_8
    invoke-direct {p0, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->computeValue([CIII)V

    return-void

    :cond_9
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->DECIMAL_MAX_VALUE:[C

    array-length v5, v4

    if-gt v1, v5, :cond_b

    array-length v5, v4

    if-ne v1, v5, :cond_a

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result v4

    if-lez v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-direct {p0, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->computeValue([CIII)V

    goto :goto_5

    :cond_b
    :goto_4
    return-void

    :cond_c
    const/16 v5, 0xc

    if-gt v1, v5, :cond_f

    if-ne v1, v5, :cond_d

    aget-char v5, v0, v2

    const/16 v6, 0x34

    if-le v5, v6, :cond_d

    return-void

    :cond_d
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->OCTAL_MINUS_ONE_VALUE:[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void

    :cond_e
    invoke-direct {p0, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->computeValue([CIII)V

    :cond_f
    :goto_5
    return-void

    :cond_10
    add-int/lit8 v4, v1, -0x2

    const/16 v5, 0x20

    if-le v4, v5, :cond_11

    return-void

    :cond_11
    invoke-direct {p0, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->computeValue([CIII)V

    return-void
.end method

.method public convertToMinValue()Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x15

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->reducedForm:[C

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    :goto_0
    array-length v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->DECIMAL_MIN_VALUE:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->reducedForm:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;-><init>([C[CII)V

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

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
