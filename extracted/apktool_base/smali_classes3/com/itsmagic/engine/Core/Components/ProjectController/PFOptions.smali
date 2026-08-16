.class public Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
    }
.end annotation


# instance fields
.field public foldersOnTop:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public foldersOnly:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inverse:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orderBy:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showExtensions:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orderBy",
            "inverse"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->orderBy:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 3
    iput-boolean p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->inverse:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showHide:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showExtensions:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderBy",
            "inverse",
            "showHide"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->orderBy:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 8
    iput-boolean p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->inverse:Z

    .line 9
    iput-boolean p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showHide:Z

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showExtensions:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderBy",
            "inverse",
            "showHide",
            "showExtensions"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->orderBy:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 13
    iput-boolean p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->inverse:Z

    .line 14
    iput-boolean p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showHide:Z

    .line 15
    iput-boolean p4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showExtensions:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderBy",
            "inverse",
            "showHide",
            "showExtensions",
            "foldersOnTop"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->orderBy:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 18
    iput-boolean p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->inverse:Z

    .line 19
    iput-boolean p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showHide:Z

    .line 20
    iput-boolean p4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showExtensions:Z

    .line 21
    iput-boolean p5, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->foldersOnTop:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;ZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderBy",
            "inverse",
            "showHide",
            "showExtensions",
            "foldersOnTop",
            "foldersOnly"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->orderBy:Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions$a;

    .line 24
    iput-boolean p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->inverse:Z

    .line 25
    iput-boolean p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showHide:Z

    .line 26
    iput-boolean p4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->showExtensions:Z

    .line 27
    iput-boolean p5, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->foldersOnTop:Z

    .line 28
    iput-boolean p6, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/PFOptions;->foldersOnly:Z

    return-void
.end method
