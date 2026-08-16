.class public abstract Lqe/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lqe/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lqe/j$a;

    invoke-direct {v0}, Lqe/j$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b(LUm/v;)Ljava/util/List;
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/v;",
            ")",
            "Ljava/util/List<",
            "LUm/v;",
            ">;"
        }
    .end annotation
.end method
