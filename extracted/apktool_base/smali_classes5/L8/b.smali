.class public LL8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LL8/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, LL8/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LL8/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LL8/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;
    .locals 1

    iget-object v0, p0, LL8/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LL8/b;->d(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mjp"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LL8/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LL8/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL8/c;

    invoke-virtual {v1, p1}, LL8/c;->y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LL8/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, LL8/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LL8/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, LL8/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mask"
        }
    .end annotation

    iput-object p1, p0, LL8/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-void
.end method
