.class public Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
.source "SourceFile"


# static fields
.field public static final FAKE_USED:I = 0x2

.field public static final UNUSED:I = 0x0

.field public static final USED:I = 0x1


# instance fields
.field public closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

.field public declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

.field public declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public initializationCount:I

.field public initializationPCs:[I

.field public resolvedPosition:I

.field public uninitializedInMethod:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;",
            ">;"
        }
    .end annotation
.end field

.field public useFlag:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    .line 8
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 1

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-eqz p4, :cond_1

    .line 3
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 p3, 0x400

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    .line 4
    :cond_1
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 p3, 0x800

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    return-void
.end method

.method private getScopeKey(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->scopeIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->getScopeKey(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Ljava/lang/StringBuffer;)V

    const/16 p1, 0x23

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public computeUniqueKey(Z)[C
    .locals 8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    :goto_0
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeUniqueKey(Z)[C

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeUniqueKey(Z)[C

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->getScopeKey(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Ljava/lang/StringBuffer;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move v3, v1

    move v4, v3

    :goto_2
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->localIndex:I

    if-lt v3, v5, :cond_4

    goto :goto_3

    :cond_4
    aget-object v5, v2, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne p0, v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_3
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isParameter()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_4
    if-gtz v4, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move v3, v1

    :goto_5
    array-length v4, v2

    const/4 v5, -0x1

    if-lt v3, v4, :cond_a

    move v3, v5

    goto :goto_6

    :cond_a
    aget-object v4, v2, v3

    if-ne v4, p0, :cond_b

    :goto_6
    if-le v3, v5, :cond_c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v2, v0, [C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const-wide v1, 0x200000000L

    const-wide/16 v3, 0x0

    if-nez v0, :cond_4

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v5, v1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getCompilerAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_2
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_5
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    const-wide/16 v1, 0x400

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v3, 0x1

    invoke-static {v2, v1, p0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_6
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public isCatchParameter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParameter()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecret()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUninitializedIn(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->uninitializedInMethod:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final kind()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public markAsUninitializedIn(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->uninitializedInMethod:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->uninitializedInMethod:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->uninitializedInMethod:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public markInitialized()V
    .locals 0

    return-void
.end method

.method public markReferenced()V
    .locals 0

    return-void
.end method

.method public recordInitializationEndPC(I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aput p1, v0, v1

    :cond_0
    return-void
.end method

.method public recordInitializationStartPC(I)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    const/4 v2, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    if-ne v3, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    aput v2, v0, p1

    return-void

    :cond_2
    shl-int/lit8 v3, v1, 0x1

    array-length v4, v0

    if-ne v3, v4, :cond_3

    shl-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    aput v2, v0, v3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    return-void
.end method

.method public resetInitializations()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    return-void
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    const-string v2, "]"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[pos: fake_used]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[pos: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[pos: unused]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[id:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[pc: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lt v1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    if-lez v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    shl-int/lit8 v5, v1, 0x1

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    add-int/2addr v5, v3

    aget v0, v0, v5

    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    const-string v0, "?"

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-object v0
.end method
