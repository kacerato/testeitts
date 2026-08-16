.class Lorg/openjdk/tools/javac/code/Symtab$3;
.super Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Symtab;-><init>(Lorg/openjdk/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab$3;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->access$000(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Names;->java_base:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    sget-object p3, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$3;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Symtab;->access$100(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "compiler.misc.unnamed.module"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
