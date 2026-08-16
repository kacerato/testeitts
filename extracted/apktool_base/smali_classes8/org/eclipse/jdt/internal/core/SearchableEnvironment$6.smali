.class Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findConstructorDeclarations([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

.field private final synthetic val$excludePath:Ljava/lang/String;

.field private final synthetic val$storage:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;->this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;->val$excludePath:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;->val$storage:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;->val$excludePath:Ljava/lang/String;

    move-object/from16 v12, p10

    if-eqz v1, :cond_0

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;->val$storage:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v2 .. v13}, Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;->acceptConstructor(I[CI[C[[C[[CI[CILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-void
.end method
