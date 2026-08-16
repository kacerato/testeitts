.class public abstract Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;
.implements Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;


# static fields
.field public static final ACCURATE_MATCH:I = 0x3

.field public static final ALL_CONTAINER:I = 0xf

.field public static final CAMELCASE_FLAVOR:I = 0x100

.field public static final CLASS_CONTAINER:I = 0x2

.field public static final COMPILATION_UNIT_CONTAINER:I = 0x1

.field public static final ERASURE_MATCH:I = 0x4

.field public static final EXACT_FLAVOR:I = 0x10

.field public static final FIELD_CONTAINER:I = 0x8

.field public static final FLAVORS_MASK:I = -0x10

.field public static final IMPOSSIBLE_MATCH:I = 0x0

.field public static final INACCURATE_MATCH:I = 0x1

.field public static final MATCH_LEVEL_MASK:I = 0xf

.field public static final METHOD_CONTAINER:I = 0x4

.field public static final NO_FLAVOR:I = 0x0

.field public static final OVERRIDDEN_METHOD_FLAVOR:I = 0x800

.field public static final PATTERN_FLAVOR:I = 0x40

.field public static final POSSIBLE_MATCH:I = 0x2

.field public static final PREFIX_FLAVOR:I = 0x20

.field public static final RAW_MASK:I = 0x30

.field public static final REGEXP_FLAVOR:I = 0x80

.field public static final RULE_MASK:I = 0x30

.field public static final SUB_INVOCATION_FLAVOR:I = 0x400

.field public static final SUPERTYPE_REF_FLAVOR:I = 0x1000

.field public static final SUPER_INVOCATION_FLAVOR:I = 0x200


# instance fields
.field flavors:I

.field protected isCaseSensitive:Z

.field protected isEquivalentMatch:Z

.field protected isErasureMatch:Z

.field match:Lorg/eclipse/jdt/core/search/SearchMatch;

.field protected matchMode:I

.field protected mayBeGeneric:Z

.field protected mustResolve:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->flavors:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isErasureMatch:Z

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isEquivalentMatch:Z

    and-int/lit16 v0, v1, 0x187

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchMode:I

    iget-boolean p1, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    return-void
.end method

