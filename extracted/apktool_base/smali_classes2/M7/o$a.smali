.class public LM7/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LM7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/o;


# direct methods
.method public constructor <init>(LM7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM7/o$a;->a:LM7/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p3, p0, LM7/o$a;->a:LM7/o;

    invoke-static {p3}, LM7/o;->n0(LM7/o;)LM7/r;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, LM7/o$a;->a:LM7/o;

    invoke-static {p3}, LM7/o;->n0(LM7/o;)LM7/r;

    move-result-object p3

    iget-object v0, p0, LM7/o$a;->a:LM7/o;

    invoke-interface {p3, p1, p2, v0}, LM7/r;->a(Landroid/view/View;Landroid/content/Context;LM7/o;)V

    :cond_0
    iget-object p1, p0, LM7/o$a;->a:LM7/o;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LM7/o;->P0(Z)V

    return-void
.end method
