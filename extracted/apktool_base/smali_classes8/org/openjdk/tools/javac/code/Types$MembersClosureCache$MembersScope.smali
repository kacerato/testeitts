.class Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;
.super Lorg/openjdk/tools/javac/code/Scope$CompoundScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MembersScope"
.end annotation


# instance fields
.field scope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;Lorg/openjdk/tools/javac/code/Scope$CompoundScope;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->this$1:Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->scope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    return-void
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->lambda$combine$0(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$combine$0(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public combine(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/X;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/code/X;-><init>(Lorg/openjdk/tools/javac/util/Filter;)V

    return-object v0
.end method

.method public getMark()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->scope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v0

    return v0
.end method

.method public getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 1
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->scope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->combine(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/Filter;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

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

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->scope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;->combine(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/Filter;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
