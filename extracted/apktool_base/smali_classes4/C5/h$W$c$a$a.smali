.class public LC5/h$W$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h$W$c$a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:LC5/h$W$c$a;


# direct methods
.method public constructor <init>(LC5/h$W$c$a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$act"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$W$c$a$a;->b:LC5/h$W$c$a;

    iput-object p2, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent",
            "activity"
        }
    .end annotation

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    const-string p3, "com.itsmagic.engine"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p1, p4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "external_files_files/ITsMagic/Projects"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    iget-object p2, p0, LC5/h$W$c$a$a;->b:LC5/h$W$c$a;

    iget-object p2, p2, LC5/h$W$c$a;->a:LC5/h$W$c;

    iget-object p2, p2, LC5/h$W$c;->a:LC5/h$W;

    iget-object p2, p2, LC5/h$W;->d:Landroid/content/Context;

    invoke-static {p2, p1}, LVc/f;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, LC5/h$W$c$a$a;->b:LC5/h$W$c$a;

    iget-object v0, v0, LC5/h$W$c$a;->a:LC5/h$W$c;

    iget-object v0, v0, LC5/h$W$c;->a:LC5/h$W;

    iget-object v0, v0, LC5/h$W;->c:LC5/b;

    iget-object v0, v0, LC5/b;->o:Ljava/lang/String;

    invoke-static {p3, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".mesh"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p3, "/Files/Models/"

    goto :goto_1

    :cond_2
    const-string v1, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p3, "/Files/Textures/"

    goto :goto_1

    :cond_3
    const-string v1, ".world"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p3, "/Files/Worlds/"

    goto :goto_1

    :cond_4
    const-string v1, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p3, "/Files/Sounds/"

    goto :goto_1

    :cond_5
    const-string v1, ".mat"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/Files/Materials/"

    if-eqz v2, :cond_6

    :goto_0
    move-object p3, v3

    goto :goto_1

    :cond_6
    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const-string v1, ".java|.lua"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p3, "/Files/Scripts/"

    goto :goto_1

    :cond_8
    const-string v1, ".anim"

    invoke-static {p3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "/Files/Animations/"

    goto :goto_1

    :cond_9
    const-string p3, "/Files/Unknown/"

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v3, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    invoke-static {p1, v2, v3}, Lw3/l;->b(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, LC5/h$W$c$a$a;->b:LC5/h$W$c$a;

    iget-object p1, p1, LC5/h$W$c$a;->a:LC5/h$W$c;

    iget-object p1, p1, LC5/h$W$c;->a:LC5/h$W;

    iget-object p1, p1, LC5/h$W;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LC5/h$W$c$a$a;->b:LC5/h$W$c$a;

    iget-object p1, p1, LC5/h$W$c$a;->a:LC5/h$W$c;

    iget-object p1, p1, LC5/h$W$c;->a:LC5/h$W;

    iget-object p1, p1, LC5/h$W;->c:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object p1, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") copied to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " folder"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_a
    iget-object p1, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    const-string p2, "failed to import file"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_b
    iget-object p1, p0, LC5/h$W$c$a$a;->a:Landroid/app/Activity;

    const-string p2, "File format not allowed"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_c
    :goto_2
    return-void
.end method
