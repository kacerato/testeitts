.class public Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
.source "SourceFile"


# instance fields
.field public defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public extendedDimensions:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method


# virtual methods
.method public generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void
.end method

.method public isAnnotationMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 0

    return-void
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printModifiers(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v3, 0x3c

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_1

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->printReturnType(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    goto :goto_3

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_8

    const-string v0, " throws "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v3, v3

    if-lt v0, v3, :cond_6

    goto :goto_5

    :cond_6
    if-lez v0, :cond_7

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_9

    const-string v0, " default "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_9
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveStatements()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->resolveStatements()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationMembersCannotHaveParameters(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationMembersCannotHaveTypeParameters(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->extendedDimensions:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalExtendedDimensions(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidAnnotationMemberType(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;)V

    :cond_6
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_8

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v3, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setDefaultValue(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
