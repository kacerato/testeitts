.class Lorg/openjdk/tools/javac/comp/Modules$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Modules;->getUnnamedModuleCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Modules;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$3;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$3;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    if-eqz v0, :cond_0

    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$3;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$3;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$3;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$1300(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "unnamedModule Completer"

    return-object v0
.end method
