.class public Lcom/android/tools/r8/internal/lY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/internal/V2;)I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/V2;->a:Lcom/android/tools/r8/internal/C2;

    .line 21
    iget-object v1, p1, Lcom/android/tools/r8/internal/V2;->a:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-nez p0, :cond_2

    .line 23
    iget-object p0, p1, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-nez p1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    :goto_0
    neg-int p0, v0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;
    .locals 5

    .line 67
    instance-of v0, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/graph/l1;

    const-string v1, "#"

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 70
    check-cast p0, Lcom/android/tools/r8/graph/l1;

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_4

    .line 73
    check-cast p0, Lcom/android/tools/r8/graph/A2;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 84
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/iY;Lcom/android/tools/r8/StringConsumer;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/lY;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lY;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->d()Lcom/android/tools/r8/internal/SA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/SA;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x65

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "configuration_format_version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->d()Lcom/android/tools/r8/internal/SA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/SA;->c()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    const-string v3, "required_compilation_api_level"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->d()Lcom/android/tools/r8/internal/SA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/SA;->d()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 8
    const-string v3, "synthesized_library_classes_package_prefix"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->d()Lcom/android/tools/r8/internal/SA;

    move-result-object v2

    .line 10
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/SA;->e:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    const-string v3, "support_all_callbacks_from_library"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/lY;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "common_flags"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/lY;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "program_flags"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/lY;->c(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "library_flags"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iY;->d()Lcom/android/tools/r8/internal/SA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/SA;->a()Ljava/util/List;

    move-result-object p0

    const-string v0, "shrinker_config"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p0, Lcom/android/tools/r8/internal/Oz;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Oz;-><init>()V

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Oz;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/kY;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kY;-><init>()V

    invoke-interface {p1, p0, v0}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/TreeMap;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lcom/android/tools/r8/internal/Ii1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Ii1;-><init>(Lcom/android/tools/r8/internal/lY;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/Gi1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Gi1;-><init>(Lcom/android/tools/r8/internal/lY;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/nC;)Ljava/util/TreeMap;
    .locals 2

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 54
    new-instance v1, Lcom/android/tools/r8/internal/Fi1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Fi1;-><init>(Lcom/android/tools/r8/internal/lY;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 3

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 38
    new-instance v2, Lcom/android/tools/r8/internal/Ji1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/Ji1;-><init>(Lcom/android/tools/r8/internal/lY;Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {p2, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 40
    const-string p2, "wrapper_conversion"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 42
    const-string p2, "wrapper_conversion_excluding"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 51
    invoke-static {p2}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object p3

    .line 89
    invoke-static {p2}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 43
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p3}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 45
    :cond_0
    invoke-static {p3}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 52
    invoke-static {p2}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/n1;[Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 55
    invoke-static {p2}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    .line 58
    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    aget-object v1, p3, v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 62
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/TreeMap;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/JA;)V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 28
    sget-boolean v1, Lcom/android/tools/r8/internal/lY;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    instance-of v1, p3, Lcom/android/tools/r8/internal/KA;

    if-nez v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p3, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    .line 33
    invoke-static {p1}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rewrittenType"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p3, Lcom/android/tools/r8/internal/JA;->b:Ljava/util/Set;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "emulatedMethods"

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Hi1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Hi1;-><init>(Lcom/android/tools/r8/internal/lY;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final c(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ki1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ki1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_13

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/V2;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/IA;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v7, v4, Lcom/android/tools/r8/internal/V2;->a:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "api_level_below_or_equal"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "api_level_greater_or_equal"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->i()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/TreeMap;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->i()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    const-string v7, "rewrite_prefix"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->h()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->h()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/Li1;

    invoke-direct {v8, v4}, Lcom/android/tools/r8/internal/Li1;-><init>(Ljava/util/TreeMap;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v7, "rewrite_derived_prefix"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v4, "dont_rewrite_prefix"

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->c:Lcom/android/tools/r8/internal/QC;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v4, "maintain_prefix"

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/Mi1;

    invoke-direct {v8, p0, v4}, Lcom/android/tools/r8/internal/Mi1;-><init>(Lcom/android/tools/r8/internal/lY;Ljava/util/TreeMap;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v7, "emulate_interface"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "retarget_static_field"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->g()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const-string v7, "retarget_method"

    if-nez v4, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->g()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v4

    const-string v7, "retarget_method_with_emulated_dispatch"

    if-nez v4, :cond_9

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->d()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "dont_retarget"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->f()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "backport"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->l:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->l:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->a(Lcom/android/tools/r8/internal/nC;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "api_generic_types_conversion"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    :cond_e
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "custom_conversion"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->q:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v5, Lcom/android/tools/r8/internal/IA;->q:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "never_outline_api"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "amend_library_method"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IA;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "amend_library_field"

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    return-object v0
.end method
