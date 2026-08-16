.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;
    }
.end annotation


# instance fields
.field public final reportList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->reportList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ipp",
            "utclastModified"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;-><init>()V

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;->ipp:Ljava/lang/String;

    iput-object p2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;->lastModified:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->reportList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->reportList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport;->reportList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/LocalReport$LocalFileReport;->ipp:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
