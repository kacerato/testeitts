.class public Lx4/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageView",
            "subIconImageView",
            "eElement"
        }
    .end annotation

    instance-of p3, p4, Lx4/a$f;

    if-nez p3, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    check-cast p4, Lx4/a$f;

    invoke-static {p4}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object p3

    invoke-static {p3}, Lx4/a$e;->j(Lx4/a$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    invoke-static {p3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p4}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object p3

    invoke-static {p3}, Lx4/a$e;->j(Lx4/a$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lg6/c;->d(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f07026e

    invoke-static {p2, p3, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    return-void
.end method
