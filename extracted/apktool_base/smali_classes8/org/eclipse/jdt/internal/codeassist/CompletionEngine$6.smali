.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$GuessedTypeRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findMemberTypesFromMissingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;JLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$6;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$6;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$6;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->completionToken:[C

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$6;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v7

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v10}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual/range {v3 .. v14}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findMemberTypes([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;ZZLorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V

    :cond_0
    return-void
.end method
