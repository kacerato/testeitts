.class public LJ7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ7/a;->e(ILandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LJ7/a;


# direct methods
.method public constructor <init>(LJ7/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalI"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJ7/a$b;->c:LJ7/a;

    iput p2, p0, LJ7/a$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LJ7/a$b;->c:LJ7/a;

    iget v0, p0, LJ7/a$b;->b:I

    invoke-static {p1, v0}, LJ7/a;->b(LJ7/a;I)I

    iget-object p1, p0, LJ7/a$b;->c:LJ7/a;

    invoke-static {p1}, LJ7/a;->c(LJ7/a;)V

    iget-object p1, p0, LJ7/a$b;->c:LJ7/a;

    invoke-static {p1}, LJ7/a;->d(LJ7/a;)LJ7/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LJ7/a$b;->c:LJ7/a;

    invoke-static {p1}, LJ7/a;->d(LJ7/a;)LJ7/a$c;

    move-result-object p1

    iget v0, p0, LJ7/a$b;->b:I

    invoke-interface {p1, v0}, LJ7/a$c;->a(I)V

    :cond_0
    return-void
.end method
