.class public final synthetic Lorg/openjdk/tools/sjavac/comp/dependencies/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/c;->b:Z

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/c;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/c;->b:Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/c;->c:Ljava/util/Collection;

    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->d(ZLjava/util/Collection;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z

    move-result p1

    return p1
.end method
