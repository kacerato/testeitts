.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;
.super Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->process(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

.field final synthetic val$deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;->val$deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method


# virtual methods
.method public deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;->val$deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    return-object v0
.end method

.method public inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$1;->val$deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->parent:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-object v0
.end method
