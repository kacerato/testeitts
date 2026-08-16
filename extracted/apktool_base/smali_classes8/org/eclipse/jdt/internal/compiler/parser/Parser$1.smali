.class Lorg/eclipse/jdt/internal/compiler/parser/Parser$1;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseClassBodyDeclarations([CIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field private final synthetic val$bodyDeclarations:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1;->this$0:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1;->val$bodyDeclarations:Ljava/util/List;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 0

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1;->val$bodyDeclarations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1;->val$bodyDeclarations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser$1;->val$bodyDeclarations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method
