.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;
.super Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
.source "SourceFile"


# instance fields
.field public isParameter:Z

.field public potentialAnnotatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;


# direct methods
.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    filled-new-array {p3}, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method
