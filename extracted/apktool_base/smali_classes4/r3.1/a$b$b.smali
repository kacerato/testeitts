.class public final Lr3/a$b$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lr3/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lr3/a$b$b;",
        ">;",
        "Lr3/a$c;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/google/protobuf/J0;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$r;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$r;",
            "Lcom/google/protobuf/H$r$b;",
            "Lcom/google/protobuf/H$s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lr3/a$f;

.field public h:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lr3/a$f;",
            "Lr3/a$f$b;",
            "Lr3/a$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lr3/a$b$b;->O6()V

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

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 9
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object p1

    iput-object p1, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    .line 10
    const-string p1, ""

    iput-object p1, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr3/a$b$b;->e:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lr3/a$b$b;->O6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lr3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr3/a$b$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr3/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lr3/a$b$b;-><init>()V

    return-void
.end method

.method private O6()V
    .locals 1

    invoke-static {}, Lr3/a$b;->t6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->N6()Lcom/google/protobuf/G1;

    invoke-virtual {p0}, Lr3/a$b$b;->I6()Lcom/google/protobuf/Q1;

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6()Lr3/a$b$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lr3/a$b$b;->b:I

    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    const-string v0, ""

    iput-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$b$b;->b:I

    iput-object v1, p0, Lr3/a$b$b;->g:Lr3/a$f;

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->d()V

    iput-object v1, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    :cond_1
    return-object p0
.end method

.method public B6()Lr3/a$b$b;
    .locals 2

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lr3/a$b$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/a$b$b;->g:Lr3/a$f;

    iget-object v1, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6()Lr3/a$b$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public D6()Lr3/a$b$b;
    .locals 1

    invoke-static {}, Lr3/a$b;->D6()Lr3/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lr3/a$b;->getParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E6()Lr3/a$b$b;
    .locals 1

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public final F6()V
    .locals 2

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->hc()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/J0;

    iget-object v1, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/J0;-><init>(Lcom/google/protobuf/K0;)V

    iput-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    :cond_0
    iget v0, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr3/a$b$b;->b:I

    return-void
.end method

.method public final G6()V
    .locals 2

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr3/a$b$b;->b:I

    :cond_0
    return-void
.end method

.method public H6()Lr3/a$f$b;
    .locals 1

    iget v0, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-virtual {p0}, Lr3/a$b$b;->I6()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lr3/a$f$b;

    return-object v0
.end method

.method public I1(Ljava/lang/Iterable;)Lr3/a$b$b;
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
            "Lcom/google/protobuf/H$r;",
            ">;)",
            "Lr3/a$b$b;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final I6()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lr3/a$f;",
            "Lr3/a$f$b;",
            "Lr3/a$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lr3/a$b$b;->getCompilerVersion()Lr3/a$f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/a$b$b;->g:Lr3/a$f;

    :cond_0
    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public J1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J6()Lr3/a$b;
    .locals 1

    invoke-static {}, Lr3/a$b;->D6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public K6()Lcom/google/protobuf/C1;
    .locals 1

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/d;->r9()V

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    return-object v0
.end method

