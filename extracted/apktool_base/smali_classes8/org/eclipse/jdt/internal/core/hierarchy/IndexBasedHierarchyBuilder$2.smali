.class Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;
.super Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->legacySearchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$binariesFromIndexMatches:Ljava/util/Map;

.field private final synthetic val$foundSuperNames:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field private final synthetic val$pathRequestor:Lorg/eclipse/jdt/internal/core/IPathRequestor;

.field private final synthetic val$queue:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/IPathRequestor;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$pathRequestor:Lorg/eclipse/jdt/internal/core/IPathRequestor;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$binariesFromIndexMatches:Ljava/util/Map;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$foundSuperNames:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$queue:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z
    .locals 9

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->enclosingTypeName:[C

    sget-object p4, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C

    const/4 v0, 0x1

    if-ne p3, p4, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$pathRequestor:Lorg/eclipse/jdt/internal/core/IPathRequestor;

    invoke-interface {p4, p1, p3}, Lorg/eclipse/jdt/internal/core/IPathRequestor;->acceptPath(Ljava/lang/String;Z)V

    iget-object p4, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->simpleName:[C

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$binariesFromIndexMatches:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    if-nez v2, :cond_3

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->enclosingTypeName:[C

    if-eqz p3, :cond_1

    const/16 p4, 0x2f

    invoke-virtual {p1, p4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p4

    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    add-int/2addr p4, v0

    invoke-virtual {p1, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    const/4 v2, 0x0

    :cond_1
    move-object v6, v2

    goto :goto_1

    :cond_2
    add-int/2addr p4, v0

    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    add-int/2addr v2, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v6, p4

    move-object p4, v1

    :goto_1
    new-instance v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    iget v3, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->modifiers:I

    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->pkgName:[C

    iget-object v7, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->typeParameterSignatures:[[C

    iget-char v8, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->classOrInterface:C

    move-object v2, v1

    move-object v5, p4

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;-><init>(I[C[C[C[[CC)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$binariesFromIndexMatches:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    :cond_3
    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    iget-char p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superClassOrInterface:C

    invoke-virtual {v2, p1, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->recordSuperType([C[CC)V

    :cond_4
    if-nez p3, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$foundSuperNames:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->containsKey([C)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$foundSuperNames:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {p1, p4, p4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;->val$queue:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->add([C)V

    :cond_5
    return v0
.end method
