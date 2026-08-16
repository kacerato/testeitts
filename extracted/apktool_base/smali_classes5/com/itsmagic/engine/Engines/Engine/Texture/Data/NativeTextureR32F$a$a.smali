.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->b0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->i0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;J)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->V(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Z)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
