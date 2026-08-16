.class public Lp7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp7/c;->b:Z

    iput-object p1, p0, Lp7/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lp7/c;->b(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lp7/c;->b:Z

    invoke-virtual {p0, v0}, Lp7/c;->b(Z)V

    iget-boolean v0, p0, Lp7/c;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-object v0, p0, Lp7/c;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c(Z)Lp7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iput-boolean p1, p0, Lp7/c;->b:Z

    invoke-virtual {p0, p1}, Lp7/c;->b(Z)V

    return-object p0
.end method
