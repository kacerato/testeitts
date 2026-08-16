.class public Loi/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwh/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loi/f;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Loi/g;)V
    .locals 1

    iget-object v0, p0, Loi/f;->a:Ljava/util/List;

    invoke-virtual {p1}, Loi/g;->m()Lwh/e;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Loi/e;
    .locals 4

    new-instance v0, Loi/e;

    new-instance v1, Lwh/d;

    iget-object v2, p0, Loi/f;->a:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lwh/e;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lwh/e;

    invoke-direct {v1, v2}, Lwh/d;-><init>([Lwh/e;)V

    invoke-direct {v0, v1}, Loi/e;-><init>(Lwh/d;)V

    iget-object v1, p0, Loi/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method
