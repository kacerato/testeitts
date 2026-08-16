.class Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper$1;
.super Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->unboundLookup(Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 8

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper$1;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0
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

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper$1;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1400(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-result-object p1

    return-object p1
.end method

.method public referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public unboundLookup(Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
    .locals 0

    return-object p0
.end method
