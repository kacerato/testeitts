.class Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;
.super Lorg/openjdk/tools/javac/code/Types$SameTypeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LooseSameTypeVisitor"
.end annotation


# instance fields
.field private cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Types$TypePair;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SameTypeVisitor;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->cache:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Types$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    return-void
.end method

.method private checkSameBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Types$TypePair;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->this$0:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/openjdk/tools/javac/code/Types$TypePair;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->cache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->cache:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->cache:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public containsTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->containsTypeEquivalent(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    return p1
.end method

.method public sameTypeVars(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$LooseSameTypeVisitor;->checkSameBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
