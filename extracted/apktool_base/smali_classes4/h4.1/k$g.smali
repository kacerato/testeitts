.class public Lh4/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/k;->F(Ljava/io/File;ZLh4/k$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$commitDir",
            "val$fileVersionData",
            "val$file",
            "val$date"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh4/k$g;->e:Lh4/k;

    iput-object p2, p0, Lh4/k$g;->a:Ljava/io/File;

    iput-object p3, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    iput-object p4, p0, Lh4/k$g;->c:Ljava/io/File;

    iput-object p5, p0, Lh4/k$g;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lh4/k$g;->e:Lh4/k;

    iget-object v1, p0, Lh4/k$g;->c:Ljava/io/File;

    iget-object v2, p0, Lh4/k$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lh4/k;->v(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    new-instance v0, Lh4/k$g$a;

    invoke-direct {v0, p0, p1}, Lh4/k$g$a;-><init>(Lh4/k$g;Ljava/lang/Runnable;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh4/k$g;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lh4/k$g;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".fglsl"

    const-string v3, ".gglsl"

    const-string v4, ".java"

    const-string v5, ".lua"

    const-string v6, ".vglsl"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;
    .locals 1

    iget-object v0, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->d()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/k$g;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
