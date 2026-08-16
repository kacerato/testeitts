.class public Lse/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqe/g;Lqe/v;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lqe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p2, Lte/a;

    invoke-virtual {p1}, Lqe/g;->h()Lre/c;

    move-result-object p1

    invoke-direct {p2, p1}, Lte/a;-><init>(Lre/c;)V

    return-object p2
.end method
