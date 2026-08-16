.class public Lcom/android/tools/r8/internal/rY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Ljava/util/TreeMap;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rY;->b:Ljava/util/TreeMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/rY;->c:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/rY;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/internal/V2;)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/V2;->a:Lcom/android/tools/r8/internal/C2;

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/internal/V2;->a:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-nez p0, :cond_2

    .line 10
    iget-object p0, p1, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-nez p1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    :goto_0
    neg-int p0, v0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/pY;Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/rY;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/rY;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 14
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/pY;->a:Lcom/android/tools/r8/internal/EU;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EU;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EU;->d()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 18
    const-string v3, "required_compilation_api_level"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EU;->e()Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v3, "synthesized_library_classes_package_prefix"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-boolean v2, v1, Lcom/android/tools/r8/internal/EU;->e:Z

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    const-string v3, "support_all_callbacks_from_library"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EU;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shrinker_config"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc8

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "configuration_format_version"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/pY;->b:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "common_flags"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/pY;->d:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "program_flags"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/internal/pY;->c:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "library_flags"

    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p0, v0, Lcom/android/tools/r8/internal/rY;->b:Ljava/util/TreeMap;

    const-string v0, "package_map"

    invoke-virtual {p2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance p0, Lcom/android/tools/r8/internal/Oz;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Oz;-><init>()V

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Oz;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance p2, Lcom/android/tools/r8/internal/qY;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/qY;-><init>()V

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 137
    iget v0, p0, Lcom/android/tools/r8/internal/rY;->c:I

    const/16 v1, 0x42

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 138
    iput v1, p0, Lcom/android/tools/r8/internal/rY;->c:I

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\u00e6\u00c6\u00f8\u00d8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MultiAPILevelMachineDesugaredLibrarySpecificationJsonExporter cannot encode the next package because the encoding ran out of characters. Extend the chars sequence or improve the encoding to fix this."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 3

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/android/tools/r8/internal/rY;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->y0()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 130
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rY;->b:Ljava/util/TreeMap;

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Pr1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Pr1;-><init>(Lcom/android/tools/r8/internal/rY;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;
    .locals 5

    .line 102
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/l1;

    const-string v1, "#"

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_4

    .line 110
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 119
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 121
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rY;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Lcom/android/tools/r8/internal/Ir1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Ir1;-><init>(Lcom/android/tools/r8/internal/rY;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 100
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 9

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    new-instance v2, Lcom/android/tools/r8/internal/Or1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Or1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/V2;

    .line 40
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/CU;

    .line 41
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    iget-object v7, v4, Lcom/android/tools/r8/internal/V2;->a:Lcom/android/tools/r8/internal/C2;

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v7

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "api_level_below_or_equal"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v4, v4, Lcom/android/tools/r8/internal/V2;->b:Lcom/android/tools/r8/internal/C2;

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "api_level_greater_or_equal"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->n()Ljava/util/Map;

    move-result-object v4

    const-string v7, "rewrite_type"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 49
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->k()Ljava/util/Set;

    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 51
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "maintain_type"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->m()Ljava/util/Map;

    move-result-object v4

    const-string v7, "rewrite_derived_type_only"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 53
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->o()Ljava/util/Map;

    move-result-object v4

    const-string v7, "static_field_retarget"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 54
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->d()Ljava/util/Map;

    move-result-object v4

    const-string v7, "covariant_retarget"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 55
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->p()Ljava/util/Map;

    move-result-object v4

    const-string v7, "static_retarget"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 56
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->l()Ljava/util/Map;

    move-result-object v4

    const-string v7, "non_emulated_virtual_retarget"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 57
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->h()Ljava/util/Map;

    move-result-object v4

    .line 58
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 59
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "emulated_virtual_retarget"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->i()Ljava/util/Map;

    move-result-object v4

    .line 61
    const-string v7, "emulated_virtual_retarget_through_emulated_interface"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 62
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->c()Ljava/util/Map;

    move-result-object v4

    .line 63
    invoke-virtual {p0, v6, v4}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 64
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v4

    .line 65
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 66
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "emulated_interface"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->q()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 69
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v7, "wrapper"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->j()Ljava/util/Map;

    move-result-object v4

    const-string v7, "legacy_backport"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 71
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->f()Ljava/util/Set;

    move-result-object v4

    .line 72
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 73
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "dont_retarget"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->e()Ljava/util/Map;

    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 76
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/rY;->b(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v4

    const-string v7, "custom_conversion"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->b()Ljava/util/Map;

    move-result-object v4

    const-string v7, "amend_library_method"

    invoke-virtual {p0, v7, v4, v6}, Lcom/android/tools/r8/internal/rY;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 78
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CU;->a()Ljava/util/Map;

    move-result-object v4

    const-string v5, "amend_library_field"

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/tools/r8/internal/rY;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 79
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public final a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    new-instance v1, Lcom/android/tools/r8/internal/Nr1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Nr1;-><init>(Lcom/android/tools/r8/internal/rY;Ljava/util/LinkedHashMap;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 2

    .line 94
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 95
    new-instance v1, Lcom/android/tools/r8/internal/Lr1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Lr1;-><init>(Lcom/android/tools/r8/internal/rY;Ljava/util/TreeMap;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/tn0;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p0}, Lcom/android/tools/r8/internal/tn0;->a(Lcom/android/tools/r8/internal/rY;)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 2

    .line 82
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 84
    new-instance v1, Lcom/android/tools/r8/internal/Jr1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Jr1;-><init>(Lcom/android/tools/r8/internal/rY;Ljava/util/TreeMap;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 85
    const-string p2, "api_generic_types_conversion"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

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

.method public final synthetic a(Ljava/util/TreeMap;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 96
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a(Ljava/util/TreeMap;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/tn0;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p0}, Lcom/android/tools/r8/internal/tn0;->a(Lcom/android/tools/r8/internal/rY;)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/TreeMap;Lcom/android/tools/r8/graph/n1;[Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p2

    .line 87
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 89
    aget-object v2, p3, v1

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Yj;)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget p1, p1, Lcom/android/tools/r8/internal/Yj;->b:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/DU;->a(I)I

    move-result p1

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 2

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/Kr1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Kr1;-><init>(Lcom/android/tools/r8/internal/rY;Ljava/util/TreeMap;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Mr1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Mr1;-><init>(Lcom/android/tools/r8/internal/rY;Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
