.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "text"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    .line 5
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "text",
            "importance"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    .line 8
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->b:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importance"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->c:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    return-void
.end method
