.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->h(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-virtual {v2}, LE3/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->a:LE3/a;

    invoke-virtual {v3}, LE3/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-void
.end method
