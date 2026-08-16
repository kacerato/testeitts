.class Lorg/openjdk/tools/javac/code/ModuleFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/ModuleFinder;->findModuleInfo(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/ModuleFinder;

.field final synthetic val$msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/ModuleFinder;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$1;->this$0:Lorg/openjdk/tools/javac/code/ModuleFinder;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$1;->val$msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$1;->this$0:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->access$100(Lorg/openjdk/tools/javac/code/ModuleFinder;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder$1;->val$msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ModuleInfoCompleter"

    return-object v0
.end method
