.class public LD0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# instance fields
.field public final b:LD0/i;
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LD0/i;)V
    .locals 0
    .param p1    # LD0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/h;->b:LD0/i;

    return-void
.end method

.method public static c(LD0/g;)LD0/i;
    .locals 1
    .param p0    # LD0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LD0/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LD0/g;->b()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, LD0/i1;->e(Landroidx/fragment/app/FragmentActivity;)LD0/i1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LD0/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LD0/g;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, LD0/f1;->e(Landroid/app/Activity;)LD0/f1;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/app/Activity;)LD0/i;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LD0/g;

    invoke-direct {v0, p0}, LD0/g;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, LD0/h;->c(LD0/g;)LD0/i;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/ContextWrapper;)LD0/i;
    .locals 0
    .param p0    # Landroid/content/ContextWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LD0/h;->b:LD0/i;

    invoke-interface {v0}, LD0/i;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public h()V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public i()V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public k()V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public l()V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method
