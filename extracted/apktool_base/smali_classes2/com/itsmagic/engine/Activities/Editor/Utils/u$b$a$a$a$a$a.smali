.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->b:Landroid/content/Context;

    const-string v1, "/Files/Worlds/"

    const-string v2, "World"

    invoke-static {v1, v2, v0}, Lid/a;->q(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;-><init>()V

    const-string v2, "World.world"

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->createExampleWhenOpen:Z

    return-object v0
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
