.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;
.super Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllMethodNames([CI[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

.field private final synthetic val$copiesLength:I

.field private final synthetic val$methodMatchRule:I

.field private final synthetic val$methodName:[C

.field private final synthetic val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;

.field private final synthetic val$qualifier:[C

.field private final synthetic val$qualifierMatchRule:I

.field private final synthetic val$singleWkcpPath:Ljava/lang/String;

.field private final synthetic val$workingCopyPaths:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;ILjava/lang/String;Ljava/util/HashSet;[CI[CILorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$copiesLength:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$singleWkcpPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$workingCopyPaths:Ljava/util/HashSet;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$qualifier:[C

    iput p6, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$qualifierMatchRule:I

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$methodName:[C

    iput p8, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$methodMatchRule:I

    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;

    iget v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->extraFlags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v15, 0x1

    if-eqz v3, :cond_0

    return v15

    :cond_0
    iget v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$copiesLength:I

    if-eqz v3, :cond_2

    if-eq v3, v15, :cond_1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$workingCopyPaths:Ljava/util/HashSet;

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v15

    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$singleWkcpPath:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v15

    :cond_2
    if-eqz v1, :cond_b

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    array-length v5, v3

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    array-length v5, v3

    add-int/2addr v5, v15

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v4

    :goto_1
    iget-object v6, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-eqz v6, :cond_6

    array-length v7, v6

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    array-length v6, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v4

    :goto_3
    iget-object v7, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    if-nez v7, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    array-length v7, v7

    :goto_4
    add-int v8, v5, v6

    add-int/2addr v8, v7

    new-array v8, v8, [C

    if-lez v5, :cond_8

    add-int/lit8 v9, v5, -0x1

    invoke-static {v3, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x2e

    const/16 v10, 0x2f

    invoke-static {v8, v3, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    aput-char v10, v8, v9

    goto :goto_5

    :cond_8
    move v5, v4

    :goto_5
    if-lez v6, :cond_9

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    invoke-static {v3, v4, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    if-lez v7, :cond_a

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    invoke-static {v3, v4, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :cond_a
    if-lez v5, :cond_b

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v1

    :goto_6
    move-object v14, v1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :goto_7
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->this$0:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$qualifier:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$qualifierMatchRule:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$methodName:[C

    iget v7, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$methodMatchRule:I

    iget-object v8, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    iget-object v9, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v10, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v11, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-virtual/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->match([CI[CI[C[C[C[C)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$2;->val$nameRequestor:Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget v4, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    iget-object v5, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    iget-object v6, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget v7, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->declaringTypeModifiers:I

    iget-object v8, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    iget-object v9, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->signature:[C

    iget-object v10, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->parameterTypes:[[C

    iget-object v11, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->parameterNames:[[C

    iget-object v12, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    iget v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->modifiers:I

    const/16 v16, -0x1

    move/from16 v17, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v17

    move-object/from16 v13, p1

    move/from16 v17, v15

    move/from16 v15, v16

    invoke-interface/range {v1 .. v15}, Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessMethodRequestor;->acceptMethod([CI[C[CI[C[C[[C[[C[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;I)V

    goto :goto_8

    :cond_c
    move/from16 v17, v15

    :goto_8
    return v17
.end method
