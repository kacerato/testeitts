.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$file",
            "val$listener",
            "val$projectName",
            "val$inProjectPath",
            "val$clientLastModified",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->g:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v1, "cloudsync/"

    const-string v2, "canAllocate"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-static {v3, v0, v4}, LB7/f;->d(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "status"

    invoke-static {v3, v4}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "values"

    invoke-static {v3, v0}, Lhd/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "true"

    invoke-static {v0, v2}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$c;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Lfd/d;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V

    invoke-direct {v0, v2}, Lfd/d;-><init>(Lhd/d;)V

    new-instance v9, Lfd/b;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->b:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "uploadFile"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->g:Landroid/content/Context;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lfd/b;-><init>(Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;Lfd/b$a;Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lfd/d;->d(Lfd/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;

    invoke-direct {v0, p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;Lorg/json/JSONObject;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
