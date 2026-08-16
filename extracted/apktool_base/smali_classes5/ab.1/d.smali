.class public Lab/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LJAVARuntime/Texture;LJAVARuntime/Texture;Lab/d$a;)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "attached",
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, LJAVARuntime/Texture;->instance:Lub/p;

    :cond_1
    invoke-static {p0, v0, p2}, Lab/d;->c(Lub/p;Lub/p;Lab/d$a;)Lub/p;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lub/g;Ljava/lang/String;)Lub/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileTexture",
            "format"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@@ASSET@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lyb/b;->x(Ljava/lang/String;)Lub/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, p1, v1}, Lab/c;->l(Lub/g;Ljava/lang/String;F)Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lyb/b;->x(Ljava/lang/String;)Lub/g;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lub/p;Lub/p;Lab/d$a;)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "attached",
            "type"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p0, Lub/g;

    if-eqz v0, :cond_3

    check-cast p0, Lub/g;

    invoke-virtual {p0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ".nm"

    invoke-static {p0, p1}, Lab/d;->b(Lub/g;Ljava/lang/String;)Lub/p;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static d(LJAVARuntime/Texture;LJAVARuntime/Texture;)Lub/p;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attached",
            "builded"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    iget-object p0, p0, LJAVARuntime/Texture;->instance:Lub/p;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
