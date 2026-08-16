.class public Lorg/openjdk/tools/javac/code/TypeMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;,
        Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
    }
.end annotation


# static fields
.field public static final EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;


# instance fields
.field private final contents:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;",
            "Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/TypeMetadata;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/TypeMetadata;-><init>()V

    .line 4
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;->kind()Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    return-void
.end method

.method private add(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata;
    .locals 3

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/TypeMetadata;-><init>(Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    invoke-interface {p1}, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;->kind()Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    invoke-interface {v2, p1}, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;->combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/code/TypeMetadata;->add(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/code/TypeMetadata;->add(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V

    :goto_0
    return-object v0
.end method

.method public combineAll(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/TypeMetadata;
    .locals 5

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/TypeMetadata;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    invoke-interface {v3, v4}, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;->combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/openjdk/tools/javac/code/TypeMetadata;->add(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    invoke-direct {v0, v2, v3}, Lorg/openjdk/tools/javac/code/TypeMetadata;->add(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    invoke-direct {v0, v2, v3}, Lorg/openjdk/tools/javac/code/TypeMetadata;->add(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public get(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    return-object p1
.end method

.method public without(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    if-eq p0, v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/code/TypeMetadata;-><init>(Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lorg/openjdk/tools/javac/code/TypeMetadata;->contents:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
