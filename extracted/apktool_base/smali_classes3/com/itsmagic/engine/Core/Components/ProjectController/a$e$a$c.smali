.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$errorMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Backup failed"

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
