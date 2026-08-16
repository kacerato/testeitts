.class public final Lcom/android/tools/r8/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/f;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/utils/f;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/utils/e;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/e;-><init>(Lcom/android/tools/r8/utils/f;)V

    return-object v0
.end method

.method public final getProgramResources()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/f;->a:Ljava/util/ArrayList;

    return-object v0
.end method
