.class public Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public depth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public open:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public visible:Z
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
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;->depth:I

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;->open:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;->visible:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;->depth:I

    .line 7
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;->open:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "visible"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;->visible:Z

    return-void
.end method
