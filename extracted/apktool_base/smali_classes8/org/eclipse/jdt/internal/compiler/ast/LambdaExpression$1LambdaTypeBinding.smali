.class Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getTypeBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaTypeBinding"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public computeUniqueKey()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v0

    return-object v0
.end method

.method public methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public sourceName()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LAMBDA_TYPE:[C

    return-object v0
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "()->{} implements "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
