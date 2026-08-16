.class public final synthetic Lorg/openjdk/tools/javac/comp/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/A2;->a:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/A2;->a:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->b(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)V

    return-void
.end method
