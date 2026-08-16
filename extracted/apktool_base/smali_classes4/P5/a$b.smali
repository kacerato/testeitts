.class public LP5/a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP5/a;->p()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP5/a;


# direct methods
.method public constructor <init>(LP5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP5/a$b;->b:LP5/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, LN7/c;->z()Ly0/b;

    move-result-object p1

    invoke-virtual {p1}, Ly0/b;->C()Lv1/k;

    invoke-virtual {p1}, Ly0/b;->g0()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x2329

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, LP5/a$b;->b:LP5/a;

    invoke-virtual {p1}, Ls7/c;->t()V

    return-void
.end method
