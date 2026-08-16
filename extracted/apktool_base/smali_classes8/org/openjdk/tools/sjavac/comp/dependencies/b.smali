.class public final synthetic Lorg/openjdk/tools/sjavac/comp/dependencies/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->b(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z

    move-result p1

    return p1
.end method
