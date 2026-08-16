.class public Ld7/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/c;

.field public final synthetic b:[Landroid/os/Handler;

.field public final synthetic c:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;LM7/c;[Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$deleteConfirmButton",
            "val$deleteHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$g;->c:Ld7/a;

    iput-object p2, p0, Ld7/a$g;->a:LM7/c;

    iput-object p3, p0, Ld7/a$g;->b:[Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 2
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

    iget-object p1, p0, Ld7/a$g;->a:LM7/c;

    invoke-virtual {p1}, LM7/g;->j()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld7/a$g;->a:LM7/c;

    invoke-virtual {p1}, LM7/g;->g()V

    iget-object p1, p0, Ld7/a$g;->b:[Landroid/os/Handler;

    aget-object p3, p1, p2

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    aput-object p3, p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld7/a$g;->a:LM7/c;

    invoke-virtual {p1}, LM7/g;->p()V

    iget-object p1, p0, Ld7/a$g;->b:[Landroid/os/Handler;

    aget-object p3, p1, p2

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    aput-object p3, p1, p2

    new-instance p1, Ld7/a$g$a;

    invoke-direct {p1, p0}, Ld7/a$g$a;-><init>(Ld7/a$g;)V

    iget-object p3, p0, Ld7/a$g;->b:[Landroid/os/Handler;

    aget-object p2, p3, p2

    const-wide/16 v0, 0x32

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
