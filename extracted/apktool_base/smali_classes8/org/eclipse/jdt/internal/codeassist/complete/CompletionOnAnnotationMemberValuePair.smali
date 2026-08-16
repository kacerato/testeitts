.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationMemberValuePair;
.super Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;
.source "SourceFile"


# instance fields
.field public completedMemberValuePair:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationMemberValuePair;->completedMemberValuePair:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz v0, :cond_2

    array-length v0, v0

    :goto_0
    const/16 v2, 0x2c

    if-lt v1, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationMemberValuePair;->completedMemberValuePair:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationMemberValuePair;->completedMemberValuePair:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_1
    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1
.end method
