.class public Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;
.source "SourceFile"


# instance fields
.field value:C


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;-><init>([CII)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->computeValue()V

    return-void
.end method

.method private computeValue()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    const/4 v1, 0x1

    aget-char v1, v0, v1

    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x27

    if-eq v0, v1, :cond_9

    if-eq v0, v2, :cond_8

    const/16 v2, 0x62

    const/16 v3, 0x8

    if-eq v0, v2, :cond_7

    const/16 v2, 0x66

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_5

    const/16 v2, 0x72

    if-eq v0, v2, :cond_4

    const/16 v2, 0x74

    if-eq v0, v2, :cond_3

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getNumericValue(C)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    const/4 v4, 0x3

    aget-char v2, v2, v4

    if-eq v2, v1, :cond_2

    mul-int/2addr v0, v3

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getNumericValue(C)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    const/4 v3, 0x4

    aget-char v2, v2, v3

    if-eq v2, v1, :cond_1

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getNumericValue(C)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    int-to-char v0, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_2
    int-to-char v0, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_6
    const/16 v0, 0xc

    iput-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_7
    iput-char v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_8
    iput-char v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_9
    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    goto :goto_0

    :cond_a
    iput-char v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    :goto_0
    return-void
.end method


# virtual methods
.method public computeConstant()V
    .locals 1

    iget-char v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void
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

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
