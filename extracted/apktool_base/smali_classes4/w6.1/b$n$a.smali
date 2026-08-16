.class public Lw6/b$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lw6/b$n;


# direct methods
.method public constructor <init>(Lw6/b$n;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$sizeBytes",
            "val$size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$n$a;->d:Lw6/b$n;

    iput-wide p2, p0, Lw6/b$n$a;->b:J

    iput-object p4, p0, Lw6/b$n$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lw6/b$n$a;->d:Lw6/b$n;

    iget-object v0, v0, Lw6/b$n;->c:Lx6/c;

    iget-object v0, v0, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw6/b$n$a;->d:Lw6/b$n;

    iget-object v1, v1, Lw6/b$n;->c:Lx6/c;

    iget-object v1, v1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->lastOpen:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw6/b$n$a;->d:Lw6/b$n;

    iget-object v2, v2, Lw6/b$n;->c:Lx6/c;

    iget-object v2, v2, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lw6/b$n$a;->d:Lw6/b$n;

    iget-object v3, v2, Lw6/b$n;->c:Lx6/c;

    iget-wide v4, p0, Lw6/b$n$a;->b:J

    iput-wide v4, v3, Lx6/c;->b:J

    iget-object v2, v2, Lw6/b$n;->d:Lw6/b;

    invoke-static {v2}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object v2

    iget-object v3, p0, Lw6/b$n$a;->d:Lw6/b$n;

    iget-object v4, v3, Lw6/b$n;->c:Lx6/c;

    if-eq v2, v4, :cond_1

    return-void

    :cond_1
    iget-object v2, v3, Lw6/b$n;->d:Lw6/b;

    invoke-static {v2}, Lw6/b;->x1(Lw6/b;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw6/b$n$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
