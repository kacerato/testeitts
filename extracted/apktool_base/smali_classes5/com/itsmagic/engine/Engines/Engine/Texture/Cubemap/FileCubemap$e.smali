.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->g(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$remainingUploads",
            "val$compressedCubemap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$e;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->a:[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->f([Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;)V

    return-void
.end method
