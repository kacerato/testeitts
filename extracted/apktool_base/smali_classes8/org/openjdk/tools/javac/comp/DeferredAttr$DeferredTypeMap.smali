.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;
.super Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeferredTypeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 9

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;-><init>()V

    new-instance v8, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v6, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v0, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    iput-object v8, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    return-void
.end method


# virtual methods
.method public typeOf(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$6;->$SwitchMap$com$sun$tools$javac$comp$DeferredAttr$AttrMode:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez p1, :cond_1

    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    :cond_1
    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {p1, v1, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 3
    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    .line 6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;->typeOf(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
