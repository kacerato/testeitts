.class public LD8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Ljava/lang/String; = "SelfIlumin/Simple"

.field public static final u:Ljava/lang/String; = "SelfIlumin/Transparent"

.field public static final v:Ljava/lang/String; = "SelfIlumin/DIF"

.field public static final w:Ljava/lang/String; = "SelfIlumin/DIF"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:LD8/b;

.field public f:LD8/b;

.field public g:LD8/b;

.field public h:LD8/b;

.field public i:LD8/b;

.field public j:LD8/b;

.field public k:LD8/b;

.field public l:LD8/b;

.field public m:LD8/b;

.field public n:LD8/b;

.field public o:LD8/b;

.field public p:LD8/b;

.field public q:LD8/b;

.field public r:LD8/b;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_EDITOR"

    iput-object v0, p0, LD8/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, LD8/a;->d:Z

    new-instance v7, LD8/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-direct {v6, v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V

    const-string v2, "Editor/Gizmos/AxisCube/axiscube_v2.obj"

    const/4 v3, 0x1

    const-string v4, "SelfIlumin/Simple"

    const-string v5, "@@ASSET@@/Editor/Gizmos/AxisCube/albedo_v2.png"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v7, p0, LD8/a;->e:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "@@ASSET@@/Editor/Gizmos/Camera/texture.png"

    const-string v3, "@@ASSET@@Editor/Gizmos/Camera/model.obj"

    const/4 v4, 0x1

    const-string v5, "SelfIlumin/Simple"

    invoke-direct {v1, v3, v4, v5, v2}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->f:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "@@ASSET@@Editor/Gizmos/CenterOfMass/model.obj"

    const-string v3, "@@ASSET@@/Editor/Gizmos/CenterOfMass/texture.png"

    invoke-direct {v1, v2, v4, v5, v3}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->g:LD8/b;

    new-instance v1, LD8/b;

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v14, v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V

    const-string v10, "@@ASSET@@Editor/Gizmos/Route/point.obj"

    const/4 v11, 0x1

    const-string v12, "SelfIlumin/Transparent"

    const-string v13, "@@ASSET@@/Editor/Gizmos/Route/texture.png"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v1, p0, LD8/a;->h:LD8/b;

    new-instance v1, LD8/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xff

    invoke-direct {v2, v3, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    const-string v6, "Editor/Gizmos/Laser/laser.obj"

    invoke-direct {v1, v6, v4, v5, v2}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iput-object v1, p0, LD8/a;->i:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "@@ASSET@@Editor/Gizmos/OutlinedModels/Sphere/model.obj"

    const-string v6, ""

    invoke-direct {v1, v2, v4, v5, v6}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->j:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "@@ASSET@@Editor/Gizmos/OutlinedModels/Cube/model.obj"

    invoke-direct {v1, v2, v4, v5, v6}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->k:LD8/b;

    new-instance v1, LD8/b;

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v14, v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V

    const-string v10, "Editor/Gizmos/Colliders/VehicleWheel/model.obj"

    const-string v12, "SelfIlumin/Transparent"

    const-string v13, "@@ASSET@@/Editor/Gizmos/Colliders/VehicleWheel/texture.png"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v1, p0, LD8/a;->l:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "@@ASSET@@/Editor/Gizmos/Canvas/canvasTexture.png"

    const-string v6, "Editor/Gizmos/Canvas/square.obj"

    const-string v7, "SelfIlumin/Transparent"

    invoke-direct {v1, v6, v4, v7, v2}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->m:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "@@ASSET@@Editor/Gizmos/SoundPlayer/model.obj"

    const-string v6, "@@ASSET@@/Editor/Gizmos/SoundPlayer/texture.png"

    invoke-direct {v1, v2, v4, v5, v6}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->n:LD8/b;

    new-instance v1, LD8/b;

    const-string v2, "Editor/Gizmos/Microphone/model.obj"

    const-string v6, "@@ASSET@@/Editor/Gizmos/Microphone/texture.png"

    invoke-direct {v1, v2, v4, v5, v6}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LD8/a;->o:LD8/b;

    new-instance v1, LD8/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v5, 0x8

    const/16 v6, 0x73

    invoke-direct {v2, v5, v6, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    const-string v5, "Editor/Gizmos/Colliders/Sphere/sphere_lp.obj"

    invoke-direct {v1, v5, v4, v7, v2}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iput-object v1, p0, LD8/a;->p:LD8/b;

    new-instance v1, LD8/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v5, 0xf2

    invoke-direct {v2, v3, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    const-string v0, "Editor/Gizmos/SkeletonBone/point.obj"

    const-string v5, "SelfIlumin/DIF"

    invoke-direct {v1, v0, v4, v5, v2}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iput-object v1, p0, LD8/a;->q:LD8/b;

    new-instance v0, LD8/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xfa

    const/16 v6, 0x65

    const/16 v7, 0x64

    invoke-direct {v1, v7, v3, v2, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    const-string v2, "Editor/Gizmos/SkeletonBone/bone.obj"

    invoke-direct {v0, v2, v4, v5, v1}, LD8/b;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iput-object v0, p0, LD8/a;->r:LD8/b;

    const/16 v0, 0x1f4

    iput v0, p0, LD8/a;->s:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LVc/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ITsMagic"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD8/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Fatal error trying to get app name without activity context"

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, LD8/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "/ITsMagic"

    iput-object p1, p0, LD8/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Fatal error trying to get app name without activity context"

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, LD8/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Backups"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LVc/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ITsMagic/cache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD8/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Fatal error trying to get app name without activity context"

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, LD8/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ExportedPackages"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Languages"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Plugins"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Projects"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD8/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method public o(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Projects"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD8/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method public p()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Settings"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, LD8/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, LD8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Themes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
