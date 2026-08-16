.class public Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;
    }
.end annotation


# instance fields
.field public enableFrameLimitOnGame:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private graphicsMode:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public limitFramesWhenGameRunning:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final materialShaders:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->Advanced:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->graphicsMode:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->enableFrameLimitOnGame:Z

    const/16 v0, 0x23

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->limitFramesWhenGameRunning:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    return-void
.end method

.method public static d()Z
    .locals 4

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->a()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->Advanced:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_1
    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;
    .locals 1

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->Lite:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->graphicsMode:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->graphicsMode:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;)V

    const-string v2, "Graphics mode"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    invoke-static {v2, v3, p1, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V

    const-string p2, "Enable FPS limiter on game"

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, p2, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$c;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;)V

    const-string v1, "On Game FPS Limit"

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {p1, p2, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->enableFrameLimitOnGame:Z

    if-nez p1, :cond_1

    new-instance p1, LC5/b;

    const-string p2, "We strongly recommend that you keep the frame limiter enabled on 35 FPS"

    const/16 v1, 0xc

    invoke-direct {p1, p2, v1}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->limitFramesWhenGameRunning:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->enableFrameLimitOnGame:Z

    return v0
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableFrameLimitOnGame"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->enableFrameLimitOnGame:Z

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphicsMode"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->Lite:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->graphicsMode:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->graphicsMode:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    if-eqz v0, :cond_2

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$d;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public h(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limitFramesWhenGameRunning"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->limitFramesWhenGameRunning:I

    return-void
.end method
