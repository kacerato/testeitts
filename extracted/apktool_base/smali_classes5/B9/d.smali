.class public final synthetic LB9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB9/d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LB9/d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;)V

    return-void
.end method
