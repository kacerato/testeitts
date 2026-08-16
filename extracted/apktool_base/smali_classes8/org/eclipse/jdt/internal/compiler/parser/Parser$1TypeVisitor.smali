.class Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoverStatements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeVisitor"
.end annotation


# instance fields
.field public methodVisitor:Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field typePtr:I

.field types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    return-void
.end method

.method private endVisitType()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    return-void
.end method

.method private visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z
    .locals 5

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    if-gt v1, v2, :cond_0

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v3

    .line 8
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    aput-object p1, v0, v1

    return v3
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->endVisitType()V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->endVisitType()V

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->isDefaultConstructor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->methodVisitor:Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 4

    .line 3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->methodVisitor:Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->typePtr:I

    aget-object v2, v2, v3

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 5
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->methodVisitor:Lorg/eclipse/jdt/internal/compiler/parser/Parser$1MethodVisitor;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1TypeVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method
