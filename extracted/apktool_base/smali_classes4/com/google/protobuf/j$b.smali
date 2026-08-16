.class public final Lcom/google/protobuf/j$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/j$b;",
        ">;",
        "Lcom/google/protobuf/k;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/i1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/i1;",
            "Lcom/google/protobuf/i1$b;",
            "Lcom/google/protobuf/j1;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/u1;",
            "Lcom/google/protobuf/u1$b;",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Object;

.field public i:Lcom/google/protobuf/S1;

.field public j:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/S1;",
            "Lcom/google/protobuf/S1$b;",
            "Lcom/google/protobuf/T1;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/k1;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/k1;",
            "Lcom/google/protobuf/k1$b;",
            "Lcom/google/protobuf/l1;",
            ">;"
        }
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/protobuf/j$b;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/j$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/google/protobuf/j$b;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/j$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/l;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public A6(I)Lcom/google/protobuf/k1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->c7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/k1;->x6()Lcom/google/protobuf/k1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/k1$b;

    return-object p1
.end method

.method public A7(Lcom/google/protobuf/b2;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/j$b;->m:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B6(ILcom/google/protobuf/u1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public B7(I)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/j$b;->m:I

    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6(ILcom/google/protobuf/u1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final C7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/j$b;

    return-object p1
.end method

.method public D6(Lcom/google/protobuf/u1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public D7(Ljava/lang/String;)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E6(Lcom/google/protobuf/u1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public E7(Lcom/google/protobuf/x;)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public F6()Lcom/google/protobuf/u1$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->f7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u1$b;

    return-object v0
.end method

.method public G1()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public G6(I)Lcom/google/protobuf/u1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->f7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1$b;

    return-object p1
.end method

.method public H6()Lcom/google/protobuf/j;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->I6()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/j;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public I1(Ljava/lang/Iterable;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/k1;",
            ">;)",
            "Lcom/google/protobuf/j$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public I6()Lcom/google/protobuf/j;
    .locals 2

    new-instance v0, Lcom/google/protobuf/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/j;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/j$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j$b;->K6(Lcom/google/protobuf/j;)V

    iget v1, p0, Lcom/google/protobuf/j$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j$b;->J6(Lcom/google/protobuf/j;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public J0(I)Lcom/google/protobuf/l1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/l1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/l1;

    return-object p1
.end method

.method public J3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/k1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final J6(Lcom/google/protobuf/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/j;->A6(Lcom/google/protobuf/j;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/j;->C6(Lcom/google/protobuf/j;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/S1;

    :goto_0
    invoke-static {p1, v1}, Lcom/google/protobuf/j;->D6(Lcom/google/protobuf/j;Lcom/google/protobuf/S1;)Lcom/google/protobuf/S1;

    :cond_3
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/protobuf/j$b;->m:I

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->F6(Lcom/google/protobuf/j;I)I

    :cond_4
    return-void
.end method

.method public K1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final K6(Lcom/google/protobuf/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->u6(Lcom/google/protobuf/j;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->u6(Lcom/google/protobuf/j;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->w6(Lcom/google/protobuf/j;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->w6(Lcom/google/protobuf/j;Ljava/util/List;)Ljava/util/List;

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->y6(Lcom/google/protobuf/j;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/j;->y6(Lcom/google/protobuf/j;Ljava/util/List;)Ljava/util/List;

    :goto_2
    return-void
.end method

.method public L6()Lcom/google/protobuf/j$b;
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v2, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/protobuf/j$b;->b:I

    iget-object v2, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/protobuf/G1;->h()V

    :goto_1
    iget v2, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/protobuf/j$b;->b:I

    iput-object v1, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v3, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    :goto_2
    iget v1, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/protobuf/j$b;->b:I

    iput v0, p0, Lcom/google/protobuf/j$b;->m:I

    return-object p0
.end method

.method public M6()Lcom/google/protobuf/j$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public N6()Lcom/google/protobuf/j$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public O6()Lcom/google/protobuf/j$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/j;->G6()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/j;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P6()Lcom/google/protobuf/j$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public Q6()Lcom/google/protobuf/j$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R6()Lcom/google/protobuf/j$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/j$b;->m:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public S4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/l1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public S6()Lcom/google/protobuf/j$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/j;->G6()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/j;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final T6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    :cond_0
    return-void
.end method

.method public final U6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    :cond_0
    return-void
.end method

.method public final V6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    :cond_0
    return-void
.end method

.method public W6()Lcom/google/protobuf/j;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/j;->G6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public X6(I)Lcom/google/protobuf/i1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->Z6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i1$b;

    return-object p1
.end method

.method public Y6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/i1$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->Z6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final Z6()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/i1;",
            "Lcom/google/protobuf/i1$b;",
            "Lcom/google/protobuf/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public a4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/i1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a5(ILcom/google/protobuf/i1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/i1$b;->t6()Lcom/google/protobuf/i1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/i1$b;->t6()Lcom/google/protobuf/i1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public a7(I)Lcom/google/protobuf/k1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->c7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/k1$b;

    return-object p1
.end method

.method public b7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/k1$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->c7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->H6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->H6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->I6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->I6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public final c7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/k1;",
            "Lcom/google/protobuf/k1$b;",
            "Lcom/google/protobuf/l1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->L6()Lcom/google/protobuf/j$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->L6()Lcom/google/protobuf/j$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->L6()Lcom/google/protobuf/j$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->L6()Lcom/google/protobuf/j$b;

    move-result-object v0

    return-object v0
.end method

.method public d7(I)Lcom/google/protobuf/u1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->f7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1$b;

    return-object p1
.end method

.method public e7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->f7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/u1;",
            "Lcom/google/protobuf/u1$b;",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public g7()Lcom/google/protobuf/S1$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->h7()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/S1$b;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->W6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->W6()Lcom/google/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/l;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public final h7()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/S1;",
            "Lcom/google/protobuf/S1$b;",
            "Lcom/google/protobuf/T1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->x()Lcom/google/protobuf/S1;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public i1(I)Lcom/google/protobuf/i1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i1;

    return-object p1
.end method

.method public i7(Lcom/google/protobuf/j;)Lcom/google/protobuf/j$b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/j;->G6()Lcom/google/protobuf/j;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/j;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/j;->z6(Lcom/google/protobuf/j;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/j;->t6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/j;->t6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/j;->t6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/j;->t6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/j;->t6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->Z6()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/j;->t6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/j;->v6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/j;->v6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/j;->v6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lcom/google/protobuf/j;->v6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/j;->v6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->f7()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/j;->v6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/j;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/google/protobuf/j;->B6(Lcom/google/protobuf/j;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/j;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/j;->x()Lcom/google/protobuf/S1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j$b;->l7(Lcom/google/protobuf/S1;)Lcom/google/protobuf/j$b;

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/google/protobuf/j;->x6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/j;->x6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/j;->x6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_7

    :cond_f
    invoke-static {p1}, Lcom/google/protobuf/j;->x6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/j;->x6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/j$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->c7()Lcom/google/protobuf/G1;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/j;->x6(Lcom/google/protobuf/j;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_12
    :goto_7
    invoke-static {p1}, Lcom/google/protobuf/j;->E6(Lcom/google/protobuf/j;)I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/google/protobuf/j;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j$b;->B7(I)Lcom/google/protobuf/j$b;

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/l;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/j;

    const-class v2, Lcom/google/protobuf/j$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/j$b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_b

    const/16 v3, 0x12

    if-eq v1, v3, :cond_9

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_7

    const/16 v3, 0x22

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x32

    if-eq v1, v3, :cond_3

    const/16 v3, 0x38

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/j$b;->m:I

    iget v1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/j$b;->b:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/k1;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/k1;

    iget-object v2, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v2, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->h7()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/j$b;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j$b;->h:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/j$b;->b:I

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/u1;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/u1;

    iget-object v2, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v2, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/google/protobuf/i1;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/i1;

    iget-object v2, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v2, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/j$b;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public k(I)Lcom/google/protobuf/u1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1;

    return-object p1
.end method

.method public k7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/j;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->i7(Lcom/google/protobuf/j;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l(I)Lcom/google/protobuf/v1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/v1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/v1;

    return-object p1
.end method

.method public l7(Lcom/google/protobuf/S1;)Lcom/google/protobuf/j$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/S1;->v6()Lcom/google/protobuf/S1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->g7()Lcom/google/protobuf/S1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/S1$b;->u6(Lcom/google/protobuf/S1;)Lcom/google/protobuf/S1$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public m()Lcom/google/protobuf/b2;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j$b;->m:I

    invoke-static {v0}, Lcom/google/protobuf/b2;->a(I)Lcom/google/protobuf/b2;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/b2;->UNRECOGNIZED:Lcom/google/protobuf/b2;

    :cond_0
    return-object v0
.end method

.method public m1(Ljava/lang/Iterable;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/i1;",
            ">;)",
            "Lcom/google/protobuf/j$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public m5(I)Lcom/google/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/j1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/j1;

    return-object p1
.end method

.method public m6(I)Lcom/google/protobuf/k1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/k1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/k1;

    return-object p1
.end method

.method public final m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/j$b;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j$b;->j7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->k7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j$b;->j7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->k7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j$b;->j7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j$b;->j7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public n7(I)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o7(I)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j$b;->m:I

    return v0
.end method

.method public p7(I)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public q6(ILcom/google/protobuf/i1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public q7(ILcom/google/protobuf/i1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/i1$b;->t6()Lcom/google/protobuf/i1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/i1$b;->t6()Lcom/google/protobuf/i1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r6(Lcom/google/protobuf/i1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/i1$b;->t6()Lcom/google/protobuf/i1;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/i1$b;->t6()Lcom/google/protobuf/i1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r7(ILcom/google/protobuf/i1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public s6(Lcom/google/protobuf/i1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->T6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public s7(ILcom/google/protobuf/k1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/k1$b;->m1()Lcom/google/protobuf/k1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/k1$b;->m1()Lcom/google/protobuf/k1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->C7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j$b;->C7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/i1$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->Z6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/i1;->F6()Lcom/google/protobuf/i1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/i1$b;

    return-object v0
.end method

.method public t7(ILcom/google/protobuf/k1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public u6(I)Lcom/google/protobuf/i1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->Z6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/i1;->F6()Lcom/google/protobuf/i1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i1$b;

    return-object p1
.end method

.method public u7(Ljava/lang/String;)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/j$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v3(Ljava/lang/Iterable;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/u1;",
            ">;)",
            "Lcom/google/protobuf/j$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public v6(ILcom/google/protobuf/k1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/k1$b;->m1()Lcom/google/protobuf/k1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/k1$b;->m1()Lcom/google/protobuf/k1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public v7(Lcom/google/protobuf/x;)Lcom/google/protobuf/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w6(ILcom/google/protobuf/k1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public w7(ILcom/google/protobuf/u1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public x()Lcom/google/protobuf/S1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/S1;->v6()Lcom/google/protobuf/S1;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/S1;

    return-object v0
.end method

.method public x6(Lcom/google/protobuf/k1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/k1$b;->m1()Lcom/google/protobuf/k1;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/k1$b;->m1()Lcom/google/protobuf/k1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public x7(ILcom/google/protobuf/u1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->g:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->V6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public y()Lcom/google/protobuf/T1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/T1;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/S1;->v6()Lcom/google/protobuf/S1;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public y6(Lcom/google/protobuf/k1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->l:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->U6()V

    iget-object v0, p0, Lcom/google/protobuf/j$b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public y7(Lcom/google/protobuf/S1$b;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/S1$b;->m1()Lcom/google/protobuf/S1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/S1$b;->m1()Lcom/google/protobuf/S1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6()Lcom/google/protobuf/k1$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/j$b;->c7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/k1;->x6()Lcom/google/protobuf/k1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/k1$b;

    return-object v0
.end method

.method public z7(Lcom/google/protobuf/S1;)Lcom/google/protobuf/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j$b;->j:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/j$b;->i:Lcom/google/protobuf/S1;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/j$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/j$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
