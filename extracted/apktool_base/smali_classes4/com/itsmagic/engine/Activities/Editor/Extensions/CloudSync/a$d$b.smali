.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-virtual {v0}, LE3/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-virtual {v1}, LE3/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-void
.end method
