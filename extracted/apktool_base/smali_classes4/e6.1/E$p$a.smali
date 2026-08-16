.class public Le6/E$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E$p;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le6/E$p;


# direct methods
.method public constructor <init>(Le6/E$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Le6/E$p$a;->a:Le6/E$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le6/E$p$a;->a:Le6/E$p;

    iget-object v0, v0, Le6/E$p;->a:LSa/a;

    invoke-virtual {v0}, LSa/a;->G0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Le6/E$p$a;->a:Le6/E$p;

    iget-object v0, v0, Le6/E$p;->a:LSa/a;

    invoke-virtual {v0, p1}, LSa/a;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Le6/E$p$a;->a:Le6/E$p;

    iget-object p1, p1, Le6/E$p;->b:Le6/E;

    invoke-static {p1}, Le6/E;->u(Le6/E;)V

    iget-object p1, p0, Le6/E$p$a;->a:Le6/E$p;

    iget-object p1, p1, Le6/E$p;->b:Le6/E;

    invoke-virtual {p1}, Le6/E;->P0()V

    iget-object p1, p0, Le6/E$p$a;->a:Le6/E$p;

    iget-object p1, p1, Le6/E$p;->b:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
