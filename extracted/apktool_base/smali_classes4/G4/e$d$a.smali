.class public LG4/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG4/e$d;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LG4/e$d;


# direct methods
.method public constructor <init>(LG4/e$d;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LG4/e$d$a;->c:LG4/e$d;

    iput-object p2, p0, LG4/e$d$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LG4/e$d$a;->c:LG4/e$d;

    iget-object v0, v0, LG4/e$d;->b:LG4/e;

    invoke-static {v0}, LG4/e;->q1(LG4/e;)LG4/f;

    move-result-object v0

    iget-object v1, p0, LG4/e$d$a;->b:Landroid/view/View;

    iget-object v2, p0, LG4/e$d$a;->c:LG4/e$d;

    iget-object v2, v2, LG4/e$d;->b:LG4/e;

    invoke-interface {v0, v1, v2}, LG4/f;->a(Landroid/view/View;LG4/e;)V

    return-void
.end method
