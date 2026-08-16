.class public LP6/c$H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c;->f2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP6/c;


# direct methods
.method public constructor <init>(LP6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP6/c$H;->b:LP6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LP6/c$H;->b:LP6/c;

    invoke-static {v0}, LP6/c;->q1(LP6/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LP6/c$H;->b:LP6/c;

    invoke-static {v1}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, Lub/g;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    iget-object v1, p0, LP6/c$H;->b:LP6/c;

    invoke-static {v1}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, Lub/g;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    iget-object v1, p0, LP6/c$H;->b:LP6/c;

    invoke-static {v1}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, Lub/g;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    iget-object v1, p0, LP6/c$H;->b:LP6/c;

    invoke-static {v1}, LP6/c;->u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, Lub/g;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    new-instance v0, LP6/c$H$a;

    invoke-direct {v0, p0}, LP6/c$H$a;-><init>(LP6/c$H;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
