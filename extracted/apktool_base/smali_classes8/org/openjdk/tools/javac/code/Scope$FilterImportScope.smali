.class Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;
.super Lorg/openjdk/tools/javac/code/Scope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterImportScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;
    }
.end annotation


# instance fields
.field private final cfHandler:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

.field private final filterName:Lorg/openjdk/tools/javac/util/Name;

.field private final imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

.field private final origin:Lorg/openjdk/tools/javac/code/Scope;

.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Types;",
            "Lorg/openjdk/tools/javac/code/Scope;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Scope$ImportFilter;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Scope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->types:Lorg/openjdk/tools/javac/code/Types;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filterName:Lorg/openjdk/tools/javac/util/Name;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iput-object p5, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iput-object p6, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->cfHandler:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Scope$ImportFilter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->lambda$getSymbols$1(Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->lambda$getSymbolsByName$3(Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->lambda$null$0(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->lambda$null$2(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getSymbols$1(Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/j;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/j;-><init>()V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/code/l;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/l;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Iterators;->createFilterIterator(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getSymbolsByName$3(Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/j;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/j;-><init>()V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/code/k;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/k;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;)V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Iterators;->createFilterIterator(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$null$0(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    invoke-interface {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Scope$ImportFilter;->accepts(Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$null$2(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    invoke-interface {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Scope$ImportFilter;->accepts(Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    return-object p1
.end method

.method public getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filterName:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$1;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;ZLorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->importFrom(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/m;

    invoke-direct {p2, p0, p1}, Lorg/openjdk/tools/javac/code/m;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->cfHandler:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->filterName:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance v6, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-boolean v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;ZLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;->importFrom(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/n;

    invoke-direct {p2, p0, p1}, Lorg/openjdk/tools/javac/code/n;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->cfHandler:Ljava/util/function/BiConsumer;

    iget-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    invoke-interface {p2, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->imp:Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    return p1
.end method
