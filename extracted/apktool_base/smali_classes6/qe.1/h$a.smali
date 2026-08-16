.class public Lqe/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/h;->l(Landroid/widget/TextView;Landroid/text/Spanned;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lqe/h;


# direct methods
.method public constructor <init>(Lqe/h;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lqe/h$a;->c:Lqe/h;

    iput-object p2, p0, Lqe/h$a;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lqe/h$a;->c:Lqe/h;

    invoke-static {v0}, Lqe/h;->n(Lqe/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqe/i;

    iget-object v2, p0, Lqe/h$a;->b:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Lqe/i;->b(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    return-void
.end method
