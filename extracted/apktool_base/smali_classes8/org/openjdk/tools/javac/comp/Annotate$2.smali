.class Lorg/openjdk/tools/javac/comp/Annotate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Annotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Annotate;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$2;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$2;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->access$000(Lorg/openjdk/tools/javac/comp/Annotate;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$2;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->access$100(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method
