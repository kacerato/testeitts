.class public final Lcom/android/tools/r8/internal/L50;
.super Lcom/android/tools/r8/naming/mappinginformation/d;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/d;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/L50;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/K50;Ljava/util/Map$Entry;)V
    .locals 1

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/internal/K50;->a:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V
    .locals 2

    .line 3
    const-string v0, "fileNameMappings"

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/gL;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/K50;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/K50;-><init>()V

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/IL0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/IL0;-><init>(Lcom/android/tools/r8/internal/K50;)V

    .line 10
    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    new-instance p0, Lcom/android/tools/r8/internal/L50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/K50;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/L50;-><init>(Ljava/util/HashMap;)V

    .line 12
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of p1, p1, Lcom/android/tools/r8/internal/L50;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    const-string v0, "Unable to compose partitionSourceFiles"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Lcom/android/tools/r8/internal/L50;
    .locals 0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "partitionSourceFiles"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gL;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/L50;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/android/tools/r8/internal/JL0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/JL0;-><init>(Lcom/android/tools/r8/internal/gL;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v2, "fileNameMappings"

    iget-object v3, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
