.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final d:I = 0x3


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->b:[Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v2, 0x0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->c:I

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->b:[Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minBytes"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->d(I)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->b:[Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->c:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->b:[Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->c:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->b:[Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    return-void
.end method
