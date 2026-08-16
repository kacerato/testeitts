.class final Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UsesProvidesCompleter"
.end annotation


# instance fields
.field private final currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field private final interimProvidesCopy:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;",
            ">;"
        }
    .end annotation
.end field

.field private final interimUsesCopy:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->interimUsesCopy:Lorg/openjdk/tools/javac/util/List;

    iput-object p4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->interimProvidesCopy:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->interimUsesCopy:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;

    new-instance v3, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v4, v4, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;->service:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v4, v5, v2}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->interimProvidesCopy:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v4, v2, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v6, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v6, v7, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;->service:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v6, v2}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$UsesProvidesCompleter;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
