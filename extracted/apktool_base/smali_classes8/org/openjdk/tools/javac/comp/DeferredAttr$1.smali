.class Lorg/openjdk/tools/javac/comp/DeferredAttr$1;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;-><init>(Lorg/openjdk/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$1;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct/range {p0 .. p7}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    return-void
.end method


# virtual methods
.method public addDeferredAttrNode(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;)V
    .locals 0

    const-string p1, "Empty deferred context!"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    return-void
.end method

.method public complete()V
    .locals 1

    const-string v0, "Empty deferred context!"

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Empty deferred context!"

    return-object v0
.end method
