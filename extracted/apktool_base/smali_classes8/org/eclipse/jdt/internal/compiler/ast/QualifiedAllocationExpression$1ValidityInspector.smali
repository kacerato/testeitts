.class Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->validate(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidityInspector"
.end annotation


# instance fields
.field private noErrors:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

.field private final synthetic val$allocationType:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$allocationType:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->noErrors:Z

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$allocationType:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->noErrors:Z

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/c;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ast/c;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$allocationType:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->anonymousDiamondWithNonDenotableTypeArguments(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->noErrors:Z

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 5

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/4 v4, 0x2

    invoke-direct {v2, v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->noErrors:Z

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z
    .locals 2

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->val$allocationType:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->anonymousDiamondWithNonDenotableTypeArguments(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->noErrors:Z

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
