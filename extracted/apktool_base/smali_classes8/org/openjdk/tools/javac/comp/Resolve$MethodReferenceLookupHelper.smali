.class Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;
.super Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodReferenceLookupHelper"
.end annotation


# instance fields
.field originalSite:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v1, p1

    move-object v9, p4

    iput-object v1, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x1

    invoke-virtual {v0, p4, v2}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    iput-object v9, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->originalSite:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->STATIC:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->referenceTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->SUPER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->BOUND:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    :goto_0
    return-object p1
.end method

.method public unboundLookup(Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
    .locals 17

    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->referenceTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->originalSite:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$UnboundMethodReferenceLookupHelper;

    iget-object v10, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v11, v8, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->referenceTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v12, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v13, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->originalSite:Lorg/openjdk/tools/javac/code/Type;

    iget-object v14, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v15, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->maxPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v9, v0

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Lorg/openjdk/tools/javac/comp/Resolve$UnboundMethodReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-object v0

    :cond_1
    new-instance v9, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper$1;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->referenceTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, v8, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->maxPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper$1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-object v9

    :cond_2
    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->unboundLookup(Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;

    move-result-object v0

    return-object v0
.end method
