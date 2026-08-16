.class public LD8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, LD8/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, LD8/b;->b:Z

    .line 4
    const-string v1, "SelfIlumin/Transparent"

    iput-object v1, p0, LD8/b;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, LD8/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LD8/b;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 7
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v2, p0, LD8/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 8
    iput-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 9
    iput-object v1, p0, LD8/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MESH",
            "MESH_FROM_ASSETS",
            "SHADER",
            "color"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, LD8/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, LD8/b;->b:Z

    .line 38
    const-string v1, "SelfIlumin/Transparent"

    iput-object v1, p0, LD8/b;->c:Ljava/lang/String;

    .line 39
    iput-object v0, p0, LD8/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, LD8/b;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 41
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    .line 42
    iput-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 43
    iput-object p1, p0, LD8/b;->a:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, LD8/b;->b:Z

    .line 45
    iput-object p3, p0, LD8/b;->c:Ljava/lang/String;

    .line 46
    iput-object v0, p0, LD8/b;->d:Ljava/lang/String;

    .line 47
    iput-object p4, p0, LD8/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MESH",
            "MESH_FROM_ASSETS",
            "SHADER",
            "TEXTURE"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, LD8/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, LD8/b;->b:Z

    .line 13
    const-string v1, "SelfIlumin/Transparent"

    iput-object v1, p0, LD8/b;->c:Ljava/lang/String;

    .line 14
    iput-object v0, p0, LD8/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, LD8/b;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 16
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v1, p0, LD8/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 17
    iput-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 18
    iput-object p1, p0, LD8/b;->a:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, LD8/b;->b:Z

    .line 20
    iput-object p3, p0, LD8/b;->c:Ljava/lang/String;

    .line 21
    iput-object p4, p0, LD8/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MESH",
            "MESH_FROM_ASSETS",
            "SHADER",
            "TEXTURE",
            "color"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, LD8/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, LD8/b;->b:Z

    .line 51
    const-string v1, "SelfIlumin/Transparent"

    iput-object v1, p0, LD8/b;->c:Ljava/lang/String;

    .line 52
    iput-object v0, p0, LD8/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, LD8/b;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 54
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    .line 55
    iput-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 56
    iput-object p1, p0, LD8/b;->a:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, LD8/b;->b:Z

    .line 58
    iput-object p3, p0, LD8/b;->c:Ljava/lang/String;

    .line 59
    iput-object p4, p0, LD8/b;->d:Ljava/lang/String;

    .line 60
    iput-object p5, p0, LD8/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MESH",
            "MESH_FROM_ASSETS",
            "SHADER",
            "TEXTURE",
            "texConfig"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, LD8/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, LD8/b;->b:Z

    .line 25
    const-string v1, "SelfIlumin/Transparent"

    iput-object v1, p0, LD8/b;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, LD8/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, LD8/b;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 28
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v1, p0, LD8/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 29
    iput-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 30
    iput-object p1, p0, LD8/b;->a:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, LD8/b;->b:Z

    .line 32
    iput-object p3, p0, LD8/b;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, LD8/b;->d:Ljava/lang/String;

    .line 34
    iput-object p5, p0, LD8/b;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-void
.end method


# virtual methods
.method public a()LD8/b;
    .locals 7

    new-instance v6, LD8/b;

    iget-object v1, p0, LD8/b;->a:Ljava/lang/String;

    iget-boolean v2, p0, LD8/b;->b:Z

    iget-object v3, p0, LD8/b;->c:Ljava/lang/String;

    iget-object v4, p0, LD8/b;->d:Ljava/lang/String;

    iget-object v5, p0, LD8/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object v6
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD8/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2

    iget-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    iget-object v0, p0, LD8/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iput-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_0
    iget-object v0, p0, LD8/b;->g:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LD8/b;->a()LD8/b;

    move-result-object v0

    return-object v0
.end method
