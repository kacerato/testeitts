.class public final Lcom/google/protobuf/H$p$b;
.super Lcom/google/protobuf/w0$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$d<",
        "Lcom/google/protobuf/H$p;",
        "Lcom/google/protobuf/H$p$b;",
        ">;",
        "Lcom/google/protobuf/H$q;"
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$P;",
            "Lcom/google/protobuf/H$P$b;",
            "Lcom/google/protobuf/H$Q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$d;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/H$p$b;->d:I

    .line 5
    iput v0, p0, Lcom/google/protobuf/H$p$b;->f:I

    .line 6
    iput v0, p0, Lcom/google/protobuf/H$p$b;->l:I

    .line 7
    iput v0, p0, Lcom/google/protobuf/H$p$b;->m:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/google/protobuf/H$p$b;->d:I

    .line 11
    iput p1, p0, Lcom/google/protobuf/H$p$b;->f:I

    .line 12
    iput p1, p0, Lcom/google/protobuf/H$p$b;->l:I

    .line 13
    iput p1, p0, Lcom/google/protobuf/H$p$b;->m:I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$p$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->m()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private i7()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    :cond_0
    return-void
.end method

.method private m7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$P;",
            "Lcom/google/protobuf/H$P$b;",
            "Lcom/google/protobuf/H$Q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v2, v2, 0x400

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

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public A7(ILcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$p$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$P$b;->t6()Lcom/google/protobuf/H$P;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$P$b;->t6()Lcom/google/protobuf/H$P;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public B7(ILcom/google/protobuf/H$P;)Lcom/google/protobuf/H$p$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final C7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;
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

    check-cast p1, Lcom/google/protobuf/H$p$b;

    return-object p1
.end method

.method public D7(Z)Lcom/google/protobuf/H$p$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$p$b;->h:Z

    iget p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E7(Z)Lcom/google/protobuf/H$p$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$p$b;->j:Z

    iget p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L4()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public L6(Ljava/lang/Iterable;)Lcom/google/protobuf/H$p$b;
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
            "Lcom/google/protobuf/H$P;",
            ">;)",
            "Lcom/google/protobuf/H$p$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public M0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M6(ILcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$p$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$P$b;->t6()Lcom/google/protobuf/H$P;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$P$b;->t6()Lcom/google/protobuf/H$P;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public N6(ILcom/google/protobuf/H$P;)Lcom/google/protobuf/H$p$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public O6(Lcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$p$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$P$b;->t6()Lcom/google/protobuf/H$P;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$P$b;->t6()Lcom/google/protobuf/H$P;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public P6(Lcom/google/protobuf/H$P;)Lcom/google/protobuf/H$p$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public Q6()Lcom/google/protobuf/H$P$b;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->m7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$P;->E6()Lcom/google/protobuf/H$P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$P$b;

    return-object v0
.end method

.method public R4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R6(I)Lcom/google/protobuf/H$P$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->m7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$P;->E6()Lcom/google/protobuf/H$P;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$b;

    return-object p1
.end method

.method public S6()Lcom/google/protobuf/H$p;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->T6()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public T2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p$b;->g:Z

    return v0
.end method

.method public T6()Lcom/google/protobuf/H$p;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$p;-><init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->V6(Lcom/google/protobuf/H$p;)V

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->U6(Lcom/google/protobuf/H$p;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public final U6(Lcom/google/protobuf/H$p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/H$p$b;->d:I

    invoke-static {p1, v1}, Lcom/google/protobuf/H$p;->E6(Lcom/google/protobuf/H$p;I)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/protobuf/H$p$b;->e:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->F6(Lcom/google/protobuf/H$p;Z)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/H$p$b;->f:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->G6(Lcom/google/protobuf/H$p;I)I

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/protobuf/H$p$b;->g:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->H6(Lcom/google/protobuf/H$p;Z)Z

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/protobuf/H$p$b;->h:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->I6(Lcom/google/protobuf/H$p;Z)Z

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/protobuf/H$p$b;->i:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->J6(Lcom/google/protobuf/H$p;Z)Z

    or-int/lit8 v1, v1, 0x20

    :cond_5
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/protobuf/H$p$b;->j:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->K6(Lcom/google/protobuf/H$p;Z)Z

    or-int/lit8 v1, v1, 0x40

    :cond_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/google/protobuf/H$p$b;->k:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->L6(Lcom/google/protobuf/H$p;Z)Z

    or-int/lit16 v1, v1, 0x80

    :cond_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/H$p$b;->l:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$p;->M6(Lcom/google/protobuf/H$p;I)I

    or-int/lit16 v1, v1, 0x100

    :cond_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/protobuf/H$p$b;->m:I

    invoke-static {p1, v0}, Lcom/google/protobuf/H$p;->N6(Lcom/google/protobuf/H$p;I)I

    or-int/lit16 v1, v1, 0x200

    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/H$p;->O6(Lcom/google/protobuf/H$p;I)I

    return-void
.end method

.method public V1()Lcom/google/protobuf/H$p$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->d:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$c;->a(I)Lcom/google/protobuf/H$p$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$c;->STRING:Lcom/google/protobuf/H$p$c;

    :cond_0
    return-object v0
.end method

.method public final V6(Lcom/google/protobuf/H$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$p;->D6(Lcom/google/protobuf/H$p;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$p;->D6(Lcom/google/protobuf/H$p;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public W6()Lcom/google/protobuf/H$p$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    iput v0, p0, Lcom/google/protobuf/H$p$b;->d:I

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->e:Z

    iput v0, p0, Lcom/google/protobuf/H$p$b;->f:I

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->g:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->h:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->i:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->j:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->k:Z

    iput v0, p0, Lcom/google/protobuf/H$p$b;->l:I

    iput v0, p0, Lcom/google/protobuf/H$p$b;->m:I

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    return-object p0
.end method

.method public X3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X6()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$p$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y6()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->k:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z6()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->i:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a6()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$p$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public b(I)Lcom/google/protobuf/H$P;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P;

    return-object p1
.end method

.method public b4()Lcom/google/protobuf/H$p$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->f:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$d;->a(I)Lcom/google/protobuf/H$p$d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$d;->JS_NORMAL:Lcom/google/protobuf/H$p$d;

    :cond_0
    return-object v0
.end method

.method public b7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->g:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->S6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->S6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->T6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->T6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$Q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c4()Lcom/google/protobuf/H$p$f;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->m:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$f;->a(I)Lcom/google/protobuf/H$p$f;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_UNKNOWN:Lcom/google/protobuf/H$p$f;

    :cond_0
    return-object v0
.end method

.method public c7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->e:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->W6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->W6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->W6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->W6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public d7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$p$b;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public e7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$p$b;->m:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public f7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public g(I)Lcom/google/protobuf/H$Q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$Q;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$Q;

    return-object p1
.end method

.method public g7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->h:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->j7()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->j7()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->m()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getRetention()Lcom/google/protobuf/H$p$e;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->l:I

    invoke-static {v0}, Lcom/google/protobuf/H$p$e;->a(I)Lcom/google/protobuf/H$p$e;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$e;->RETENTION_UNKNOWN:Lcom/google/protobuf/H$p$e;

    :cond_0
    return-object v0
.end method

.method public getWeak()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p$b;->j:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h7()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$p$b;->j:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public hasRetention()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p$b;->i:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->n()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$p;

    const-class v2, Lcom/google/protobuf/H$p$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$p$b;->b(I)Lcom/google/protobuf/H$P;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$P;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$d;->y6()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public j7()Lcom/google/protobuf/H$p;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v0

    return-object v0
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p$b;->e:Z

    return v0
.end method

.method public k7(I)Lcom/google/protobuf/H$P$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->m7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$b;

    return-object p1
.end method

.method public l6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p$b;->h:Z

    return v0
.end method

.method public l7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->m7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$p$b;->k:Z

    return v0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$p$b;->n7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->p7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$p$b;->n7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->p7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$p$b;->n7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$p$b;->n7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->q7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->q7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->q7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;

    move-result-object p1

    return-object p1
.end method

.method public n7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$p$b;
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
    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$d;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :sswitch_1
    sget-object v1, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$P;

    iget-object v2, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v2, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$p$f;->a(I)Lcom/google/protobuf/H$p$f;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, 0x12

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/google/protobuf/H$p$b;->m:I

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$p$e;->a(I)Lcom/google/protobuf/H$p$e;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/google/protobuf/H$p$b;->l:I

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$p$b;->k:Z

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$p$b;->h:Z

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$p$b;->j:Z

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$p$d;->a(I)Lcom/google/protobuf/H$p$d;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_4
    iput v1, p0, Lcom/google/protobuf/H$p$b;->f:I

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$p$b;->g:Z

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$p$b;->i:Z

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$p$b;->e:Z

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$p$c;->a(I)Lcom/google/protobuf/H$p$c;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_5
    iput v1, p0, Lcom/google/protobuf/H$p$b;->d:I

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I
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

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x50 -> :sswitch_6
        0x78 -> :sswitch_5
        0x80 -> :sswitch_4
        0x88 -> :sswitch_3
        0x90 -> :sswitch_2
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public o7(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->L4()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->V1()Lcom/google/protobuf/H$p$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->s7(Lcom/google/protobuf/H$p$c;)Lcom/google/protobuf/H$p$b;

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->m2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->k0()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->x7(Z)Lcom/google/protobuf/H$p$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->H0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->b4()Lcom/google/protobuf/H$p$d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->v7(Lcom/google/protobuf/H$p$d;)Lcom/google/protobuf/H$p$b;

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->a6()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->T2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->w7(Z)Lcom/google/protobuf/H$p$b;

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->M0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->l6()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->D7(Z)Lcom/google/protobuf/H$p$b;

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->u7(Z)Lcom/google/protobuf/H$p$b;

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->X3()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->getWeak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->E7(Z)Lcom/google/protobuf/H$p$b;

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->R4()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->m4()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->t7(Z)Lcom/google/protobuf/H$p$b;

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->hasRetention()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->getRetention()Lcom/google/protobuf/H$p$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->y7(Lcom/google/protobuf/H$p$e;)Lcom/google/protobuf/H$p$b;

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->h2()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/H$p;->c4()Lcom/google/protobuf/H$p$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$p$b;->z7(Lcom/google/protobuf/H$p$f;)Lcom/google/protobuf/H$p$b;

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/google/protobuf/H$p;->C6(Lcom/google/protobuf/H$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/google/protobuf/H$p;->C6(Lcom/google/protobuf/H$p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$p;->C6(Lcom/google/protobuf/H$p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_c
    invoke-static {p1}, Lcom/google/protobuf/H$p;->C6(Lcom/google/protobuf/H$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$p;->C6(Lcom/google/protobuf/H$p;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/protobuf/H$p$b;->c:I

    sget-boolean v1, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->m7()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_d
    iput-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$p;->C6(Lcom/google/protobuf/H$p;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_f
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->A6(Lcom/google/protobuf/w0$e;)V

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->q7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public p7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$p$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$p;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->o7(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final q7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;
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

    check-cast p1, Lcom/google/protobuf/H$p$b;

    return-object p1
.end method

.method public r7(I)Lcom/google/protobuf/H$p$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$p$b;->i7()V

    iget-object v0, p0, Lcom/google/protobuf/H$p$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic s6()Lcom/google/protobuf/w0$d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$p$b;->W6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    return-object v0
.end method

.method public s7(Lcom/google/protobuf/H$p$c;)Lcom/google/protobuf/H$p$b;
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

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$p$c;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$p$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->C7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$p$b;->C7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$p$b;

    move-result-object p1

    return-object p1
.end method

.method public t7(Z)Lcom/google/protobuf/H$p$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$p$b;->k:Z

    iget p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u7(Z)Lcom/google/protobuf/H$p$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$p$b;->i:Z

    iget p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v7(Lcom/google/protobuf/H$p$d;)Lcom/google/protobuf/H$p$b;
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

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$p$d;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$p$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w7(Z)Lcom/google/protobuf/H$p$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$p$b;->g:Z

    iget p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public x7(Z)Lcom/google/protobuf/H$p$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$p$b;->e:Z

    iget p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public y7(Lcom/google/protobuf/H$p$e;)Lcom/google/protobuf/H$p$b;
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

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$p$e;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$p$b;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z7(Lcom/google/protobuf/H$p$f;)Lcom/google/protobuf/H$p$b;
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

    iget v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/H$p$b;->c:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$p$f;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$p$b;->m:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
