.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;->a:Z

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;->a:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->a()Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$e;->focusObject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->k(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, LW7/b;->h:Lb8/f;

    invoke-virtual {v1, v0}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$c$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$c;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method
