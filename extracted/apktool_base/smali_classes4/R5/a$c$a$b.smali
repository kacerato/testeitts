.class public LR5/a$c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR5/a$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR5/a$c$a;


# direct methods
.method public constructor <init>(LR5/a$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LR5/a$c$a$b;->a:LR5/a$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LR5/a$c$a$b;->a:LR5/a$c$a;

    iget-object p1, p1, LR5/a$c$a;->b:LR5/a$c;

    iget-object p1, p1, LR5/a$c;->b:LR5/a;

    invoke-virtual {p1}, Ls7/c;->f()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "https://itsmagic.com.br/privacypolicy.html"

    invoke-static {v0, p1}, LIc/i;->p(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
