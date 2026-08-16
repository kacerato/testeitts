.class public final synthetic LE5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LC5/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE5/b;->b:LC5/b;

    iput-object p2, p0, LE5/b;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, LE5/b;->b:LC5/b;

    iget-object v1, p0, LE5/b;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, LE5/c;->a(LC5/b;Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
