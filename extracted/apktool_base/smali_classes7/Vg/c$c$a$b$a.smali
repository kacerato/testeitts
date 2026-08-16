.class public LVg/c$c$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVg/c$c$a$b;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:LVg/c$c$a$b;


# direct methods
.method public constructor <init>(LVg/c$c$a$b;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$gameObjectFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVg/c$c$a$b$a;->c:LVg/c$c$a$b;

    iput-object p2, p0, LVg/c$c$a$b$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LVg/c$c$a$b$a;->c:LVg/c$c$a$b;

    iget-object v0, v0, LVg/c$c$a$b;->g:LVg/c$c$a;

    iget-object v0, v0, LVg/c$c$a;->a:LVg/c$c;

    iget-boolean v0, v0, LVg/c$c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LVg/c$c$a$b$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LVg/c$c$a$b$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, LVg/c;->a()Lcom/itsmagic/engine/Engines/Engine/World/b$g;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V

    :cond_0
    iget-object v0, p0, LVg/c$c$a$b$a;->c:LVg/c$c$a$b;

    iget-object v0, v0, LVg/c$c$a$b;->g:LVg/c$c$a;

    iget-object v0, v0, LVg/c$c$a;->a:LVg/c$c;

    iget-object v0, v0, LVg/c$c;->a:LVg/c$e;

    invoke-interface {v0}, LVg/c$e;->a()V

    return-void
.end method
