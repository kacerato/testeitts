.class public Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

.field public name:[C

.field public value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz p1, :cond_0

    iget p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string p1, " = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-void

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_3

    instance-of p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-void

    :cond_3
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeArrayInitializer(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v2, 0x1

    new-array v10, v2, [Z

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v1

    move-object v6, p2

    move-object v7, v0

    move-object v8, p1

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$2;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Z)V

    invoke-virtual {p1, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->deferCheck(Ljava/lang/Runnable;)Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_7

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    aget-boolean p2, v10, v3

    if-eqz p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x2

    if-eq p2, v4, :cond_19

    const/4 v4, 0x3

    if-eq p2, v4, :cond_19

    const/4 v4, 0x4

    if-eq p2, v4, :cond_19

    const/4 v4, 0x5

    if-eq p2, v4, :cond_19

    const/16 v4, 0x10

    if-eq p2, v4, :cond_15

    packed-switch p2, :pswitch_data_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    goto/16 :goto_8

    :cond_8
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_c

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_1f

    array-length v0, p2

    :goto_2
    if-lt v3, v0, :cond_9

    goto/16 :goto_8

    :cond_9
    aget-object v1, p2, v3

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {v4, v5, v6, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    goto :goto_3

    :cond_a
    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v4, :cond_b

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v5

    if-ne v5, v2, :cond_b

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {v4, v5, v6, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    :cond_b
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_e

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    if-ne v0, v2, :cond_1f

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    goto/16 :goto_8

    :cond_d
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeArrayInitializer(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto/16 :goto_8

    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_8

    :cond_10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v1, :cond_14

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_1f

    array-length v1, p2

    :goto_4
    if-lt v3, v1, :cond_11

    goto/16 :goto_8

    :cond_11
    aget-object v2, p2, v3

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-nez v4, :cond_12

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v4, :cond_13

    :cond_12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {v4, v5, v6, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_14
    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez p2, :cond_1f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_8

    :cond_15
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_18

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_1f

    array-length v0, p2

    :goto_5
    if-lt v3, v0, :cond_16

    goto/16 :goto_8

    :cond_16
    aget-object v1, p2, v3

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    if-nez v2, :cond_17

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {v2, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeClassLiteral(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    if-nez p2, :cond_1f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeClassLiteral(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_8

    :cond_19
    :pswitch_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_1d

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_1f

    array-length v0, p2

    move v1, v3

    :goto_6
    if-lt v1, v0, :cond_1a

    goto :goto_8

    :cond_1a
    aget-object v2, p2, v1

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_1b

    goto :goto_7

    :cond_1b
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v2, v4, :cond_1c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    aget-object v6, p2, v1

    invoke-virtual {v2, v4, v5, v6, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    :cond_1c
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne p2, v0, :cond_1f

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeArrayInitializer(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_8

    :cond_1e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationValueMustBeConstant(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/Expression;Z)V

    :cond_1f
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 4
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 5
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 8
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
