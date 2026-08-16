.class public LG4/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG4/e;->w1(Ljava/util/List;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:LG4/e;


# direct methods
.method public constructor <init>(LG4/e;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries",
            "val$content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LG4/e$a;->c:LG4/e;

    iput-object p2, p0, LG4/e$a;->a:Ljava/util/List;

    iput-object p3, p0, LG4/e$a;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, LG4/e$a;->c:LG4/e;

    iget-object v0, p0, LG4/e$a;->a:Ljava/util/List;

    iget-object v1, p0, LG4/e$a;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, LG4/e;->p1(LG4/e;Ljava/util/List;Landroid/widget/LinearLayout;)V

    iget-object p1, p0, LG4/e$a;->c:LG4/e;

    invoke-static {p1}, LG4/e;->q1(LG4/e;)LG4/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LG4/e$a;->c:LG4/e;

    invoke-static {p1}, LG4/e;->q1(LG4/e;)LG4/f;

    move-result-object p1

    iget-object v0, p0, LG4/e$a;->c:LG4/e;

    invoke-interface {p1, v0}, LG4/f;->f(LG4/e;)V

    :cond_0
    return-void
.end method
