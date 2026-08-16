.class Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

.field private final synthetic val$leafType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private final synthetic val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field private final synthetic val$shouldExit:[Z

.field private final synthetic val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Z)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$leafType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$shouldExit:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$leafType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$leafType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$leafType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$leafType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v3, v4, v2, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$shouldExit:[Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$requiredType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;->val$valueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    :goto_1
    return-void
.end method
