.class public Ld8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/h$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

.field public b:Ljava/util/List;

.field public c:Ld8/h$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayList"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld8/h;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 3
    sget-object p1, Ld8/h$a;->SteppedArrayList:Ld8/h$a;

    iput-object p1, p0, Ld8/h;->c:Ld8/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ld8/h;->b:Ljava/util/List;

    .line 6
    sget-object p1, Ld8/h$a;->List:Ld8/h$a;

    iput-object p1, p0, Ld8/h;->c:Ld8/h$a;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Ld8/h;->c:Ld8/h$a;

    sget-object v1, Ld8/h$a;->SteppedArrayList:Ld8/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld8/h;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Ld8/h$a;->List:Ld8/h$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ld8/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "value"
        }
    .end annotation

    iget-object v0, p0, Ld8/h;->c:Ld8/h$a;

    sget-object v1, Ld8/h$a;->SteppedArrayList:Ld8/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld8/h;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Ld8/h$a;->List:Ld8/h$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ld8/h;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Ld8/h;->c:Ld8/h$a;

    sget-object v1, Ld8/h$a;->SteppedArrayList:Ld8/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld8/h;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    sget-object v1, Ld8/h$a;->List:Ld8/h$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ld8/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
