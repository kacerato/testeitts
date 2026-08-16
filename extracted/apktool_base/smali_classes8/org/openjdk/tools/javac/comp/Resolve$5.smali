.class Lorg/openjdk/tools/javac/comp/Resolve$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve;->lambda$superclasses$0(Lorg/openjdk/tools/javac/code/Type;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
        ">;"
    }
.end annotation


# instance fields
.field currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

.field prevSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

.field seen:Lorg/openjdk/tools/javac/util/List;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;

.field final synthetic val$intype:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->val$intype:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->seen:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Resolve$5;->symbolFor(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->prevSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->prevSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Resolve$5;->symbolFor(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

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
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$5;->next()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->prevSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->currentSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-nez v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->prevSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public symbolFor(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->seen:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->seen:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$5;->seen:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object p1
.end method
