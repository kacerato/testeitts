.class public Lr5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/b$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr5/c;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lr5/c;


# direct methods
.method public constructor <init>(Lr5/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isAab"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr5/c$a;->b:Lr5/c;

    iput-boolean p2, p0, Lr5/c$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFile"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lr5/c$a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, ".aab"

    goto :goto_0

    :cond_0
    const-string v1, ".apk"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lr5/c$a;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "octet-stream"

    goto :goto_1

    :cond_1
    const-string v1, "vnd.android.package-archive"

    :goto_1
    invoke-static {p1, v0, v1}, LIc/i;->t(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
