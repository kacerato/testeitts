.class public final Lv1/v;
.super Lv1/a;
.source "SourceFile"


# instance fields
.field public final a:Lv1/Q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv1/a;-><init>()V

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    iput-object v0, p0, Lv1/v;->a:Lv1/Q;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lv1/v;->a:Lv1/Q;

    invoke-virtual {v0}, Lv1/Q;->u()Z

    move-result v0

    return v0
.end method

.method public final b(Lv1/h;)Lv1/a;
    .locals 2
    .param p1    # Lv1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lv1/o;

    invoke-direct {v0, p0, p1}, Lv1/o;-><init>(Lv1/v;Lv1/h;)V

    iget-object p1, p0, Lv1/v;->a:Lv1/Q;

    sget-object v1, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lv1/Q;->k(Ljava/util/concurrent/Executor;Lv1/g;)Lv1/k;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lv1/v;->a:Lv1/Q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv1/Q;->C(Ljava/lang/Object;)Z

    return-void
.end method
