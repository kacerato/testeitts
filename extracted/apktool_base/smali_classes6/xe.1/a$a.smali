.class public Lxe/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxe/a;->a(Lqe/i$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/i$a<",
        "Lre/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lxe/a;


# direct methods
.method public constructor <init>(Lxe/a;)V
    .locals 0

    iput-object p1, p0, Lxe/a$a;->a:Lxe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lqe/i;)V
    .locals 0
    .param p1    # Lqe/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lre/a;

    invoke-virtual {p0, p1}, Lxe/a$a;->b(Lre/a;)V

    return-void
.end method

.method public b(Lre/a;)V
    .locals 2
    .param p1    # Lre/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lxe/a$a;->a:Lxe/a;

    invoke-static {v0}, Lxe/a;->l(Lxe/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxe/a$b;

    iget-object v1, p0, Lxe/a$a;->a:Lxe/a;

    invoke-static {v1}, Lxe/a;->m(Lxe/a;)I

    move-result v1

    invoke-direct {v0, v1}, Lxe/a$b;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lxe/a$c;

    iget-object v1, p0, Lxe/a$a;->a:Lxe/a;

    invoke-static {v1}, Lxe/a;->m(Lxe/a;)I

    move-result v1

    invoke-direct {v0, v1}, Lxe/a$c;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, Lre/a;->o(Lre/a$p;)Lre/a;

    return-void
.end method
