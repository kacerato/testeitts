.class public Lorg/openjdk/tools/sjavac/pubapi/PubApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final METHOD_PATTERN:Ljava/util/regex/Pattern;

.field private static final MODIFIERS:Ljava/lang/String;

.field private static final MOD_PATTERN:Ljava/util/regex/Pattern;

.field private static final TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x523f9c2c15da5722L


# instance fields
.field private lastInsertedType:Lorg/openjdk/tools/sjavac/pubapi/PubType;

.field public final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubMethod;",
            ">;"
        }
    .end annotation
.end field

.field public final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubType;",
            ">;"
        }
    .end annotation
.end field

.field public final variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubVar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/openjdk/javax/lang/model/element/Modifier;->values()[Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/q;

    invoke-direct {v1}, Lorg/openjdk/tools/sjavac/pubapi/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/r;

    invoke-direct {v1}, Lorg/openjdk/tools/sjavac/pubapi/r;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ")"

    const-string v2, "|"

    const-string v3, "("

    invoke-static {v2, v3, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->MODIFIERS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->MOD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(?<ret>.+?) (?<name>\\S+)\\((?<params>.*)\\)( throws (?<throws>.*))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->METHOD_PATTERN:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAR (?<modifiers>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )*)(?<type>.+?) (?<id>\\S+)( = (?<val>.*))?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->VAR_PATTERN:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE (?<modifiers>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )*)(?<fullyQualified>\\S+)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lastInsertedType:Lorg/openjdk/tools/sjavac/pubapi/PubType;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubType;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubVar;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubMethod;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lastInsertedType:Lorg/openjdk/tools/sjavac/pubapi/PubType;

    .line 11
    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/c;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/pubapi/c;-><init>(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    new-instance p1, Lorg/openjdk/tools/sjavac/pubapi/d;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/sjavac/pubapi/d;-><init>(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    new-instance p1, Lorg/openjdk/tools/sjavac/pubapi/e;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/sjavac/pubapi/e;-><init>(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    invoke-interface {p3, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lambda$varLine$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static asString(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/o;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/o;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/sjavac/pubapi/PubVar;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->varLine(Lorg/openjdk/tools/sjavac/pubapi/PubVar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/PubType;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lambda$asListOfStrings$1(Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/PubType;)V

    return-void
.end method

.method private static commaSeparated(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/a;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/sjavac/pubapi/PubType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->typeLine(Lorg/openjdk/tools/sjavac/pubapi/PubType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private diff(Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/sjavac/Util;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " was removed"

    const-string v4, " was added"

    const-string v5, " to "

    const-string v6, " changed from "

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v7, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    .line 5
    iget-object v8, p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    .line 6
    const-string v9, "Type "

    if-nez v8, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez v7, :cond_1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v7, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    iget-object v4, v8, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modifiers for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v2, v7, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object v3, v8, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->diff(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/sjavac/Util;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    iget-object v7, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/sjavac/pubapi/PubVar;

    .line 14
    iget-object v8, p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/sjavac/pubapi/PubVar;

    .line 15
    const-string v9, "Variable "

    if-nez v8, :cond_5

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-nez v7, :cond_6

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_6
    iget-object v9, v7, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Modifiers for var "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_7
    iget-object v9, v7, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Type of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_8
    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v8}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 23
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Const value of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v8}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object v2

    const-string v8, "<none>"

    invoke-virtual {v2, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 27
    :cond_9
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/sjavac/Util;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    iget-object v7, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;

    .line 29
    iget-object v8, p2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;

    .line 30
    const-string v9, "Method "

    if-nez v8, :cond_b

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    if-nez v7, :cond_c

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_c
    iget-object v9, v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Modifiers for method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_d
    iget-object v9, v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Type parameters for method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_e
    iget-object v9, v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    iget-object v10, v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Throw decl for method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to  to "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    return-object v0
.end method

.method public static synthetic e(Lorg/openjdk/tools/sjavac/pubapi/PubMethod;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methodLine(Lorg/openjdk/tools/sjavac/pubapi/PubMethod;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lambda$parseModifiers$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static findClosingTag(Ljava/lang/String;I)I
    .locals 2

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->findClosingTag(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static synthetic g(Lorg/openjdk/javax/lang/model/element/Modifier;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lambda$asString$2(Lorg/openjdk/javax/lang/model/element/Modifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseTypeParam(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asListOfStrings$1(Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/PubType;)V
    .locals 3

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->typeLine(Lorg/openjdk/tools/sjavac/pubapi/PubType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->asListOfStrings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$asString$2(Lorg/openjdk/javax/lang/model/element/Modifier;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$parseModifiers$3(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$varLine$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mergeTypes(Lorg/openjdk/tools/sjavac/pubapi/PubApi;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Lorg/openjdk/tools/sjavac/pubapi/PubApi;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "Can only merge types."

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget-object v0, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget-object v0, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;-><init>()V

    iget-object v1, v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p0, v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static methodLine(Lorg/openjdk/tools/sjavac/pubapi/PubMethod;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->asString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/sjavac/pubapi/i;

    invoke-direct {v4}, Lorg/openjdk/tools/sjavac/pubapi/i;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->encodeAsString(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->commaSeparated(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " throws "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->commaSeparated(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v6, p0

    :goto_1
    move-object v2, v0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "METHOD %s%s%s %s(%s)%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseTypeDescs(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/b;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/b;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static parseTypeParam(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;
    .locals 2

    const-string v0, " extends "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x26

    invoke-static {p0, v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->splitOnTopLevelChars(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseTypeDescs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;

    invoke-direct {v0, v1, p0}, Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static parseTypeParams(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/j;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/j;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static splitOnTopLevelChars(Ljava/lang/String;C)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_4

    aget-char v5, p0, v3

    if-ne v5, p1, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static typeLine(Lorg/openjdk/tools/sjavac/pubapi/PubType;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->asString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "TYPE %s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty class name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varLine(Lorg/openjdk/tools/sjavac/pubapi/PubVar;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->asString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->encodeAsString(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object p0

    new-instance v3, Lorg/openjdk/tools/sjavac/pubapi/p;

    invoke-direct {v3}, Lorg/openjdk/tools/sjavac/pubapi/p;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "VAR %s%s %s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPubMethod(Lorg/openjdk/tools/sjavac/pubapi/PubMethod;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->asSignatureString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPubType(Lorg/openjdk/tools/sjavac/pubapi/PubType;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lastInsertedType:Lorg/openjdk/tools/sjavac/pubapi/PubType;

    return-void
.end method

.method public addPubVar(Lorg/openjdk/tools/sjavac/pubapi/PubVar;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendItem(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->lastInsertedType:Lorg/openjdk/tools/sjavac/pubapi/PubType;

    iget-object v0, v0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->appendItem(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    const-string v0, "METHOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->MOD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseModifiers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->findClosingTag(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->splitOnTopLevelCommas(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseTypeParams(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    sget-object v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->METHOD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "params"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->splitOnTopLevelCommas(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "throws"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->splitOnTopLevelCommas(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;

    const-string v5, "ret"

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->decodeString(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseTypeDescs(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-static {v4}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseTypeDescs(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v0, v7

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;-><init>(Ljava/util/Set;Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->addPubMethod(Lorg/openjdk/tools/sjavac/pubapi/PubMethod;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse return type, identifier, parameter types or throws declaration of method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    sget-object v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->VAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "modifiers"

    if-eqz v1, :cond_5

    :try_start_1
    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseModifiers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->decodeString(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "val"

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;-><init>(Ljava/util/Set;Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->addPubVar(Lorg/openjdk/tools/sjavac/pubapi/PubVar;)V

    return-void

    :cond_5
    sget-object v0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->parseModifiers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "fullyQualified"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-direct {v3}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lorg/openjdk/tools/sjavac/pubapi/PubType;-><init>(Ljava/util/Set;Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->addPubType(Lorg/openjdk/tools/sjavac/pubapi/PubType;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No matching line pattern."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse API line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public asListOfStrings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/sjavac/pubapi/k;

    invoke-direct {v2}, Lorg/openjdk/tools/sjavac/pubapi/k;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/sjavac/pubapi/l;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/sjavac/pubapi/l;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/sjavac/pubapi/m;

    invoke-direct {v2}, Lorg/openjdk/tools/sjavac/pubapi/m;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/oF1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/oF1;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/sjavac/pubapi/n;

    invoke-direct {v2}, Lorg/openjdk/tools/sjavac/pubapi/n;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/oF1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/oF1;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public diff(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->diff(Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isBackwardCompatibleWith(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseModifiers(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/oe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/oe;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/f;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/f;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/g;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/g;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/pubapi/h;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/pubapi/h;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public splitOnTopLevelCommas(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->splitOnTopLevelChars(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->variables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->methods:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[types: %s, variables: %s, methods: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
