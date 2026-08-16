.class public Lse/d;
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

    new-instance p1, Lte/f;

    invoke-direct {p1}, Lte/f;-><init>()V

    return-object p1
.end method
