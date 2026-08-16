.class Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;
.super Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MembersClosureCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Types$MembersClosureCache$MembersScope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$SimpleVisitor<",
        "Lorg/openjdk/tools/javac/code/Scope$CompoundScope;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Scope$CompoundScope;",
            ">;"
        }
    .end annotation
.end field

.field nilScope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

.field seenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->seenTypes:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$1700(Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;
    .locals 4

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->seenTypes:Ljava/util/Set;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p2

    .line 4
    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->seenTypes:Ljava/util/Set;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 8
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    .line 9
    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Scope;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->prependSubScope(Lorg/openjdk/tools/javac/code/Scope;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->prependSubScope(Lorg/openjdk/tools/javac/code/Scope;)V

    .line 11
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->prependSubScope(Lorg/openjdk/tools/javac/code/Scope;)V

    .line 12
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->seenTypes:Ljava/util/Set;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->seenTypes:Ljava/util/Set;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    throw p2
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;
    .locals 0

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->nilScope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->nilScope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->nilScope:Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$MembersClosureCache;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    return-object p1
.end method
