.class Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoverStatements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodVisitor"
.end annotation


# instance fields
.field enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field typePtr:I

.field public typeVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

.field types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    return-void
.end method

.method private endVisitMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v10, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    iget-object v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-object v4, p1

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseStatements(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;II[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iput-object v10, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object v9, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    :goto_1
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    aget-object p1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typeVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    invoke-virtual {p1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z
    .locals 4

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 6
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    aput-object p1, v0, v1

    return v3
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->endVisitMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 11

    .line 2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    .line 7
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    .line 8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v10, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 9
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 10
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 11
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    .line 12
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    .line 13
    iget-object v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-object v7, v1

    .line 14
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseStatements(Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;II[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 15
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iput-object v10, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 16
    iput-object v9, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    :goto_1
    if-lt v2, v0, :cond_2

    return-void

    .line 17
    :cond_2
    aget-object p1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typeVisitor:Lorg/eclipse/jdt/internal/compiler/ASTVisitor;

    invoke-virtual {p1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->endVisitMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    const/4 p1, -0x1

    .line 1
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 0

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    .line 3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->typePtr:I

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method
