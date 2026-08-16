.class public abstract Lcom/android/tools/r8/internal/sP;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/x40;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x40;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x40;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/mP;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/Ds1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Ds1;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern$Builder;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mP;->a(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
