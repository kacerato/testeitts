.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree;

.field final synthetic this$2:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->this$2:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    return-void
.end method


# virtual methods
.method public matches(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
