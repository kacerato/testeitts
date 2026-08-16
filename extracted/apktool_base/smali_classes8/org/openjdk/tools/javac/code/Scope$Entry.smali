.class Lorg/openjdk/tools/javac/code/Scope$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field private shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

.field public sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

.field public sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    return-object p1
.end method


# virtual methods
.method public next()Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    return-object v0
.end method

.method public next(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Scope$Entry;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Scope$Entry;->next(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$Entry;->shadowed:Lorg/openjdk/tools/javac/code/Scope$Entry;

    return-object p1
.end method
