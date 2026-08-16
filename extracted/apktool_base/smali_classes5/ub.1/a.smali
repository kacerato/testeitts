.class public final synthetic Lub/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

.field public final synthetic c:Ljava/nio/ByteBuffer;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub/a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iput-object p2, p0, Lub/a;->c:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lub/a;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lub/a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iget-object v1, p0, Lub/a;->c:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lub/a;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    return-void
.end method
