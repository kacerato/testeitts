.class public final Lcom/android/tools/r8/internal/uR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/fn0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uR;->b:Lcom/android/tools/r8/internal/fn0;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uR;->b:Lcom/android/tools/r8/internal/fn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fn0;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uR;->b:Lcom/android/tools/r8/internal/fn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fn0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uR;->b:Lcom/android/tools/r8/internal/fn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fn0;->remove()V

    return-void
.end method
