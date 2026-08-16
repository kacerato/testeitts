.class public LC5/c$g;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c;->p(LC5/c$h;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/d;

.field public final synthetic c:LC5/c$h;

.field public final synthetic d:I

.field public final synthetic e:LC5/c;


# direct methods
.method public constructor <init>(LC5/c;LC5/d;LC5/c$h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$item",
            "val$holder",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, LC5/c$g;->e:LC5/c;

    iput-object p2, p0, LC5/c$g;->b:LC5/d;

    iput-object p3, p0, LC5/c$g;->c:LC5/c$h;

    iput p4, p0, LC5/c$g;->d:I

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

    iget-object p1, p0, LC5/c$g;->b:LC5/d;

    iget-object p1, p1, LC5/d;->f:LD5/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, LC5/c$g;->c:LC5/c$h;

    iget-object v0, v0, LC5/c$h;->a:Landroid/widget/Button;

    iget v1, p0, LC5/c$g;->d:I

    invoke-interface {p1, v0, v1}, LD5/a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
