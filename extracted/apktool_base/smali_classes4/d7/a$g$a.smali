.class public Ld7/a$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$g;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld7/a$g;


# direct methods
.method public constructor <init>(Ld7/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$g$a;->b:Ld7/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lrc/a;->L()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ltc/h;->q()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ltc/h;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v1, p0, Ld7/a$g$a;->b:Ld7/a$g;

    iget-object v1, v1, Ld7/a$g;->a:LM7/c;

    invoke-virtual {v1}, LM7/g;->g()V

    iget-object v1, p0, Ld7/a$g$a;->b:Ld7/a$g;

    iget-object v1, v1, Ld7/a$g;->b:[Landroid/os/Handler;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ld7/a$g$a;->b:Ld7/a$g;

    iget-object v1, v1, Ld7/a$g;->b:[Landroid/os/Handler;

    aget-object v0, v1, v0

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
