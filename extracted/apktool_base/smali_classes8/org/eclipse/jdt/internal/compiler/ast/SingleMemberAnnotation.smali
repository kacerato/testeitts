.class public Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
.source "SourceFile"


# instance fields
.field public memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private singlePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 4
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public computeElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v0

    return-object v0
.end method

.method public memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->singlePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->singlePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->singlePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 6
    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 12
    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
