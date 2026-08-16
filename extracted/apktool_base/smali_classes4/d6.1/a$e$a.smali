.class public Ld6/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/a$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld6/a$e;


# direct methods
.method public constructor <init>(Ld6/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld6/a$e$a;->a:Ld6/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 3

    iget-object v0, p0, Ld6/a$e$a;->a:Ld6/a$e;

    iget-object v0, v0, Ld6/a$e;->c:Ld6/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/Files/Worlds/"

    const-string v2, "World"

    invoke-static {v1, v2, v0}, Lid/a;->q(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Ld6/a$e$a;->a:Ld6/a$e;

    iget-object v0, v0, Ld6/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/World/World;

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
