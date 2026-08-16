.class public Lcom/google/protobuf/F1$c;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/F1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/t0;",
        "BType:",
        "Lcom/google/protobuf/t0$f;",
        "IType::",
        "Lcom/google/protobuf/e1;",
        ">",
        "Ljava/util/AbstractList<",
        "TIType;>;",
        "Ljava/util/List<",
        "TIType;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/protobuf/F1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/F1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/F1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/F1<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/F1$c;->b:Lcom/google/protobuf/F1;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/F1$c;->j(I)Lcom/google/protobuf/e1;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Lcom/google/protobuf/e1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/F1$c;->b:Lcom/google/protobuf/F1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F1$c;->b:Lcom/google/protobuf/F1;

    invoke-virtual {v0}, Lcom/google/protobuf/F1;->n()I

    move-result v0

    return v0
.end method
