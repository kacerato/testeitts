.class public LR/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR/i;)V
    .locals 0
    .param p1    # LR/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, LR/i;->onStart()V

    return-void
.end method

.method public b(LR/i;)V
    .locals 0
    .param p1    # LR/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
