.class public Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public packID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public usefulFiles:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packID",
            "usefulFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;->packID:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;->usefulFiles:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method
