.class public LP6/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/a$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP6/a$c;


# direct methods
.method public constructor <init>(LP6/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LP6/a$c$a;->b:LP6/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "x"

    :try_start_0
    iget-object v1, p0, LP6/a$c$a;->b:LP6/a$c;

    iget-object v1, v1, LP6/a$c;->b:LP6/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LP6/a$c$a;->b:LP6/a$c;

    iget-object v3, v3, LP6/a$c;->b:LP6/a;

    invoke-static {v3}, LP6/a;->q1(LP6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LP6/a$c$a;->b:LP6/a$c;

    iget-object v3, v3, LP6/a$c;->b:LP6/a;

    invoke-static {v3}, LP6/a;->q1(LP6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LP6/a$c$a;->b:LP6/a$c;

    iget-object v4, v4, LP6/a$c;->b:LP6/a;

    invoke-static {v4}, LP6/a;->q1(LP6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LP6/a$c$a;->b:LP6/a$c;

    iget-object v0, v0, LP6/a$c;->b:LP6/a;

    invoke-static {v0}, LP6/a;->q1(LP6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LP6/a;->s1(LP6/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LP6/a$c$a;->b:LP6/a$c;

    iget-object v0, v0, LP6/a$c;->b:LP6/a;

    invoke-static {v0}, LP6/a;->p1(LP6/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
