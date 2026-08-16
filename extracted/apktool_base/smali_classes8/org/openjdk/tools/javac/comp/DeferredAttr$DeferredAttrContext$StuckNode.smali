.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;
.super Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StuckNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode<",
        "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;",
        "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;",
        ">;"
    }
.end annotation


# instance fields
.field deps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;->deps:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAllDependencies()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;->deps:Ljava/util/Set;

    return-object v0
.end method

.method public getDependenciesByKind(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;->STUCK:Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext$StuckNode;->deps:Ljava/util/Set;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSupportedDependencyKinds()[Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;->STUCK:Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
