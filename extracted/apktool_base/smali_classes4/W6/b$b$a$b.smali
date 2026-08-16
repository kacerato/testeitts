.class public LW6/b$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW6/b$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW6/b$b$a;


# direct methods
.method public constructor <init>(LW6/b$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LW6/b$b$a$b;->a:LW6/b$b$a;

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

    iget-object p1, p0, LW6/b$b$a$b;->a:LW6/b$b$a;

    iget-object p1, p1, LW6/b$b$a;->b:LW6/b$b;

    iget-object p1, p1, LW6/b$b;->b:LW6/b;

    invoke-virtual {p1}, LV6/d;->c()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "https://itsmagic.com.br/privacypolicy.html"

    invoke-static {v0, p1}, LIc/i;->p(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
