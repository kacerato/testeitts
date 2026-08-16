.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;
.super Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllConstructorDeclarations([C[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field private final synthetic val$copiesLength:I

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

.field private final synthetic val$singleWkcpPath:Ljava/lang/String;

.field private final synthetic val$workingCopyPaths:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$copiesLength:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$singleWkcpPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$workingCopyPaths:Ljava/util/HashSet;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;

    iget v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    and-int/lit8 v4, v3, 0x2

    const/4 v13, 0x1

    if-eqz v4, :cond_0

    return v13

    :cond_0
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    return v13

    :cond_1
    iget v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$copiesLength:I

    if-eqz v3, :cond_3

    if-eq v3, v13, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$workingCopyPaths:Ljava/util/HashSet;

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v13

    :cond_2
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$singleWkcpPath:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v13

    :cond_3
    if-eqz v1, :cond_9

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    array-length v5, v3

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    array-length v5, v3

    add-int/2addr v5, v13

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v4

    :goto_1
    iget-object v6, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_2

    :cond_6
    array-length v6, v6

    :goto_2
    add-int v7, v5, v6

    new-array v7, v7, [C

    if-lez v5, :cond_7

    add-int/lit8 v8, v5, -0x1

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x2e

    const/16 v9, 0x2f

    invoke-static {v7, v3, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    aput-char v9, v7, v8

    goto :goto_3

    :cond_7
    move v5, v4

    :goto_3
    if-lez v6, :cond_8

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    invoke-static {v3, v4, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    :cond_8
    if-lez v5, :cond_9

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v1

    :goto_4
    move-object v12, v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;

    iget v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->modifiers:I

    iget-object v4, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    iget v5, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    iget-object v6, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->signature:[C

    iget-object v7, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->parameterTypes:[[C

    iget-object v8, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->parameterNames:[[C

    iget v9, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringTypeModifiers:I

    iget-object v10, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    iget v14, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v14

    move-object/from16 v11, p1

    invoke-interface/range {v1 .. v12}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;->acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return v13
.end method
