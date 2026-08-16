.class public Lh4/k$h;
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

.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$commitDir",
            "val$fileVersionData",
            "val$finalFile",
            "val$date",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh4/k$h;->f:Lh4/k;

    iput-object p2, p0, Lh4/k$h;->a:Ljava/io/File;

    iput-object p3, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    iput-object p4, p0, Lh4/k$h;->c:Ljava/io/File;

    iput-object p5, p0, Lh4/k$h;->d:Ljava/lang/String;

    iput-object p6, p0, Lh4/k$h;->e:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lh4/k$h;->f:Lh4/k;

    iget-object v1, p0, Lh4/k$h;->e:Ljava/io/File;

    iget-object v2, p0, Lh4/k$h;->d:Ljava/lang/String;

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

    new-instance v0, Lh4/k$h$a;

    invoke-direct {v0, p0, p1}, Lh4/k$h$a;-><init>(Lh4/k$h;Ljava/lang/Runnable;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lh4/k$h;->c:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;
    .locals 1

    iget-object v0, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->d()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/k$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/FileVersionData;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
