.class public LG5/a$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG5/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG5/a$g;


# direct methods
.method public constructor <init>(LG5/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LG5/a$g$b;->a:LG5/a$g;

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

    iget-object p1, p0, LG5/a$g$b;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, LG5/a$k;->b(Ljava/lang/String;)V

    iget-object p1, p0, LG5/a$g$b;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->u(LG5/a;)V

    return-void
.end method
