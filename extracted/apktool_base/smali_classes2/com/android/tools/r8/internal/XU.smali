.class public final Lcom/android/tools/r8/internal/XU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/K40;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/naming/b$a;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Lcom/android/tools/r8/naming/s0;

.field public final g:Lcom/android/tools/r8/naming/t0;

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/K40;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XU;->d:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XU;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/naming/s0;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/s0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XU;->f:Lcom/android/tools/r8/naming/s0;

    new-instance v0, Lcom/android/tools/r8/naming/t0;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/t0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XU;->g:Lcom/android/tools/r8/naming/t0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/XU;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/XU;->a:Lcom/android/tools/r8/internal/K40;

    invoke-static {}, Lcom/android/tools/r8/naming/b;->a()Lcom/android/tools/r8/naming/b$a;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/XU;->c:Lcom/android/tools/r8/naming/b$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->f1:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->STABLE:Lcom/android/tools/r8/naming/MapVersion;

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/MapVersion;->toMapVersionMappingInformation()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/naming/b$a;->a(Lcom/android/tools/r8/naming/mappinginformation/b;)Lcom/android/tools/r8/naming/w0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->J1:Lcom/android/tools/r8/internal/nJ$i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/tools/r8/internal/nJ$i;->c:Lcom/android/tools/r8/internal/nJ$i;

    if-ne p1, p2, :cond_1

    const/16 p1, 0x3e8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/tools/r8/internal/XU;->h:I

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XU;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/W11;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/W11;-><init>(Lcom/android/tools/r8/internal/XU;Lcom/android/tools/r8/internal/IH;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IH;Ljava/util/Map$Entry;)V
    .locals 4

    .line 6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R8$$REMOVED$$CLASS$$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/XU;->c:Lcom/android/tools/r8/naming/b$a;

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/naming/b$a;->d:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/XU;->c:Lcom/android/tools/r8/naming/b$a;

    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 14
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/naming/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/naming/k$a;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/a;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/naming/mappinginformation/a;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p2, Lcom/android/tools/r8/internal/V11;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/V11;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/naming/k$a;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/naming/b;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/XU;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/U11;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/U11;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XU;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/XU;->c:Lcom/android/tools/r8/naming/b$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/b$a;->a()Lcom/android/tools/r8/naming/b;

    move-result-object v0

    return-object v0
.end method
