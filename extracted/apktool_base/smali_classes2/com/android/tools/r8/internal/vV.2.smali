.class public final Lcom/android/tools/r8/internal/vV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/MarkerInfoConsumerData;


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/vV;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p1, p0, Lcom/android/tools/r8/internal/vV;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getInputOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vV;->a:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public final getMarkers()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vV;->b:Ljava/util/List;

    return-object v0
.end method

.method public final hasMarkers()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vV;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
