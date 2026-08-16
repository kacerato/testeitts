.class public final Lcom/android/tools/r8/internal/QM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/QM;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/QM;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QM;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/tools/r8/internal/QM;->b:Lcom/android/tools/r8/internal/QM;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/QM;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/NM;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding$Builder;->setName(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding$Builder;

    move-result-object p1

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/FO;->c()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding$Builder;->setItem(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;->addBindings(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/JO;)Lcom/android/tools/r8/internal/LO;
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/NM;

    const-string v1, "\'"

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to get member item from non-member binding \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbound binding for reference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;
    .locals 3

    .line 9
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/internal/JS0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/JS0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/IS0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IS0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
