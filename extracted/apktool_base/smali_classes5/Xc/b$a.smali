.class public LXc/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXc/b;->v(Landroid/app/Activity;LXc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lz7/b;

.field public final synthetic c:LXc/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lz7/b;LXc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$activity",
            "val$popupWindow",
            "val$exporterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LXc/b$a;->a:Landroid/app/Activity;

    iput-object p2, p0, LXc/b$a;->b:Lz7/b;

    iput-object p3, p0, LXc/b$a;->c:LXc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "context"
        }
    .end annotation

    new-instance p2, LXc/b;

    iget-object v0, p0, LXc/b$a;->a:Landroid/app/Activity;

    new-instance v1, LXc/b$a$a;

    invoke-direct {v1, p0}, LXc/b$a$a;-><init>(LXc/b$a;)V

    iget-object v2, p0, LXc/b$a;->c:LXc/a;

    invoke-direct {p2, p1, v0, v1, v2}, LXc/b;-><init>(Landroid/view/View;Landroid/app/Activity;LYc/b;LXc/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "throwable"
        }
    .end annotation

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
