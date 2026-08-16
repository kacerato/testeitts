.class Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lambda$getSymbols$1(Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)Ljava/util/Iterator;
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
.field private currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

.field private currScope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field private seenRemoveCount:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field final synthetic val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

.field final synthetic val$sf:Lorg/openjdk/tools/javac/util/Filter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->this$0:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->val$sf:Lorg/openjdk/tools/javac/util/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currScope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget p1, p1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    iput p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->seenRemoveCount:I

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->update()V

    return-void
.end method

.method private doNext()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    :cond_1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->update()V

    return-object v1
.end method

.method private update()V
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->skipToNextMatchingEntry()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->val$lookupKind:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currScope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currScope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->seenRemoveCount:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->skipToNextMatchingEntry()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->seenRemoveCount:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currScope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->doNext()Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currScope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->seenRemoveCount:I

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->next()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->doNext()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public skipToNextMatchingEntry()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->val$sf:Lorg/openjdk/tools/javac/util/Filter;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v1, v0}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;->currEntry:Lorg/openjdk/tools/javac/code/Scope$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method
