.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$GuessedTypeRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findConstructorsFromMissingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private final synthetic val$argTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private final synthetic val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$argTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_3

    move-object v11, v1

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz p2, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->isIgnored(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$argTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    const/4 v6, 0x0

    move-object v2, v11

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findConstructors(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->checkCancel()V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    if-eqz p2, :cond_2

    move v12, v13

    :cond_2
    invoke-virtual {v1, v13, v12}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->isIgnored(IZ)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$argTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$2;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    move-object v2, v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findAnonymousType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V

    :cond_3
    return-void
.end method
