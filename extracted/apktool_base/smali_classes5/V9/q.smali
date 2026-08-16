.class public LV9/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lub/g;

.field public b:Lub/g;

.field public c:Lub/g;

.field public d:Lub/g;

.field public e:Lub/g;

.field public f:Lub/g;

.field public g:Lub/g;

.field public h:Lub/g;

.field public i:Lub/g;

.field public j:Lub/g;

.field public k:Lub/g;

.field public l:Lub/g;

.field public m:Lub/g;

.field public n:Lub/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LV9/q;->a:Lub/g;

    iput-object v0, p0, LV9/q;->b:Lub/g;

    iput-object v0, p0, LV9/q;->c:Lub/g;

    iput-object v0, p0, LV9/q;->d:Lub/g;

    iput-object v0, p0, LV9/q;->e:Lub/g;

    iput-object v0, p0, LV9/q;->f:Lub/g;

    iput-object v0, p0, LV9/q;->g:Lub/g;

    iput-object v0, p0, LV9/q;->h:Lub/g;

    iput-object v0, p0, LV9/q;->i:Lub/g;

    iput-object v0, p0, LV9/q;->j:Lub/g;

    iput-object v0, p0, LV9/q;->k:Lub/g;

    iput-object v0, p0, LV9/q;->l:Lub/g;

    iput-object v0, p0, LV9/q;->m:Lub/g;

    iput-object v0, p0, LV9/q;->n:Lub/g;

    return-void
.end method


# virtual methods
.method public a()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->g:Lub/g;

    return-object v0
.end method

.method public b()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->h:Lub/g;

    return-object v0
.end method

.method public c()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->d:Lub/g;

    return-object v0
.end method

.method public d()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->c:Lub/g;

    return-object v0
.end method

.method public e()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->n:Lub/g;

    return-object v0
.end method

.method public f()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->m:Lub/g;

    return-object v0
.end method

.method public g()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->j:Lub/g;

    return-object v0
.end method

.method public h()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->i:Lub/g;

    return-object v0
.end method

.method public i()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->b:Lub/g;

    return-object v0
.end method

.method public j()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->l:Lub/g;

    return-object v0
.end method

.method public k()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->k:Lub/g;

    return-object v0
.end method

.method public l()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->f:Lub/g;

    return-object v0
.end method

.method public m()Lub/g;
    .locals 1

    iget-object v0, p0, LV9/q;->e:Lub/g;

    return-object v0
.end method

.method public n()V
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->J0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const-string v1, "@@ASSET@@/Engine/UI/theme/sprite_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    invoke-static {v1, v3}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->a:Lub/g;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/panel_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->b:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/checkboxOn.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->c:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/checkboxOff.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->d:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/radioBtnOn.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->e:Lub/g;

    invoke-virtual {v1, v2}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/radioBtnOff.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->f:Lub/g;

    invoke-virtual {v1, v2}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/buttonNormal_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->g:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/buttonPressed_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->h:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/joystick_handle_v3.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->i:Lub/g;

    const-string v1, "@@ASSET@@/Engine/UI/theme/joystick_background_v3.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->j:Lub/g;

    const-string v1, "@@ASSET@@/Engine/UI/theme/progressbar_handler_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->k:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/progressbar_background_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->l:Lub/g;

    invoke-virtual {v1, v3}, Lub/g;->n0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/driving_wheel.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LV9/q;->m:Lub/g;

    const-string v1, "@@ASSET@@/Engine/UI/theme/circular_progress_bar_handle.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-static {v1, v0}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v0

    iput-object v0, p0, LV9/q;->n:Lub/g;

    return-void
.end method
