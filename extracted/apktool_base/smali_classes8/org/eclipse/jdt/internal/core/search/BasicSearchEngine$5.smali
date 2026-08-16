.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;
.super Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field private final synthetic val$copiesLength:I

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

.field private final synthetic val$singleWkcpPath:Ljava/lang/String;

.field private final synthetic val$workingCopyPaths:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$copiesLength:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$singleWkcpPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$workingCopyPaths:Ljava/util/HashSet;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z
    .locals 9

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    :cond_0
    iget p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$copiesLength:I

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$workingCopyPaths:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$singleWkcpPath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_8

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    array-length v2, p3

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    array-length v2, p3

    add-int/2addr v2, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v0

    :goto_1
    iget-object v3, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    array-length v3, v3

    :goto_2
    add-int v4, v2, v3

    new-array v4, v4, [C

    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-static {p3, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p3, 0x2e

    const/16 v6, 0x2f

    invoke-static {v4, p3, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    aput-char v6, v4, v5

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    if-lez v3, :cond_7

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    invoke-static {p3, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    :cond_7
    if-lez v2, :cond_8

    invoke-virtual {p4, v4}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p3

    :goto_4
    move-object v8, p3

    goto :goto_5

    :cond_8
    const/4 p3, 0x0

    goto :goto_4

    :goto_5
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-char p4, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    iget v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modifiers:I

    invoke-virtual {p3, p4, v0}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match(CI)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$5;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;

    iget v3, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modifiers:I

    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    iget-object v5, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    iget-object v6, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    move-object v7, p1

    invoke-interface/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;->acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    :cond_9
    return v1
.end method
