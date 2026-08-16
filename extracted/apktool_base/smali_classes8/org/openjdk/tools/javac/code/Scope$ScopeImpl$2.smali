.class Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lambda$getSymbolsByName$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field currentEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

.field seenRemoveCount:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field final synthetic val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

.field final synthetic val$name:Lorg/openjdk/tools/javac/util/Name;

.field final synthetic val$sf:Lorg/openjdk/tools/javac/util/Filter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->this$0:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->val$name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->val$sf:Lorg/openjdk/tools/javac/util/Filter;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->currentEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->seenRemoveCount:I

    return-void
.end method

.method private doNext()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->currentEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->val$sf:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$Entry;->next(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->currentEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->currentEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->seenRemoveCount:I

    iget v3, v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    if-eq v2, v3, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->doNext()Lorg/openjdk/tools/javac/code/Symbol;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->currentEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->this$0:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->next()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;->doNext()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
