.class public Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:I

.field public transient c:Z

.field public open:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depth",
            "open"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->b:I

    .line 3
    iput-boolean p2, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->open:Z

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "depth",
            "open",
            "shadowFile"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->b:I

    .line 6
    iput-boolean p2, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->open:Z

    .line 7
    iput-boolean p3, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    iget v1, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->b:I

    iget-boolean v2, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->open:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;->a()Lcom/itsmagic/engine/Utils/ProjectFile/PFileSettings;

    move-result-object v0

    return-object v0
.end method
