.class public LVb/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSb/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVb/a$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:LVb/a$d;


# direct methods
.method public constructor <init>(LVb/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LVb/a$d$a;->c:LVb/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LVb/a$d$a;->a:Z

    iput-boolean p1, p0, LVb/a$d$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v1, v1, LVb/a$d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LVb/a$d$a;->a:Z

    :cond_0
    iget-boolean v0, p0, LVb/a$d$a;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "compilation terminated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Filament: ERROR:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Filament: ERROR: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".  No code generated."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "\'"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v2, v2, LVb/a$d;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object p1, p1, LVb/a$d;->b:LSb/a;

    invoke-virtual {p1}, LSb/a;->h()V

    invoke-virtual {p0}, LVb/a$d$a;->b()V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 4

    iget-boolean v0, p0, LVb/a$d$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LVb/a$d$a;->b:Z

    iget-object v0, p0, LVb/a$d$a;->c:LVb/a$d;

    const/4 v1, 0x0

    iput-object v1, v0, LVb/a$d;->b:LSb/a;

    invoke-static {}, LJ4/d;->E1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v1, v1, LVb/a$d;->h:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->name:Ljava/lang/String;

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed to build!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->M1(Ljava/lang/String;)V

    iget-object v0, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v0, v0, LVb/a$d;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v2, v1, LVb/a$d;->j:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iget-object v1, v1, LVb/a$d;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b:Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LJ4/d;->b2(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v0, v0, LVb/a$d;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_1
    iget-object v1, p0, LVb/a$d$a;->c:LVb/a$d;

    iget-object v1, v1, LVb/a$d;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
