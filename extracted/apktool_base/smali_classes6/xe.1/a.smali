.class public Lxe/a;
.super Lqe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe/a$b;,
        Lxe/a$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lqe/a;-><init>()V

    iput p1, p0, Lxe/a;->a:I

    iput-boolean p2, p0, Lxe/a;->b:Z

    return-void
.end method

.method public static synthetic l(Lxe/a;)Z
    .locals 0

    iget-boolean p0, p0, Lxe/a;->b:Z

    return p0
.end method

.method public static synthetic m(Lxe/a;)I
    .locals 0

    iget p0, p0, Lxe/a;->a:I

    return p0
.end method

.method public static n()Lxe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lxe/a;->q(Z)Lxe/a;

    move-result-object v0

    return-object v0
.end method

.method public static o(I)Lxe/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lxe/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxe/a;-><init>(IZ)V

    return-object v0
.end method

.method public static p(IZ)Lxe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lxe/a;

    invoke-direct {v0, p0, p1}, Lxe/a;-><init>(IZ)V

    return-object v0
.end method

.method public static q(Z)Lxe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x7

    invoke-static {v0, p0}, Lxe/a;->p(IZ)Lxe/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lqe/i$b;)V
    .locals 2
    .param p1    # Lqe/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lxe/a$a;

    invoke-direct {v0, p0}, Lxe/a$a;-><init>(Lxe/a;)V

    const-class v1, Lre/a;

    invoke-interface {p1, v1, v0}, Lqe/i$b;->c(Ljava/lang/Class;Lqe/i$a;)V

    return-void
.end method
