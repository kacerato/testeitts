.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$finalWantedWorldFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->b:Ljava/lang/String;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;)V

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->K(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->b:Landroid/content/Context;

    const-string v2, "/Files/Worlds/"

    const-string v3, "World"

    invoke-static {v2, v3, v0}, Lid/a;->q(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;)V

    const-string v2, "/Files/Worlds/World.world"

    invoke-static {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->K(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->d()V

    return-void
.end method
