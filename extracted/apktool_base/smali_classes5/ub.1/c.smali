.class public final synthetic Lub/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub/c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iput p2, p0, Lub/c;->c:I

    iput p3, p0, Lub/c;->d:I

    iput-object p4, p0, Lub/c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lub/c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iget v1, p0, Lub/c;->c:I

    iget v2, p0, Lub/c;->d:I

    iget-object v3, p0, Lub/c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    invoke-static {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->r0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method
