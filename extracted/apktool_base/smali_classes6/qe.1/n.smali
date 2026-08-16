.class public abstract Lqe/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lqe/m$b;Lqe/g;)Lqe/n;
    .locals 1
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lqe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lqe/n$a;

    invoke-direct {v0, p0, p1}, Lqe/n$a;-><init>(Lqe/m$b;Lqe/g;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lqe/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
