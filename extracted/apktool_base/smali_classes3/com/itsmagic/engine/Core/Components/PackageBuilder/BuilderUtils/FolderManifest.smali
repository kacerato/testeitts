.class public Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:Ljava/io/File;

.field public excludeFromAPK:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public forceHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public open:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->excludeFromAPK:Z

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->hide:Z

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->forceHide:Z

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->open:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excludeFromAPK"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->hide:Z

    .line 8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->forceHide:Z

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->open:Z

    .line 10
    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;->excludeFromAPK:Z

    return-void
.end method
