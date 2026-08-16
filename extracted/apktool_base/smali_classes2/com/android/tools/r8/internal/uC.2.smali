.class public final Lcom/android/tools/r8/internal/uC;
.super Lcom/android/tools/r8/internal/Av0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Av0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Av0;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/uC;->b:Lcom/android/tools/r8/internal/Av0;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
