.class abstract Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SymbolImporter"
.end annotation


# instance fields
.field delegates:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;>;"
        }
    .end annotation
.end field

.field final inspectSuperTypes:Z

.field processed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->this$0:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->processed:Ljava/util/Set;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->delegates:Lorg/openjdk/tools/javac/util/List;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->inspectSuperTypes:Z

    return-void
.end method


# virtual methods
.method public abstract doLookup(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end method

.method public importFrom(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->processed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->inspectSuperTypes:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->this$0:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->access$500(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->importFrom(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->this$0:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->access$500(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->importFrom(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->doLookup(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    return-object p2
.end method
