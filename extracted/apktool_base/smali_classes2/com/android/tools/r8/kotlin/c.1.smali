.class public final Lcom/android/tools/r8/kotlin/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final synthetic b:Lcom/android/tools/r8/kotlin/g;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/g;)V
    .locals 4

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/c;->b:Lcom/android/tools/r8/kotlin/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/b20;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/kotlin/U1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/kotlin/U1;-><init>(Lcom/android/tools/r8/kotlin/c;)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/b20;-><init>(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    const-string v1, "Lkotlin/jvm/internal/Lambda;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/c;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Integer;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/c;->b:Lcom/android/tools/r8/kotlin/g;

    iget-object v0, v0, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lkotlin/jvm/functions/Function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
