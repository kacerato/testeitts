.class Lorg/openjdk/tools/javac/comp/Modules$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Modules;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$1;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$1;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/ModuleFinder;

    move-result-object v0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$1;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->access$100(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$1;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->access$200(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "mainCompleter"

    return-object v0
.end method
