.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private landscape:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private portrait:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "portrait",
            "landscape"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    .line 5
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;)Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientations"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->a()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    return v0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "landscape"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    return-void
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "portrait"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->portrait:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/Orientations;->landscape:Z

    if-eqz v1, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
