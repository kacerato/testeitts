.class public Lv1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lv1/Q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    iput-object v0, p0, Lv1/l;->a:Lv1/Q;

    return-void
.end method

.method public constructor <init>(Lv1/a;)V
    .locals 1
    .param p1    # Lv1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    iput-object v0, p0, Lv1/l;->a:Lv1/Q;

    new-instance v0, Lv1/M;

    invoke-direct {v0, p0}, Lv1/M;-><init>(Lv1/l;)V

    invoke-virtual {p1, v0}, Lv1/a;->b(Lv1/h;)Lv1/a;

    return-void
.end method

.method public static bridge synthetic f(Lv1/l;)Lv1/Q;
    .locals 0

    iget-object p0, p0, Lv1/l;->a:Lv1/Q;

    return-object p0
.end method


# virtual methods
.method public a()Lv1/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lv1/l;->a:Lv1/Q;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lv1/l;->a:Lv1/Q;

    invoke-virtual {v0, p1}, Lv1/Q;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lv1/l;->a:Lv1/Q;

    invoke-virtual {v0, p1}, Lv1/Q;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lv1/l;->a:Lv1/Q;

    invoke-virtual {v0, p1}, Lv1/Q;->B(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lv1/l;->a:Lv1/Q;

    invoke-virtual {v0, p1}, Lv1/Q;->C(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
