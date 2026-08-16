.class abstract Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FilterScanner"
.end annotation


# instance fields
.field final treeFilter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/d0;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/d0;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->treeFilter:Lorg/openjdk/tools/javac/util/Filter;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->lambda$new$0(Ljava/util/Set;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Ljava/util/Set;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->treeFilter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->skip(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public skip(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    return-void
.end method
