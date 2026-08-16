.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public foldersOnTop:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inverse:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public order:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showextension:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->Alphabetical:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->order:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->inverse:Z

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->showHide:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->showextension:Z

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->foldersOnTop:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "order",
            "inverse",
            "showHide",
            "showextension",
            "foldersOnTop"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;->Alphabetical:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 9
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->order:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 10
    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->inverse:Z

    .line 11
    iput-boolean p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->showHide:Z

    .line 12
    iput-boolean p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->showextension:Z

    .line 13
    iput-boolean p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;->foldersOnTop:Z

    return-void
.end method
