.class Lorg/openjdk/tools/javac/comp/Resolve$15;
.super Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$15;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    return-void
.end method


# virtual methods
.method public boundResult(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->NON_STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->hasKind(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$15;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_1
    return-object v0
.end method

.method public unboundResult(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->hasKind(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->hasKind(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->NON_STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->hasKind(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->hasKind(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$15;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->ambiguityError(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->canIgnore()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->canIgnore()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_6
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    return-object p1

    :cond_7
    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$15;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_2

    :cond_8
    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_2
    const/4 p2, 0x1

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Z)V

    return-object v0
.end method
