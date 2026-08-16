.class public final LG0/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/f$a;


# instance fields
.field public final synthetic c:LD0/d;


# direct methods
.method public constructor <init>(LD0/d;)V
    .locals 0

    iput-object p1, p0, LG0/Y;->c:LD0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LG0/Y;->c:LD0/d;

    invoke-interface {v0, p1}, LD0/d;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, LG0/Y;->c:LD0/d;

    invoke-interface {v0, p1}, LD0/d;->k(I)V

    return-void
.end method
