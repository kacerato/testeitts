.class public LJ4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public g:Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;

.field public h:LJAVARuntime/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LJ4/b;->e:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, LJ4/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, LJ4/b;->e:I

    .line 6
    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 7
    const-string p1, ""

    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, LJ4/b;->b:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LJ4/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    iput-object p2, p0, LJ4/b;->c:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "link"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, LJ4/b;->e:I

    .line 14
    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 15
    const-string p1, ""

    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, LJ4/b;->b:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LJ4/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_1
    iput-object p2, p0, LJ4/b;->c:Ljava/lang/String;

    .line 20
    :cond_2
    :goto_0
    iput-object p3, p0, LJ4/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "title",
            "message",
            "link"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, LJ4/b;->e:I

    .line 23
    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 24
    const-string p1, ""

    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    const/16 v0, 0x1f4

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 26
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LJ4/b;->b:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_1
    iput-object p2, p0, LJ4/b;->b:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 28
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v0, :cond_3

    .line 29
    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LJ4/b;->c:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_3
    iput-object p3, p0, LJ4/b;->c:Ljava/lang/String;

    .line 31
    :cond_4
    :goto_1
    iput-object p4, p0, LJ4/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
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
            "tag",
            "title",
            "message",
            "link",
            "color"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, LJ4/b;->e:I

    .line 34
    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 35
    const-string p1, ""

    iput-object p1, p0, LJ4/b;->a:Ljava/lang/String;

    .line 36
    :cond_0
    iput-object p2, p0, LJ4/b;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, LJ4/b;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, LJ4/b;->d:Ljava/lang/String;

    .line 39
    iput-object p5, p0, LJ4/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;
    .locals 2

    iget-object v0, p0, LJ4/b;->g:Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;-><init>(Z)V

    iput-object v0, p0, LJ4/b;->g:Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;

    :cond_0
    iget-object v0, p0, LJ4/b;->g:Lcom/itsmagic/engine/Activities/Editor/Utils/Editor;

    return-object v0
.end method

.method public b()LJAVARuntime/Log;
    .locals 1

    iget-object v0, p0, LJ4/b;->h:LJAVARuntime/Log;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Log;

    invoke-direct {v0, p0}, LJAVARuntime/Log;-><init>(LJ4/b;)V

    iput-object v0, p0, LJ4/b;->h:LJAVARuntime/Log;

    :cond_0
    return-object v0
.end method
