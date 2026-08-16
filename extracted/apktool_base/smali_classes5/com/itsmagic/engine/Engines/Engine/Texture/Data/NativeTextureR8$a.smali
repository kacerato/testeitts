.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->n0(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$post"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->U(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->V(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;J)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->e0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;Z)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
