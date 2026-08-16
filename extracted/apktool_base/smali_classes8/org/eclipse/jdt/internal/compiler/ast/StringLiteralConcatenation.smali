.class public Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;
.super Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;
.source "SourceFile"


# static fields
.field private static final INITIAL_SIZE:I = 0x5


# instance fields
.field public counter:I

.field public literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>(II)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->extendsWith(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;

    return-void
.end method


# virtual methods
.method public extendsWith(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;)Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;
    .locals 5

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    add-int/lit8 v2, v1, 0x5

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v1, v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v2, v2

    add-int/2addr v2, v1

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    array-length v4, v0

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    const-string v0, "StringLiteralConcatenation{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, "+\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public source()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->counter:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;->literals:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/StringLiteralConcatenation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
