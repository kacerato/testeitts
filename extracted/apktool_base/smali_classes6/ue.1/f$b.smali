.class public Lue/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lue/e$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue/f;->b(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lue/f$b;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lue/f$b$a;

    invoke-direct {p1, p0}, Lue/f$b$a;-><init>(Lue/f$b;)V

    iput-object p1, p0, Lue/f$b;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lue/f$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lue/f$b;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lue/f$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lue/f$b;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
