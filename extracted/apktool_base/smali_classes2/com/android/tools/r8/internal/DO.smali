.class public abstract Lcom/android/tools/r8/internal/DO;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/CO;

    iget-object v1, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/HC0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/HC0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern$Builder;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/mP;->a(Ljava/util/function/Consumer;)V

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/CO;->b:Z

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern$Builder;->setInclusive(Z)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$InstanceOfPattern$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
