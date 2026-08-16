.class public LFk/N$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/N;
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
            "LFk/r0;",
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

    iput-object v0, p0, LFk/N$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()LFk/N;
    .locals 2

    new-instance v0, LFk/N;

    iget-object v1, p0, LFk/N$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LFk/N;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)LFk/N$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LFk/r0;",
            ">;)",
            "LFk/N$a;"
        }
    .end annotation

    iput-object p1, p0, LFk/N$a;->a:Ljava/util/List;

    return-object p0
.end method

.method public varargs c([LFk/r0;)LFk/N$a;
    .locals 1

    iget-object v0, p0, LFk/N$a;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
