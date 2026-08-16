.class public final synthetic Lorg/openjdk/tools/sjavac/comp/dependencies/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/d;->b:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/d;->b:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    check-cast p1, Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->c(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
