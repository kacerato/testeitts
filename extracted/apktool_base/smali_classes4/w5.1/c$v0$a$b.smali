.class public Lw5/c$v0$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$v0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/c$v0$a;


# direct methods
.method public constructor <init>(Lw5/c$v0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$v0$a$b;->a:Lw5/c$v0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ".class"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".vglsl"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".fglsl"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".dex"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ".javac"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, ".java"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lw5/c$v0$a$b;->a:Lw5/c$v0$a;

    iget-object v3, v3, Lw5/c$v0$a;->c:Lw5/c$v0;

    iget-object v3, v3, Lw5/c$v0;->d:Landroid/app/Activity;

    invoke-static {v0, v3}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/k;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, LTc/c;

    new-instance v4, Lw5/c$v0$a$b$a;

    invoke-direct {v4, p0, v2}, Lw5/c$v0$a$b$a;-><init>(Lw5/c$v0$a$b;Ljava/lang/StringBuilder;)V

    const-string v5, "//<JAVA-DOC>"

    const-string v6, "//>JAVA-DOC<"

    invoke-direct {v3, v5, v6, v4}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    filled-new-array {v3}, [LTc/c;

    move-result-object v3

    invoke-static {v0, v3}, LTc/b;->T(Ljava/lang/String;[LTc/c;)Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Core/Components/JCompiler/ExportedJavaTXT;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method
