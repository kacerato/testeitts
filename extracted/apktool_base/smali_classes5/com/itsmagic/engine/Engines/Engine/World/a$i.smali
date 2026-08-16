.class public Lcom/itsmagic/engine/Engines/Engine/World/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/a;->O(Lcom/itsmagic/engine/Engines/Engine/World/World;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LIc/C;

    invoke-direct {v0}, LIc/C;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    invoke-static {}, LN7/c;->F()Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->B()V

    return-void
.end method
