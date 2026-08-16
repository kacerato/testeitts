.class public Lw5/c$n0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$n0;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lq7/a;

.field public final synthetic d:Lw5/c$n0;


# direct methods
.method public constructor <init>(Lw5/c$n0;Ljava/lang/String;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inputText",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$n0$a;->d:Lw5/c$n0;

    iput-object p2, p0, Lw5/c$n0$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lw5/c$n0$a;->c:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v0

    iget-object v1, p0, Lw5/c$n0$a;->d:Lw5/c$n0;

    iget-object v1, v1, Lw5/c$n0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->w(Ljava/lang/String;)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;->PANORAMA:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->v(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)V

    iget-object v1, p0, Lw5/c$n0$a;->d:Lw5/c$n0;

    iget-object v1, v1, Lw5/c$n0;->d:Ljava/lang/String;

    invoke-static {v1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/c$n0$a;->d:Lw5/c$n0;

    iget-object v4, v4, Lw5/c$n0;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/c$n0$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lwb/e;->m(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;)V

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/a;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;Ljava/io/File;)V

    new-instance v0, Lw5/c$n0$a$a;

    invoke-direct {v0, p0}, Lw5/c$n0$a$a;-><init>(Lw5/c$n0$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
