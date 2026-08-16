.class public final Lcom/android/tools/r8/internal/fk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;


# instance fields
.field public final a:Lcom/android/tools/r8/references/ClassReference;

.field public final b:Lcom/android/tools/r8/naming/k;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/naming/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fk0;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fk0;->b:Lcom/android/tools/r8/naming/k;

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fk0;->a:Lcom/android/tools/r8/references/ClassReference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/ek0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fk0;->b:Lcom/android/tools/r8/naming/k;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fk0;->a:Lcom/android/tools/r8/references/ClassReference;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/fk0;->b:Lcom/android/tools/r8/naming/k;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lcom/android/tools/r8/internal/lk0;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/fk0;->b:Lcom/android/tools/r8/naming/k;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fk0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/tools/r8/internal/ek0;-><init>(Lcom/android/tools/r8/internal/fk0;Lcom/android/tools/r8/internal/lk0;Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/references/ClassReference;)V

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
