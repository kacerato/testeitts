.class public Lcom/google/protobuf/J0$b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/google/protobuf/x;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/J0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/J0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/J0$b;->b:Lcom/google/protobuf/J0;

    return-void
.end method


# virtual methods
.method public a(ILcom/google/protobuf/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/J0$b;->b:Lcom/google/protobuf/J0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/J0;->g(Lcom/google/protobuf/J0;ILcom/google/protobuf/x;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/x;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/J0$b;->a(ILcom/google/protobuf/x;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/J0$b;->j(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/J0$b;->b:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/J0$b;->b:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->p(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/protobuf/J0;->f(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public l(ILcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/J0$b;->b:Lcom/google/protobuf/J0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/J0;->e(Lcom/google/protobuf/J0;ILcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/protobuf/J0;->f(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/J0$b;->k(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    check-cast p2, Lcom/google/protobuf/x;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/J0$b;->l(ILcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/J0$b;->b:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
.end method
