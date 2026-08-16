.class public final Lcom/android/tools/r8/internal/Qs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final synthetic c:Lcom/android/tools/r8/internal/Rs0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Rs0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qs0;->c:Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Rs0;->a:Lcom/android/tools/r8/internal/nl0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qs0;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qs0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qs0;->c:Lcom/android/tools/r8/internal/Rs0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Rs0;->b:Lcom/android/tools/r8/internal/ny;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qs0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
