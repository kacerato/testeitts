.class Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;
.super Lorg/openjdk/tools/javac/code/Scope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleEntryScope"
.end annotation


# instance fields
.field private final content:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private final origin:Lorg/openjdk/tools/javac/code/Scope;

.field private final sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->content:Lorg/openjdk/tools/javac/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    return-void
.end method


# virtual methods
.method public getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->origin:Lorg/openjdk/tools/javac/code/Scope;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 0
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

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->content:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    return-object p1
.end method

.method public getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 1
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

    iget-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope$SingleEntryScope;->content:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
