.class public LG0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)LG0/J;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LG0/K;->c:LG0/K;

    invoke-static {p0, v0}, LG0/I;->b(Landroid/content/Context;LG0/K;)LG0/J;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;LG0/K;)LG0/J;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LG0/K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LJ0/p;

    invoke-direct {v0, p0, p1}, LJ0/p;-><init>(Landroid/content/Context;LG0/K;)V

    return-object v0
.end method
