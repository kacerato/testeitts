.class public final Lcom/google/protobuf/H$j$b;
.super Lcom/google/protobuf/w0$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$d<",
        "Lcom/google/protobuf/H$j;",
        "Lcom/google/protobuf/H$j$b;",
        ">;",
        "Lcom/google/protobuf/H$k;"
    }
.end annotation


# instance fields
.field public c:I

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/protobuf/G1;
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

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;-><init>()V

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

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$j$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private Z6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    :cond_0
    return-void
.end method

.method private d7()Lcom/google/protobuf/G1;
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$j$b;->c:I

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

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->s()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public L6(Ljava/lang/Iterable;)Lcom/google/protobuf/H$j$b;
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
            "Lcom/google/protobuf/H$j$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public M6(ILcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$j$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

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

.method public N6(ILcom/google/protobuf/H$P;)Lcom/google/protobuf/H$j$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public O6(Lcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

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

.method public P6(Lcom/google/protobuf/H$P;)Lcom/google/protobuf/H$j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

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

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->d7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$P;->E6()Lcom/google/protobuf/H$P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$P$b;

    return-object v0
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

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->d7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$P;->E6()Lcom/google/protobuf/H$P;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$b;

    return-object p1
.end method

.method public S6()Lcom/google/protobuf/H$j;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->T6()Lcom/google/protobuf/H$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$j;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public T6()Lcom/google/protobuf/H$j;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$j;-><init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$j$b;->V6(Lcom/google/protobuf/H$j;)V

    iget v1, p0, Lcom/google/protobuf/H$j$b;->c:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$j$b;->U6(Lcom/google/protobuf/H$j;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public final U6(Lcom/google/protobuf/H$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/protobuf/H$j$b;->d:Z

    invoke-static {p1, v0}, Lcom/google/protobuf/H$j;->E6(Lcom/google/protobuf/H$j;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/google/protobuf/H$j;->F6(Lcom/google/protobuf/H$j;I)I

    return-void
.end method

.method public final V6(Lcom/google/protobuf/H$j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$j;->D6(Lcom/google/protobuf/H$j;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$j;->D6(Lcom/google/protobuf/H$j;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public W6()Lcom/google/protobuf/H$j$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    iput-boolean v0, p0, Lcom/google/protobuf/H$j$b;->d:Z

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    return-object p0
.end method

.method public X6()Lcom/google/protobuf/H$j$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$j$b;->d:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y6()Lcom/google/protobuf/H$j$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a7()Lcom/google/protobuf/H$j;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$j;->G6()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

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

.method public b7(I)Lcom/google/protobuf/H$P$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->d7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->S6()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->S6()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->T6()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->T6()Lcom/google/protobuf/H$j;

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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->d7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->W6()Lcom/google/protobuf/H$j$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->W6()Lcom/google/protobuf/H$j$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->W6()Lcom/google/protobuf/H$j$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->W6()Lcom/google/protobuf/H$j$b;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public e7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$j$b;
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
    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1f3a

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$d;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/protobuf/H$P;->t:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$P;

    iget-object v2, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v2, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$j$b;->d:Z

    iget v1, p0, Lcom/google/protobuf/H$j$b;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$j$b;->c:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public f7(Lcom/google/protobuf/H$j;)Lcom/google/protobuf/H$j$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$j;->G6()Lcom/google/protobuf/H$j;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$j;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/H$j;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$j$b;->j7(Z)Lcom/google/protobuf/H$j$b;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/H$j;->C6(Lcom/google/protobuf/H$j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/H$j;->C6(Lcom/google/protobuf/H$j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$j;->C6(Lcom/google/protobuf/H$j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/H$j;->C6(Lcom/google/protobuf/H$j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$j;->C6(Lcom/google/protobuf/H$j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/H$j$b;->c:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/H$j$b;->c:I

    sget-boolean v1, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->d7()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$j;->C6(Lcom/google/protobuf/H$j;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->A6(Lcom/google/protobuf/w0$e;)V

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->h7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

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

.method public g7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$j;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->f7(Lcom/google/protobuf/H$j;)Lcom/google/protobuf/H$j$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->a7()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->a7()Lcom/google/protobuf/H$j;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->s()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$j$b;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final h7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;
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

    check-cast p1, Lcom/google/protobuf/H$j$b;

    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$j$b;->d:Z

    return v0
.end method

.method public i7(I)Lcom/google/protobuf/H$j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->t()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$j;

    const-class v2, Lcom/google/protobuf/H$j$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$j$b;->b(I)Lcom/google/protobuf/H$P;

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

.method public j7(Z)Lcom/google/protobuf/H$j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$j$b;->d:Z

    iget p1, p0, Lcom/google/protobuf/H$j$b;->c:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$j$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public k7(ILcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$j$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

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

.method public l7(ILcom/google/protobuf/H$P;)Lcom/google/protobuf/H$j$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$j$b;->Z6()V

    iget-object v0, p0, Lcom/google/protobuf/H$j$b;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;
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

    check-cast p1, Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$j$b;->e7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->g7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$j$b;->e7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->g7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$j$b;->e7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$j$b;->e7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->h7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->h7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->h7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s6()Lcom/google/protobuf/w0$d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$j$b;->W6()Lcom/google/protobuf/H$j$b;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$j$b;->m7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$j$b;

    move-result-object p1

    return-object p1
.end method
