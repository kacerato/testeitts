.class public Lw5/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j;->g(Landroid/app/Activity;Landroid/content/Context;Ljd/b;Ljava/lang/String;Lw5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljd/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljd/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$o",
            "val$inProjectDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$d;->a:Ljd/b;

    iput-object p2, p0, Lw5/j$d;->b:Ljava/lang/String;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, Lw5/j$d;->a:Ljd/b;

    iget-object p1, p1, Ljd/b;->c:Ljd/b$a;

    sget-object v0, Ljd/b$a;->Object:Ljd/b$a;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lw5/j$d;->b:Ljava/lang/String;

    new-instance v0, Lw5/j$d$a;

    invoke-direct {v0, p0}, Lw5/j$d$a;-><init>(Lw5/j$d;)V

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljd/b$a;->Mesh:Ljd/b$a;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lw5/j$d;->b:Ljava/lang/String;

    invoke-static {p1, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw5/j$d;->b:Ljava/lang/String;

    invoke-static {p1, v0}, LLb/k;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljd/b$a;->Sound:Ljd/b$a;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljd/b$a;->ImportedAudio:Ljd/b$a;

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance p1, Lw5/j$d$b;

    invoke-direct {p1, p0}, Lw5/j$d$b;-><init>(Lw5/j$d;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
