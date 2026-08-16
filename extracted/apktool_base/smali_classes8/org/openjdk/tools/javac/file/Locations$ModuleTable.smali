.class Lorg/openjdk/tools/javac/file/Locations$ModuleTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleTable"
.end annotation


# instance fields
.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;)V

    return-void
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/file/Locations$ModuleTable;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->access$900(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$800(Lorg/openjdk/tools/javac/file/Locations;Ljava/util/Collection;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    return-object p1
.end method

.method public get(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public locations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->nameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public updatePaths(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->pathMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
