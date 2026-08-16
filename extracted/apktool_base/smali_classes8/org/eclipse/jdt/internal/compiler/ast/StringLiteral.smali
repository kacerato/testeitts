.class public Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/Literal;
.source "SourceFile"


# instance fields
.field lineNumber:I

.field source:[C


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;-><init>(II)V

    return-void
.end method

.method public constructor <init>([CIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>(II)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    add-int/lit8 p4, p4, -0x1

    .line 3
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->lineNumber:I

    return-void
.end method


# virtual methods
.method public computeConstant()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void
.end method

.method public extendWith(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)V

    return-object v0
.end method

.method public extendWith(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;
    .locals 1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)V

    return-object v0
.end method

.method public extendsWith(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)V

    return-object v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    :cond_0
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public literalType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    const/16 p1, 0x22

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    aget-char v1, v1, v0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->appendEscapedChar(Ljava/lang/StringBuffer;CZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public source()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
