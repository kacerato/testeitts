.class public Lz4/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz4/a$c;


# direct methods
.method public constructor <init>(Lz4/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz4/a$c$b;->a:Lz4/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    sget-object p1, LW7/b;->f:LC8/a;

    iget-object p1, p1, LC8/a;->a:LD8/a;

    iget-object v0, p0, Lz4/a$c$b;->a:Lz4/a$c;

    iget-object v0, v0, Lz4/a$c;->e:Lz4/a;

    invoke-static {v0}, Lz4/a;->h(Lz4/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LD8/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lz4/a$c$b;->a:Lz4/a$c;

    iget-object p1, p1, Lz4/a$c;->c:LA4/b;

    invoke-virtual {p1}, LA4/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "Export backup"

    const-string v1, "zip"

    invoke-static {v0, p1, v1}, LIc/i;->t(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
