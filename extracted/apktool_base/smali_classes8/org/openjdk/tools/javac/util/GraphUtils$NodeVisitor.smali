.class abstract Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NodeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "N::",
        "Lorg/openjdk/tools/javac/util/GraphUtils$Node<",
        "TD;TN;>;A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TN;>;TA;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/GraphUtils$Node;

    invoke-interface {v0, p0, p2}, Lorg/openjdk/tools/javac/util/GraphUtils$Node;->accept(Lorg/openjdk/tools/javac/util/GraphUtils$NodeVisitor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract visitDependency(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            "TN;TN;TA;)V"
        }
    .end annotation
.end method

.method public abstract visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$Node;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TA;)V"
        }
    .end annotation
.end method
