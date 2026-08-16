.class public Lqe/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/r;->d(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/text/Spanned;

.field public final synthetic d:Landroid/widget/TextView$BufferType;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lqe/r$b;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lqe/r$b;->c:Landroid/text/Spanned;

    iput-object p3, p0, Lqe/r$b;->d:Landroid/widget/TextView$BufferType;

    iput-object p4, p0, Lqe/r$b;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lqe/r$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lqe/r$b;->c:Landroid/text/Spanned;

    iget-object v2, p0, Lqe/r$b;->d:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lqe/r$b;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
