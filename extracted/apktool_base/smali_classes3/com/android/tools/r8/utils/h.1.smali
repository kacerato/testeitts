.class public final Lcom/android/tools/r8/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/hC;

.field public final synthetic b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/h;->a:Lcom/android/tools/r8/internal/hC;

    iput-object p2, p0, Lcom/android/tools/r8/utils/h;->b:Lcom/android/tools/r8/internal/hC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/h;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/utils/g;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/g;-><init>(Lcom/android/tools/r8/utils/h;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProgramResources()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/h;->a:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method
