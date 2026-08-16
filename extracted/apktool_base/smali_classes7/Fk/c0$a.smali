.class public LFk/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LFk/P;",
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

    iput-object v0, p0, LFk/c0$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()LFk/c0;
    .locals 2

    new-instance v0, LFk/c0;

    iget-object v1, p0, LFk/c0$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LFk/c0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public varargs b([LFk/P;)LFk/c0$a;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, LFk/c0$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c(Ljava/util/List;)LFk/c0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LFk/P;",
            ">;)",
            "LFk/c0$a;"
        }
    .end annotation

    iput-object p1, p0, LFk/c0$a;->a:Ljava/util/List;

    return-object p0
.end method
