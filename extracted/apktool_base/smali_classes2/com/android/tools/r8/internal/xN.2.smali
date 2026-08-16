.class public final Lcom/android/tools/r8/internal/xN;
.super Lcom/android/tools/r8/internal/zN;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/QC;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zN;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;Lcom/android/tools/r8/internal/rN;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rN;->b()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;->addConstraints(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;
    .locals 2

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/aP;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/aP;-><init>(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/rN;

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/rN;->a(Lcom/android/tools/r8/internal/aP;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aP;->a()Lcom/android/tools/r8/internal/cP;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v1, Lcom/android/tools/r8/internal/yy1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/yy1;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/rN;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/rN;->a(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/xy1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/xy1;-><init>()V

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

    const-string v2, "KeepConstraints{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
