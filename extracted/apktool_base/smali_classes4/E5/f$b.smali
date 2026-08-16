.class public LE5/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/f;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LE5/f$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:LE5/f$i;

.field public final synthetic g:LE5/f;


# direct methods
.method public constructor <init>(LE5/f;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$context",
            "val$inputField",
            "val$tittle",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/f$b;->g:LE5/f;

    iput-object p2, p0, LE5/f$b;->b:LC5/b;

    iput-object p3, p0, LE5/f$b;->c:Landroid/content/Context;

    iput-object p4, p0, LE5/f$b;->d:Landroid/view/View;

    iput-object p5, p0, LE5/f$b;->e:Landroid/widget/TextView;

    iput-object p6, p0, LE5/f$b;->f:LE5/f$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object v0, p0, LE5/f$b;->g:LE5/f;

    iget-object v1, p0, LE5/f$b;->b:LC5/b;

    iget-object v2, p0, LE5/f$b;->c:Landroid/content/Context;

    iget-object v3, p0, LE5/f$b;->d:Landroid/view/View;

    iget-object v4, p0, LE5/f$b;->e:Landroid/widget/TextView;

    iget-object v5, p0, LE5/f$b;->f:LE5/f$i;

    invoke-static/range {v0 .. v5}, LE5/f;->a(LE5/f;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V

    const/4 p1, 0x1

    return p1
.end method
