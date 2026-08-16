.class public LEk/D$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/D;
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
            "LEk/A;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([LEk/A;)LEk/D$a;
    .locals 1

    iget-object v0, p0, LEk/D$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEk/D$a;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, LEk/D$a;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b()LEk/D;
    .locals 2

    new-instance v0, LEk/D;

    iget-object v1, p0, LEk/D$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LEk/D;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public c(Ljava/util/List;)LEk/D$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LEk/A;",
            ">;)",
            "LEk/D$a;"
        }
    .end annotation

    iput-object p1, p0, LEk/D$a;->a:Ljava/util/List;

    return-object p0
.end method
