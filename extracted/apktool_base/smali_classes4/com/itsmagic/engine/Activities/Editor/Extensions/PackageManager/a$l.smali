.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    return-object p1
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->C(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V

    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->I()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->M()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    return-object v0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->J()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->L()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->O()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->b:I

    return v0
.end method

.method public m()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->K()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "File not downloaded!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->V()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->f:Z

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->E()V

    :cond_0
    return-void
.end method
