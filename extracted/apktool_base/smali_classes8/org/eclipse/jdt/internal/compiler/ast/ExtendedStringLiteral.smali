.class public Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->lineNumber:I

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>([CIII)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;->extendWith(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)V
    .locals 3

    .line 3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->lineNumber:I

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>([CIII)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;->extendWith(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;

    return-void
.end method


# virtual methods
.method public extendWith(Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 2
    new-array v2, v2, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    iget-char v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CharLiteral;->value:C

    aput-char v2, v0, v1

    .line 4
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object p0
.end method

.method public extendWith(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;
    .locals 5

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v1, v0

    .line 6
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v2, v2

    add-int/2addr v2, v1

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v4, v0

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object p0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "ExtendedStringLiteral{"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ExtendedStringLiteral;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
