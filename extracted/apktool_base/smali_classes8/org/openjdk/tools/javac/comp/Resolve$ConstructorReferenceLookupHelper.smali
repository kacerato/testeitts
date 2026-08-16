.class Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;
.super Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructorReferenceLookupHelper"
.end annotation


# instance fields
.field needsInference:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    iget-object p5, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object p3

    invoke-direct {p1, p2, p4, p5, p3}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->needsInference:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
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

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->needsInference:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v7

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1100(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

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

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->enclosingInstanceMissing(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$BadConstructorReferenceError;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Resolve$BadConstructorReferenceError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method public referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    .locals 1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->IMPLICIT_INNER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    :goto_0
    return-object p1
.end method
