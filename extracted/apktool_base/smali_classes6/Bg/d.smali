.class public LBg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LBg/j;",
            ">;"
        }
    .end annotation
.end field

.field public b:LBg/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LBg/d;->a:Ljava/util/List;

    new-instance v0, LBg/f;

    invoke-direct {v0}, LBg/f;-><init>()V

    iput-object v0, p0, LBg/d;->b:LBg/f;

    return-void
.end method


# virtual methods
.method public a()LBg/f;
    .locals 1

    iget-object v0, p0, LBg/d;->b:LBg/f;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LBg/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LBg/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(LBg/f;)V
    .locals 0

    iput-object p1, p0, LBg/d;->b:LBg/f;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBg/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/d;->a:Ljava/util/List;

    return-void
.end method
