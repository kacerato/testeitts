.class Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultsAnalyser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

.field private final synthetic val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private final synthetic val$targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;->val$targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;->val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;->val$targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;->val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1NotPertientToApplicability;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1NotPertientToApplicability;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method