.method public L6(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lr3/a$b$b;->N6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$r$b;

    return-object p1
.end method

.method public M6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$r$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr3/a$b$b;->N6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final N6()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$r;",
            "Lcom/google/protobuf/H$r$b;",
            "Lcom/google/protobuf/H$s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lr3/a$b$b;->e:Ljava/util/List;

    iget v2, p0, Lr3/a$b$b;->b:I

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

    iput-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public P0(I)Lcom/google/protobuf/H$s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$s;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$s;

    return-object p1
.end method

.method public P6(Lr3/a$f;)Lr3/a$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/a$b$b;->g:Lr3/a$f;

    if-eqz v0, :cond_0

    invoke-static {}, Lr3/a$f;->z6()Lr3/a$f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->H6()Lr3/a$f$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr3/a$f$b;->x6(Lr3/a$f;)Lr3/a$f$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lr3/a$b$b;->g:Lr3/a$f;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Q2()I
    .locals 1

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
.end method

.method public Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$b$b;
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
    if-nez v0, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

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
    sget-object v1, Lcom/google/protobuf/H$r;->F:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$r;

    iget-object v2, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v2, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lr3/a$b$b;->I6()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lr3/a$b$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    iget v1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lr3/a$b$b;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-virtual {p0}, Lr3/a$b$b;->F6()V

    iget-object v2, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/J0;->b3(Lcom/google/protobuf/x;)V
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

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R6(Lcom/google/protobuf/Y0;)Lr3/a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lr3/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/a$b;

    invoke-virtual {p0, p1}, Lr3/a$b$b;->S6(Lr3/a$b;)Lr3/a$b$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public S6(Lr3/a$b;)Lr3/a$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lr3/a$b;->D6()Lr3/a$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lr3/a$b;->w6(Lr3/a$b;)Lcom/google/protobuf/J0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lr3/a$b;->w6(Lr3/a$b;)Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    iget v0, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr3/a$b$b;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lr3/a$b$b;->F6()V

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-static {p1}, Lr3/a$b;->w6(Lr3/a$b;)Lcom/google/protobuf/J0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/J0;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lr3/a$b;->o1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lr3/a$b;->y6(Lr3/a$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    iget v0, p0, Lr3/a$b$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_3
    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_5

    invoke-static {p1}, Lr3/a$b;->u6(Lr3/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lr3/a$b;->u6(Lr3/a$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$b$b;->b:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-static {p1}, Lr3/a$b;->u6(Lr3/a$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lr3/a$b;->u6(Lr3/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lr3/a$b;->u6(Lr3/a$b;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lr3/a$b$b;->e:Ljava/util/List;

    iget v1, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lr3/a$b$b;->b:I

    invoke-static {}, Lr3/a$b;->C6()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lr3/a$b$b;->N6()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lr3/a$b;->u6(Lr3/a$b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lr3/a$b;->p2()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lr3/a$b;->getCompilerVersion()Lr3/a$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr3/a$b$b;->P6(Lr3/a$f;)Lr3/a$b$b;

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr3/a$b$b;->T6(Lcom/google/protobuf/r2;)Lr3/a$b$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final T6(Lcom/google/protobuf/r2;)Lr3/a$b$b;
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

    check-cast p1, Lr3/a$b$b;

    return-object p1
.end method

.method public U6(I)Lr3/a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public V6(Lr3/a$f$b;)Lr3/a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lr3/a$f$b;->m1()Lr3/a$f;

    move-result-object p1

    iput-object p1, p0, Lr3/a$b$b;->g:Lr3/a$f;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lr3/a$f$b;->m1()Lr3/a$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public W6(Lr3/a$f;)Lr3/a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr3/a$b$b;->g:Lr3/a$f;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic X1()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lr3/a$b$b;->K6()Lcom/google/protobuf/C1;

    move-result-object v0

    return-object v0
.end method

.method public X6(ILjava/lang/String;)Lr3/a$b$b;
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

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lr3/a$b$b;->F6()V

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/J0;->r(ILjava/lang/String;)Ljava/lang/String;

    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y6(Ljava/lang/String;)Lr3/a$b$b;
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

    iput-object p1, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z1(I)Lcom/google/protobuf/H$r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$r;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$r;

    return-object p1
.end method

.method public Z6(Lcom/google/protobuf/x;)Lr3/a$b$b;
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

    iput-object p1, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a5(Lcom/google/protobuf/x;)Lr3/a$b$b;
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

    invoke-virtual {p0}, Lr3/a$b$b;->F6()V

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->b3(Lcom/google/protobuf/x;)V

    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a7(ILcom/google/protobuf/H$r$b;)Lr3/a$b$b;
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

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public b7(ILcom/google/protobuf/H$r;)Lr3/a$b$b;
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

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$b$b;->w6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$b$b;->w6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$b$b;->x6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$b$b;->x6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final c7(Lcom/google/protobuf/r2;)Lr3/a$b$b;
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

    check-cast p1, Lr3/a$b$b;

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lr3/a$b$b;->A6()Lr3/a$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$b$b;->A6()Lr3/a$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lr3/a$b$b;->A6()Lr3/a$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$b$b;->A6()Lr3/a$b$b;

    move-result-object v0

    return-object v0
.end method

.method public f3()Lr3/a$g;
    .locals 1

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lr3/a$g;

    return-object v0

    :cond_0
    iget-object v0, p0, Lr3/a$b$b;->g:Lr3/a$f;

    if-nez v0, :cond_1

    invoke-static {}, Lr3/a$f;->z6()Lr3/a$f;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCompilerVersion()Lr3/a$f;
    .locals 1

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lr3/a$b$b;->g:Lr3/a$f;

    if-nez v0, :cond_0

    invoke-static {}, Lr3/a$f;->z6()Lr3/a$f;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lr3/a$f;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$b$b;->J6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$b$b;->J6()Lr3/a$b;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lr3/a;->d()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lr3/a$b;

    const-class v2, Lr3/a$b$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lr3/a$b$b;->o4()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lr3/a$b$b;->Z1(I)Lcom/google/protobuf/H$r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$r;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public l3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l4(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public m1(Ljava/lang/Iterable;)Lr3/a$b$b;
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
            "Ljava/lang/String;",
            ">;)",
            "Lr3/a$b$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lr3/a$b$b;->F6()V

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lr3/a$b$b;->Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->R6(Lcom/google/protobuf/Y0;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$b$b;->Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->R6(Lcom/google/protobuf/Y0;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$b$b;->Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$b$b;->Q6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->T6(Lcom/google/protobuf/r2;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->T6(Lcom/google/protobuf/r2;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->T6(Lcom/google/protobuf/r2;)Lr3/a$b$b;

    move-result-object p1

    return-object p1
.end method

.method public o1()Z
    .locals 1

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o4()I
    .locals 1

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public p2()Z
    .locals 1

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q6(ILcom/google/protobuf/H$r$b;)Lr3/a$b$b;
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

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r6(ILcom/google/protobuf/H$r;)Lr3/a$b$b;
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

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public s6(Lcom/google/protobuf/H$r$b;)Lr3/a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->c7(Lcom/google/protobuf/r2;)Lr3/a$b$b;

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
    invoke-virtual {p0, p1}, Lr3/a$b$b;->c7(Lcom/google/protobuf/r2;)Lr3/a$b$b;

    move-result-object p1

    return-object p1
.end method

.method public t5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public t6(Lcom/google/protobuf/H$r;)Lr3/a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lr3/a$b$b;->G6()V

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public u5(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u6()Lcom/google/protobuf/H$r$b;
    .locals 2

    invoke-virtual {p0}, Lr3/a$b$b;->N6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$r$b;

    return-object v0
.end method

.method public v3(Ljava/lang/String;)Lr3/a$b$b;
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

    invoke-virtual {p0}, Lr3/a$b$b;->F6()V

    iget-object v0, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lr3/a$b$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v6(I)Lcom/google/protobuf/H$r$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lr3/a$b$b;->N6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$r$b;

    return-object p1
.end method

.method public w6()Lr3/a$b;
    .locals 2

    invoke-virtual {p0}, Lr3/a$b$b;->x6()Lr3/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lr3/a$b;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public x6()Lr3/a$b;
    .locals 2

    new-instance v0, Lr3/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr3/a$b;-><init>(Lcom/google/protobuf/w0$b;Lr3/a$a;)V

    invoke-virtual {p0, v0}, Lr3/a$b$b;->z6(Lr3/a$b;)V

    iget v1, p0, Lr3/a$b$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lr3/a$b$b;->y6(Lr3/a$b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public final y6(Lr3/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-virtual {v1}, Lcom/google/protobuf/d;->r9()V

    iget-object v1, p0, Lr3/a$b$b;->c:Lcom/google/protobuf/J0;

    invoke-static {p1, v1}, Lr3/a$b;->x6(Lr3/a$b;Lcom/google/protobuf/J0;)Lcom/google/protobuf/J0;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr3/a$b$b;->d:Ljava/lang/Object;

    invoke-static {p1, v1}, Lr3/a$b;->z6(Lr3/a$b;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr3/a$b$b;->h:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_2

    iget-object v0, p0, Lr3/a$b$b;->g:Lr3/a$f;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lr3/a$f;

    :goto_1
    invoke-static {p1, v0}, Lr3/a$b;->A6(Lr3/a$b;Lr3/a$f;)Lr3/a$f;

    or-int/lit8 v1, v1, 0x2

    :cond_3
    invoke-static {p1, v1}, Lr3/a$b;->B6(Lr3/a$b;I)I

    return-void
.end method

.method public final z6(Lr3/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$b$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$b$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$b$b;->b:I

    :cond_0
    iget-object v0, p0, Lr3/a$b$b;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lr3/a$b;->v6(Lr3/a$b;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lr3/a$b;->v6(Lr3/a$b;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method
