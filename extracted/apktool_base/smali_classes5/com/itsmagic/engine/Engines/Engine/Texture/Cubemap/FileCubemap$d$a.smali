.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$faceBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    aput-object v0, v1, v2

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    aput-object v0, v2, v3

    throw v1
.end method
