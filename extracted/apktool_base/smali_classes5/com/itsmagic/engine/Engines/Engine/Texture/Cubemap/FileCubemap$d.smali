.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->h(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$f",
            "val$wantedResolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-virtual {v1}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v2

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->c:I

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;

    invoke-direct {v11, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move v7, v8

    move-object v10, v0

    invoke-virtual/range {v2 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->K(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cubemap face buffer is null for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;)[Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$d;->b:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    throw v1
.end method
