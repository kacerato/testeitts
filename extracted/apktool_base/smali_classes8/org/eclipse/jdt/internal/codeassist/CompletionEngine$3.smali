.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$GuessedTypeRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findFieldsAndMethodsFromMissingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private final synthetic val$invocationScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private final synthetic val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->val$invocationScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    move-object v1, v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->completionToken:[C

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-object v5, v6

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    move-object v6, v7

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iget-object v7, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$3;->val$invocationScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v1 .. v17}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findFieldsAndMethods([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZZ[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ[CII)V

    return-void
.end method
