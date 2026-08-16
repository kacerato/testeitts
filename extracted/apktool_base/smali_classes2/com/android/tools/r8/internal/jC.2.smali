.class public final Lcom/android/tools/r8/internal/jC;
.super Lcom/android/tools/r8/internal/Av0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Av0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Av0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/jC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Av0;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
