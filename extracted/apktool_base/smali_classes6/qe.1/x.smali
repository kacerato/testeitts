.class public Lqe/x;
.super Lqe/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqe/a;-><init>()V

    return-void
.end method

.method public static l()Lqe/x;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lqe/x;

    invoke-direct {v0}, Lqe/x;-><init>()V

    return-object v0
.end method


# virtual methods
.method public j(Lqe/m$b;)V
    .locals 2
    .param p1    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lqe/x$a;

    invoke-direct {v0, p0}, Lqe/x$a;-><init>(Lqe/x;)V

    const-class v1, LUm/y;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method
