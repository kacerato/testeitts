.class Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;
.super Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

.field final synthetic val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

.field final synthetic val$name:Lorg/openjdk/tools/javac/util/Name;

.field final synthetic val$sf:Lorg/openjdk/tools/javac/util/Filter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;ZLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->this$0:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->val$name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->val$sf:Lorg/openjdk/tools/javac/util/Filter;

    iput-object p5, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$SymbolImporter;-><init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Z)V

    return-void
.end method


# virtual methods
.method public doLookup(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/lang/Iterable;
    .locals 3
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

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->val$name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->val$sf:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope$2;->val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
