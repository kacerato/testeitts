.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;
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
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalBackupFile1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$e$a$b;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;->b(Ljava/io/File;)V

    :cond_0
    return-void
.end method