.method public static patternLocator(Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;)V

    return-object v0

    :sswitch_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;)V

    return-object v0

    :sswitch_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;)V

    return-object v0

    :sswitch_3
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;)V

    return-object v0

    :sswitch_4
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;)V

    return-object v0

    :sswitch_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;)V

    return-object v0

    :sswitch_6
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;)V

    return-object v0

    :sswitch_7
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;)V

    return-object v0

    :sswitch_8
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;)V

    return-object v0

    :sswitch_9
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;)V

    return-object v0

    :sswitch_a
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static qualifiedPattern([C[C)[C
    .locals 1

    const/16 v0, 0x2e

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {p1, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {p1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p1, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static qualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result p0

    const/16 v1, 0x2e

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object p0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :array_0
    .array-data 2
        0x2es
        0x31s
        0x2es
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public fineGrain()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQualifiedPattern([C[C)[C
    .locals 1

    const/16 v0, 0x2e

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    return-object p1

    :cond_2
    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    return-object p1
.end method

.method public getQualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object p1

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedSourceName()[C

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :array_0
    .array-data 2
        0x2es
        0x31s
        0x2es
    .end array-data
.end method

.method public getTypeNameBinding(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 0

    return-void
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 4
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 6
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 7
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 8
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 9
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 10
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 11
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 12
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 13
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 14
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 15
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 16
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 17
    const/4 p1, 0x0

    return p1
.end method

.method public matchContainer()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createImportHandle(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    move v6, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_1
    return-void
.end method

.method public matchNameValue([C[C)I
    .locals 7

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    array-length v2, p2

    if-nez v2, :cond_3

    array-length p1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    array-length v0, p1

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    aget-char v3, p1, v1

    aget-char v4, p2, v1

    if-eq v3, v4, :cond_5

    move v3, v1

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_6

    move v4, v2

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    array-length v5, p2

    array-length v6, p1

    if-lt v5, v6, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchMode:I

    if-eqz v6, :cond_f

    const/4 v4, 0x2

    if-eq v6, v2, :cond_e

    if-eq v6, v4, :cond_c

    const/4 v0, 0x4

    if-eq v6, v0, :cond_b

    const/16 v0, 0x80

    if-eq v6, v0, :cond_9

    const/16 v0, 0x100

    if-eq v6, v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {p1, p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_9
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_a
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    if-nez v0, :cond_10

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_c
    if-nez v0, :cond_d

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :cond_d
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_e
    if-eqz v5, :cond_10

    if-eqz v3, :cond_10

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_f
    if-eqz v4, :cond_10

    if-eqz v3, :cond_10

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x12

    return p1

    :cond_10
    :goto_3
    return v1
.end method

.method public matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p5, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_0
    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->referenceType()I

    move-result v0

    .line 3
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 p3, 0xe

    if-eq v0, p3, :cond_1

    const/16 p3, 0xf

    if-eq v0, p3, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p3, v6

    add-int/lit8 v5, p3, 0x1

    move-object v1, p5

    move-object v2, p2

    move v3, p4

    move v4, v6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeParameterReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    goto/16 :goto_0

    .line 5
    :cond_1
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p3, v6

    add-int/lit8 v5, p3, 0x1

    move-object v1, p5

    move-object v2, p2

    move v3, p4

    move v4, v6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newLocalVariableReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    goto/16 :goto_0

    .line 6
    :cond_2
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v6

    add-int/lit8 v7, v0, 0x1

    const/4 v3, 0x0

    move-object v1, p5

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    goto :goto_0

    .line 7
    :cond_3
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v6

    move v6, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v6

    move v6, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newModuleReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    goto :goto_0

    .line 9
    :cond_5
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr p3, v6

    add-int/lit8 v5, p3, 0x1

    move-object v1, p5

    move-object v2, p2

    move v3, p4

    move v4, v6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newPackageReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/PackageReferenceMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 10
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_6
    return-void
.end method

.method public matchesName([C[C)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchNameValue([C[C)I

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public matchesTypeReference([CLorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    array-length v2, v1

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    if-lez p2, :cond_3

    array-length v1, v0

    add-int/2addr p2, v1

    new-array v2, p2, [C

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v1, p2, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x5b

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x2

    const/16 v3, 0x5d

    aput-char v3, v2, v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p1

    return p1
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 6

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1
.end method

.method public recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    return-void
.end method

.method public referenceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public resolveLevelForType([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 5

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_a

    .line 17
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_4

    .line 18
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    .line 19
    :cond_2
    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v1, :cond_7

    .line 20
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    .line 21
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v1

    move p2, v2

    :goto_0
    if-lt v2, v3, :cond_3

    return p2

    :cond_3
    aget-object v4, v1, v2

    .line 22
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v4

    if-ne v4, v0, :cond_4

    return v4

    :cond_4
    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    move p2, v4

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->qualifiedPackageName()[C

    move-result-object v1

    .line 24
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object p2

    .line 25
    array-length v3, v1

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x2e

    .line 26
    invoke-static {v1, p2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    .line 27
    :goto_2
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_3
    return v0

    :cond_a
    :goto_4
    const/4 p1, 0x1

    return p1
.end method

.method public resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->getQualifiedPattern([C[C)[C

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    if-eqz p3, :cond_c

    .line 3
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->getQualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 7
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->getQualifiedSourceName(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C

    move-result-object p2

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object p2

    :goto_2
    const/4 p3, 0x0

    if-nez p2, :cond_6

    return p3

    .line 9
    :cond_6
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/16 v3, 0x80

    if-eq v0, v3, :cond_8

    const/16 v3, 0x100

    if-eq v0, v3, :cond_7

    .line 10
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    .line 11
    :cond_7
    array-length v0, p1

    if-lez v0, :cond_b

    array-length v0, p2

    if-lez v0, :cond_b

    aget-char v0, p1, p3

    aget-char v3, p2, p3

    if-ne v0, v3, :cond_b

    .line 12
    invoke-static {p1, p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    .line 13
    :cond_8
    array-length v0, p1

    if-lez v0, :cond_b

    array-length v0, p2

    if-lez v0, :cond_b

    aget-char v0, p1, p3

    aget-char v2, p2, p3

    if-ne v0, v2, :cond_b

    .line 14
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 15
    :cond_9
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    if-nez v0, :cond_b

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    .line 16
    :cond_a
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return p3

    :cond_c
    :goto_3
    return v0
.end method

.method public resolveLevelForType([C[C[[[CILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    const/4 v4, 0x1

    move-object/from16 v5, p1

    .line 28
    invoke-virtual {v6, v5, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return v8

    :cond_0
    if-eqz v2, :cond_26

    if-eqz v3, :cond_26

    .line 29
    array-length v5, v3

    if-eqz v5, :cond_26

    array-length v5, v3

    if-lt v1, v5, :cond_1

    goto/16 :goto_c

    .line 30
    :cond_1
    iget-boolean v5, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isErasureMatch:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    move v9, v5

    goto :goto_0

    :cond_2
    move v9, v8

    .line 31
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    instance-of v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_3

    .line 33
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 34
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    goto :goto_1

    .line 35
    :cond_3
    instance-of v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v0, :cond_4

    .line 36
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    .line 37
    iget-boolean v2, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v10

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 39
    :goto_1
    aget-object v0, v3, v1

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    if-eqz v10, :cond_5

    .line 40
    array-length v1, v10

    if-lez v1, :cond_5

    .line 41
    array-length v1, v10

    array-length v0, v0

    if-eq v1, v0, :cond_5

    return v8

    :cond_5
    return v7

    .line 42
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v5

    if-eqz v5, :cond_7

    return v7

    .line 43
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v5

    if-nez v5, :cond_a

    .line 45
    aget-object v0, v3, v1

    if-eqz v0, :cond_9

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v7, v8

    :cond_9
    :goto_2
    return v7

    .line 46
    :cond_a
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 47
    aget-object v5, v3, v1

    if-eqz v5, :cond_22

    array-length v11, v5

    if-lez v11, :cond_22

    .line 48
    iget-object v11, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v11, :cond_22

    array-length v12, v11

    if-lez v12, :cond_22

    .line 49
    array-length v5, v5

    .line 50
    array-length v11, v11

    if-eq v11, v5, :cond_b

    return v8

    :cond_b
    move v11, v8

    :goto_3
    if-lt v11, v5, :cond_c

    goto/16 :goto_8

    .line 51
    :cond_c
    aget-object v12, v3, v1

    aget-object v12, v12, v11

    .line 52
    iget-object v13, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v13, v13, v11

    .line 53
    aget-char v14, v12, v8

    const/16 v15, 0x2a

    if-eq v14, v15, :cond_21

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_d

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_21

    goto :goto_4

    .line 54
    :cond_d
    array-length v14, v12

    invoke-static {v12, v4, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v12

    .line 55
    :goto_4
    invoke-static {v12}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v12

    .line 56
    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    if-nez v14, :cond_e

    invoke-static {v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v12

    :cond_e
    const/4 v14, 0x2

    .line 57
    new-array v14, v14, [C

    fill-array-data v14, :array_0

    invoke-static {v14, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->contains([C[C)Z

    move-result v14

    .line 58
    instance-of v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz v15, :cond_f

    .line 59
    move-object v15, v13

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v15, :cond_f

    move-object v13, v15

    .line 60
    :cond_f
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 61
    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 62
    iget v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v15, :cond_21

    if-eq v15, v4, :cond_16

    .line 63
    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 64
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v15

    iget-boolean v10, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v15, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v10

    if-nez v10, :cond_21

    .line 65
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v10

    iget-boolean v15, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v10, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v10

    if-eqz v10, :cond_10

    goto/16 :goto_7

    :cond_10
    if-eqz v14, :cond_11

    return v9

    .line 66
    :cond_11
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    :goto_5
    if-nez v10, :cond_12

    return v9

    .line 67
    :cond_12
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v13

    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v13

    if-nez v13, :cond_21

    .line 68
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v13

    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v13

    if-eqz v13, :cond_13

    goto/16 :goto_7

    .line 69
    :cond_13
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 70
    :cond_14
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v13

    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v13

    if-eqz v13, :cond_15

    goto/16 :goto_7

    .line 71
    :cond_15
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    goto :goto_5

    :cond_16
    if-eqz v14, :cond_21

    return v9

    .line 72
    :cond_17
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v10

    iget-boolean v15, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v10, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v10

    if-nez v10, :cond_21

    .line 73
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v10

    iget-boolean v15, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v10, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_7

    .line 74
    :cond_18
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 75
    :cond_19
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v10

    iget-boolean v15, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v10, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_7

    :cond_1a
    if-eqz v14, :cond_1b

    return v9

    .line 76
    :cond_1b
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    .line 77
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v13

    if-eqz v13, :cond_1c

    return v9

    .line 78
    :cond_1c
    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    :goto_6
    if-nez v10, :cond_1d

    return v9

    .line 79
    :cond_1d
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v13

    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v13

    if-nez v13, :cond_21

    .line 80
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v13

    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v13

    if-eqz v13, :cond_1e

    goto :goto_7

    .line 81
    :cond_1e
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v13

    if-nez v13, :cond_1f

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 82
    :cond_1f
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v13

    iget-boolean v14, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v12, v13, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v13

    if-eqz v13, :cond_20

    goto :goto_7

    .line 83
    :cond_20
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    goto :goto_6

    :cond_21
    :goto_7
    add-int/2addr v11, v4

    goto/16 :goto_3

    .line 84
    :cond_22
    :goto_8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 85
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v2

    if-eqz v2, :cond_26

    array-length v2, v3

    if-ge v1, v2, :cond_26

    if-eqz v0, :cond_26

    const/16 v2, 0x2e

    .line 86
    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_23

    const/4 v11, 0x0

    goto :goto_9

    .line 87
    :cond_23
    invoke-static {v0, v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v11

    :goto_9
    if-ne v2, v10, :cond_24

    :goto_a
    move-object v2, v0

    goto :goto_b

    :cond_24
    add-int/2addr v2, v4

    .line 88
    array-length v10, v0

    invoke-static {v0, v2, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    goto :goto_a

    :goto_b
    add-int/2addr v4, v1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v11

    move-object/from16 v3, p3

    .line 89
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[C[[[CILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-ne v0, v9, :cond_25

    return v9

    :cond_25
    if-nez v0, :cond_26

    return v8

    :cond_26
    :goto_c
    return v7

    nop

    :array_0
    .array-data 2
        0x2as
        0x3fs
    .end array-data
.end method

.method public setFlavors(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->flavors:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SearchPattern"

    return-object v0
.end method

.method public updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 7

    .line 1
    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 2
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_0
    return-void
.end method

.method public updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 8

    .line 3
    iget-object v0, p5, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    .line 4
    :cond_1
    array-length v2, p2

    if-lt p4, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 5
    :goto_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    .line 7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->isRaw()Z

    move-result v5

    if-nez v5, :cond_5

    .line 8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRaw(Z)V

    :cond_5
    if-nez v2, :cond_9

    if-eqz p2, :cond_9

    if-nez v4, :cond_8

    if-eqz p3, :cond_8

    if-eqz v3, :cond_8

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    .line 10
    array-length v4, v3

    .line 11
    array-length v5, v2

    if-ne v4, v5, :cond_9

    :goto_3
    if-lt v0, v4, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    aget-object v5, v3, v0

    aget-object v6, v2, v0

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 13
    aget-object v0, p2, p4

    .line 14
    invoke-virtual {p0, v3, p5, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;[[CZ)V

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :cond_8
    aget-object v0, p2, p4

    .line 16
    invoke-virtual {p0, v3, p5, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;[[CZ)V

    .line 17
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19
    :cond_a
    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    add-int/lit8 v6, p4, 0x1

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_b
    return-void
.end method

.method public updateMatch([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;[[CZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 20
    iget-object v4, v2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v5, v4

    goto :goto_0

    .line 21
    :cond_1
    array-length v5, v3

    :goto_0
    if-nez v1, :cond_2

    move v6, v4

    goto :goto_1

    .line 22
    :cond_2
    array-length v6, v1

    .line 23
    :goto_1
    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v7

    .line 24
    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->isRaw()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    and-int/lit8 v7, v7, -0x41

    :cond_3
    const/16 v8, 0x10

    if-eqz p4, :cond_4

    move v7, v8

    :cond_4
    if-ne v5, v6, :cond_1f

    .line 25
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->isRaw()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p4, :cond_5

    .line 26
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    return-void

    :cond_5
    if-eqz v1, :cond_1e

    if-nez v3, :cond_6

    goto/16 :goto_8

    :cond_6
    if-nez p4, :cond_1d

    .line 27
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->isRaw()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->isEquivalent()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->isExact()Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_7
    move v5, v4

    :goto_2
    if-lt v5, v6, :cond_8

    goto/16 :goto_7

    .line 28
    :cond_8
    aget-object v9, v1, v5

    .line 29
    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz v10, :cond_9

    .line 30
    move-object v10, v9

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v10, :cond_9

    move-object v9, v10

    .line 31
    :cond_9
    aget-object v10, v3, v5

    .line 32
    aget-char v11, v10, v4

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_1b

    const/16 v13, 0x2d

    const/16 v14, 0x2b

    const/4 v4, 0x1

    if-eq v11, v14, :cond_b

    if-eq v11, v13, :cond_a

    const/16 v16, -0x1

    move-object v15, v10

    move/from16 v17, v16

    goto :goto_3

    .line 33
    :cond_a
    array-length v15, v10

    invoke-static {v10, v4, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v15

    const/16 v17, 0x2

    goto :goto_3

    .line 34
    :cond_b
    array-length v15, v10

    invoke-static {v10, v4, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v15

    move/from16 v17, v4

    .line 35
    :goto_3
    invoke-static {v15}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v15

    .line 36
    invoke-virtual {v2, v10, v15}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getType(Ljava/lang/Object;[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    if-nez v10, :cond_e

    .line 37
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 38
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 39
    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v4, :cond_d

    :cond_c
    :goto_4
    and-int/lit8 v4, v7, -0x41

    move v7, v4

    goto/16 :goto_6

    .line 40
    :cond_d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    return-void

    :cond_e
    if-eq v11, v12, :cond_c

    if-eq v11, v14, :cond_16

    if-eq v11, v13, :cond_12

    .line 41
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 42
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 43
    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v11, :cond_c

    if-eq v11, v4, :cond_10

    const/4 v4, 0x2

    if-eq v11, v4, :cond_f

    goto/16 :goto_5

    .line 44
    :cond_f
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_4

    .line 45
    :cond_10
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_c

    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_4

    .line 46
    :cond_11
    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_6

    .line 47
    :cond_12
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 48
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 49
    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    move/from16 v11, v17

    if-ne v4, v11, :cond_13

    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    .line 50
    :cond_13
    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v4, :cond_c

    const/4 v11, 0x2

    if-eq v4, v11, :cond_14

    goto :goto_5

    .line 51
    :cond_14
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_c

    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_4

    .line 52
    :cond_15
    invoke-virtual {v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_4

    :cond_16
    move/from16 v11, v17

    .line 53
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 54
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 55
    iget v12, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne v12, v11, :cond_17

    iget-object v11, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_6

    .line 56
    :cond_17
    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v11, :cond_c

    if-eq v11, v4, :cond_18

    goto :goto_5

    .line 57
    :cond_18
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_4

    .line 58
    :cond_19
    invoke-virtual {v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_4

    .line 59
    :cond_1a
    :goto_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    return-void

    .line 60
    :cond_1b
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 61
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 62
    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-nez v4, :cond_c

    :cond_1c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 63
    :cond_1d
    :goto_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    return-void

    .line 64
    :cond_1e
    :goto_8
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    return-void

    :cond_1f
    if-nez v5, :cond_21

    .line 65
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchMatch;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz p4, :cond_23

    .line 66
    :cond_20
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    and-int/lit8 v2, v7, -0x41

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto :goto_9

    :cond_21
    if-nez v6, :cond_22

    .line 67
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    and-int/lit8 v2, v7, -0x41

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto :goto_9

    .line 68
    :cond_22
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_23
    :goto_9
    return-void
.end method
