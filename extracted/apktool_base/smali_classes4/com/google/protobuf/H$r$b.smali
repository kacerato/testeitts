.class public final Lcom/google/protobuf/H$r$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/H$r$b;",
        ">;",
        "Lcom/google/protobuf/H$s;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lcom/google/protobuf/J0;

.field public f:Lcom/google/protobuf/D0$g;

.field public g:Lcom/google/protobuf/D0$g;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$b;",
            "Lcom/google/protobuf/H$b$b;",
            "Lcom/google/protobuf/H$c;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$d;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$d;",
            "Lcom/google/protobuf/H$d$b;",
            "Lcom/google/protobuf/H$e;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$J;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$J;",
            "Lcom/google/protobuf/H$J$b;",
            "Lcom/google/protobuf/H$K;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$n;",
            "Lcom/google/protobuf/H$n$b;",
            "Lcom/google/protobuf/H$o;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/google/protobuf/H$v;

.field public q:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$v;",
            "Lcom/google/protobuf/H$v$b;",
            "Lcom/google/protobuf/H$w;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/google/protobuf/H$N;

.field public s:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$N;",
            "Lcom/google/protobuf/H$N$b;",
            "Lcom/google/protobuf/H$O;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    .line 7
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    .line 8
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->M7()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;-><init>()V

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

    .line 16
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 17
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    .line 20
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    .line 21
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->M7()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$r$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private B7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$n;",
            "Lcom/google/protobuf/H$n$b;",
            "Lcom/google/protobuf/H$o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v2, v2, 0x100

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

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method private G7()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$v;",
            "Lcom/google/protobuf/H$v$b;",
            "Lcom/google/protobuf/H$w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private M7()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->E7()Lcom/google/protobuf/G1;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->y7()Lcom/google/protobuf/G1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->J7()Lcom/google/protobuf/G1;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->B7()Lcom/google/protobuf/G1;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->G7()Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->L7()Lcom/google/protobuf/Q1;

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->S()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private o7()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    return-void
.end method

.method private p7()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    return-void
.end method

.method private y7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$d;",
            "Lcom/google/protobuf/H$d$b;",
            "Lcom/google/protobuf/H$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v2, v2, 0x40

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

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public A6(I)Lcom/google/protobuf/H$d$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->y7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$d;->D6()Lcom/google/protobuf/H$d;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$d$b;

    return-object p1
.end method

.method public A7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$n$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->B7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public B6(ILcom/google/protobuf/H$n$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public C1()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public C6(ILcom/google/protobuf/H$n;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public C7(I)Lcom/google/protobuf/H$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->E7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$b$b;

    return-object p1
.end method

.method public D1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D4(I)Lcom/google/protobuf/H$K;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$K;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$K;

    return-object p1
.end method

.method public D6(Lcom/google/protobuf/H$n$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public D7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$b$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->E7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public E6(Lcom/google/protobuf/H$n;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final E7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$b;",
            "Lcom/google/protobuf/H$b$b;",
            "Lcom/google/protobuf/H$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$r$b;->b:I

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

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public F0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public F6()Lcom/google/protobuf/H$n$b;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->B7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$n$b;

    return-object v0
.end method

.method public F7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->G7()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$v$b;

    return-object v0
.end method

.method public G6(I)Lcom/google/protobuf/H$n$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->B7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$n$b;

    return-object p1
.end method

.method public H1(I)Lcom/google/protobuf/H$J;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$J;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$J;

    return-object p1
.end method

.method public H6(ILcom/google/protobuf/H$b$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$b$b;->m7()Lcom/google/protobuf/H$b;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$b$b;->m7()Lcom/google/protobuf/H$b;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public H7(I)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->J7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$J$b;

    return-object p1
.end method

.method public I1(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Lcom/google/protobuf/H$d;",
            ">;)",
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public I6(ILcom/google/protobuf/H$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public I7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$J$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->J7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public J6(Lcom/google/protobuf/H$b$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$b$b;->m7()Lcom/google/protobuf/H$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$b$b;->m7()Lcom/google/protobuf/H$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final J7()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$J;",
            "Lcom/google/protobuf/H$J$b;",
            "Lcom/google/protobuf/H$K;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v2, v2, 0x80

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

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public K6(Lcom/google/protobuf/H$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public K7()Lcom/google/protobuf/H$N$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->L7()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$N$b;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public L6()Lcom/google/protobuf/H$b$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->E7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$b;->N6()Lcom/google/protobuf/H$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$b$b;

    return-object v0
.end method

.method public final L7()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$N;",
            "Lcom/google/protobuf/H$N$b;",
            "Lcom/google/protobuf/H$O;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->d2()Lcom/google/protobuf/H$N;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public M6(I)Lcom/google/protobuf/H$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->E7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$b;->N6()Lcom/google/protobuf/H$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$b$b;

    return-object p1
.end method

.method public N6(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->r7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r$b;
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

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->t7()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->t7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->r7()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->r7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->L7()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->G7()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto/16 :goto_0

    :sswitch_9
    sget-object v1, Lcom/google/protobuf/H$n;->B:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$n;

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    :sswitch_a
    sget-object v1, Lcom/google/protobuf/H$J;->l:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$J;

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    :sswitch_b
    sget-object v1, Lcom/google/protobuf/H$d;->p:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$d;

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    :sswitch_c
    sget-object v1, Lcom/google/protobuf/H$b;->z:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$b;

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->n7()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/J0;->b3(Lcom/google/protobuf/x;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x4a -> :sswitch_7
        0x50 -> :sswitch_6
        0x52 -> :sswitch_5
        0x58 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public O6(ILcom/google/protobuf/H$J$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public O7(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/H$r$b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$r;->F6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/H$r;->H6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/H$r;->J6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/J0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/H$r;->J6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->n7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->J6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/J0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/J0;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_4
    invoke-static {p1}, Lcom/google/protobuf/H$r;->t6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/H$r;->t6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->r7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->t6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_6
    invoke-static {p1}, Lcom/google/protobuf/H$r;->v6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/H$r;->v6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->t7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->v6(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/D0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/google/protobuf/H$r;->x6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/google/protobuf/H$r;->x6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->x6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_5

    :cond_a
    invoke-static {p1}, Lcom/google/protobuf/H$r;->x6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->x6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->E7()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->x6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/google/protobuf/H$r;->z6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/H$r;->z6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_6

    :cond_e
    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->z6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_8

    :cond_f
    invoke-static {p1}, Lcom/google/protobuf/H$r;->z6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->z6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->y7()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->z6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/google/protobuf/H$r;->B6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/google/protobuf/H$r;->B6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_9

    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->B6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_b

    :cond_14
    invoke-static {p1}, Lcom/google/protobuf/H$r;->B6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->B6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->J7()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_a

    :cond_15
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    goto :goto_b

    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->B6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_17
    :goto_b
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_19

    invoke-static {p1}, Lcom/google/protobuf/H$r;->D6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/google/protobuf/H$r;->D6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    goto :goto_c

    :cond_18
    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->D6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_c
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_d

    :cond_19
    invoke-static {p1}, Lcom/google/protobuf/H$r;->D6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->D6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->B7()Lcom/google/protobuf/G1;

    move-result-object v1

    :cond_1a
    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$r;->D6(Lcom/google/protobuf/H$r;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_1c
    :goto_d
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r$b;->Q7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$r$b;

    :cond_1d
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->D1()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->d2()Lcom/google/protobuf/H$N;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r$b;->R7(Lcom/google/protobuf/H$N;)Lcom/google/protobuf/H$r$b;

    :cond_1e
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->U0()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/google/protobuf/H$r;->N6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1f
    invoke-virtual {p1}, Lcom/google/protobuf/H$r;->u4()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/google/protobuf/H$r;->P6(Lcom/google/protobuf/H$r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_20
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->S7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public P6(ILcom/google/protobuf/H$J;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public P7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$r;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$r;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->O7(Lcom/google/protobuf/H$r;)Lcom/google/protobuf/H$r$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public Q3(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public Q6(Lcom/google/protobuf/H$J$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public Q7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$r$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->F7()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/H$v$b;->y7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R6(Lcom/google/protobuf/H$J;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public R7(Lcom/google/protobuf/H$N;)Lcom/google/protobuf/H$r$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$N;->v6()Lcom/google/protobuf/H$N;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->K7()Lcom/google/protobuf/H$N$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/H$N$b;->F6(Lcom/google/protobuf/H$N;)Lcom/google/protobuf/H$N$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public S6()Lcom/google/protobuf/H$J$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->J7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$J;->z6()Lcom/google/protobuf/H$J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$J$b;

    return-object v0
.end method

.method public final S7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;
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

    check-cast p1, Lcom/google/protobuf/H$r$b;

    return-object p1
.end method

.method public T6(I)Lcom/google/protobuf/H$J$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->J7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$J;->z6()Lcom/google/protobuf/H$J;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$J$b;

    return-object p1
.end method

.method public T7(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public U0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U1(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public U3(I)Lcom/google/protobuf/H$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$c;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$c;

    return-object p1
.end method

.method public U4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public U6(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->t7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public U7(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public V5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$K;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public V6()Lcom/google/protobuf/H$r;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->W6()Lcom/google/protobuf/H$r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public V7(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public W2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$J;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic W4()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->v7()Lcom/google/protobuf/C1;

    move-result-object v0

    return-object v0
.end method

.method public W6()Lcom/google/protobuf/H$r;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$r;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r$b;->Y6(Lcom/google/protobuf/H$r;)V

    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$r$b;->X6(Lcom/google/protobuf/H$r;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public W7(I)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public final X6(Lcom/google/protobuf/H$r;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$r;->G6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$r;->I6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v2}, Lcom/google/protobuf/d;->r9()V

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$r;->K6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/J0;)Lcom/google/protobuf/J0;

    :cond_2
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/H$v;

    :goto_1
    invoke-static {p1, v2}, Lcom/google/protobuf/H$r;->L6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v;

    or-int/lit8 v1, v1, 0x4

    :cond_4
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/H$N;

    :goto_2
    invoke-static {p1, v2}, Lcom/google/protobuf/H$r;->M6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/H$N;)Lcom/google/protobuf/H$N;

    or-int/lit8 v1, v1, 0x8

    :cond_6
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$r;->O6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x10

    :cond_7
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->Q6(Lcom/google/protobuf/H$r;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x20

    :cond_8
    invoke-static {p1, v1}, Lcom/google/protobuf/H$r;->R6(Lcom/google/protobuf/H$r;I)I

    return-void
.end method

.method public X7(ILjava/lang/String;)Lcom/google/protobuf/H$r$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->n7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/J0;->r(ILjava/lang/String;)Ljava/lang/String;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final Y6(Lcom/google/protobuf/H$r;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->r9()V

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->u6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->r9()V

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->w6(Lcom/google/protobuf/H$r;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->y6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->y6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->A6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->A6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->C6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->C6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->E6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$r;->E6(Lcom/google/protobuf/H$r;Ljava/util/List;)Ljava/util/List;

    :goto_3
    return-void
.end method

.method public Y7(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z6()Lcom/google/protobuf/H$r$b;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    :goto_1
    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    :goto_2
    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    :goto_3
    iget v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/protobuf/H$r$b;->b:I

    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    :cond_4
    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v2, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    :cond_5
    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    return-object p0
.end method

.method public Z7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a5(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Lcom/google/protobuf/H$b;",
            ">;)",
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public a7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a8(ILcom/google/protobuf/H$d$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$d$b;->D6()Lcom/google/protobuf/H$d;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$d$b;->D6()Lcom/google/protobuf/H$d;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public b7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->F0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public b8(ILcom/google/protobuf/H$d;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->V6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->W6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->W6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c7()Lcom/google/protobuf/H$r$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public c8(ILcom/google/protobuf/H$n$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->Z6()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->Z6()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->Z6()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->Z6()Lcom/google/protobuf/H$r$b;

    move-result-object v0

    return-object v0
.end method

.method public d2()Lcom/google/protobuf/H$N;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$N;->v6()Lcom/google/protobuf/H$N;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$N;

    return-object v0
.end method

.method public d4()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
.end method

.method public d6()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d7()Lcom/google/protobuf/H$r$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public d8(ILcom/google/protobuf/H$n;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e2()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public e7()Lcom/google/protobuf/H$r$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public e8(ILcom/google/protobuf/H$b$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$b$b;->m7()Lcom/google/protobuf/H$b;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$b$b;->m7()Lcom/google/protobuf/H$b;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public f()Lcom/google/protobuf/H$w;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$w;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public f0()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public f2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f4(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public f8(ILcom/google/protobuf/H$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->q7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public g4(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public g7()Lcom/google/protobuf/H$r$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public g8(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->u7()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->u7()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->S()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/H$v;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$v;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h0(I)Lcom/google/protobuf/H$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$e;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$e;

    return-object p1
.end method

.method public h7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public h8(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPackage()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i0(I)Lcom/google/protobuf/H$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$d;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$d;

    return-object p1
.end method

.method public i7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public i8(Lcom/google/protobuf/H$v$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/H$v$b;->S6()Lcom/google/protobuf/H$v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$v$b;->S6()Lcom/google/protobuf/H$v;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->V()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$r;

    const-class v2, Lcom/google/protobuf/H$r$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->z4()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$r$b;->j4(I)Lcom/google/protobuf/H$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$b;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->f0()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$r$b;->i0(I)Lcom/google/protobuf/H$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$d;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->e2()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$r$b;->H1(I)Lcom/google/protobuf/H$J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$J;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->P()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$r$b;->u0(I)Lcom/google/protobuf/H$n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$n;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->getOptions()Lcom/google/protobuf/H$v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/H$v;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public j4(I)Lcom/google/protobuf/H$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$b;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$b;

    return-object p1
.end method

.method public j7()Lcom/google/protobuf/H$r$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public j8(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->q:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->p:Lcom/google/protobuf/H$v;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public k7()Lcom/google/protobuf/H$r$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public k8(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public l5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    :goto_0
    return-object v0
.end method

.method public l7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$r;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public l8(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public m0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m1(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->n7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public m7()Lcom/google/protobuf/H$r$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public m8(II)Lcom/google/protobuf/H$r$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->r7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/D0$g;->setInt(II)I

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$r$b;->N7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->P7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$r$b;->N7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->P7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$r$b;->N7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$r$b;->N7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->S7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->S7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->S7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;

    move-result-object p1

    return-object p1
.end method

.method public n1()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final n7()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->hc()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/J0;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/J0;-><init>(Lcom/google/protobuf/K0;)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    return-void
.end method

.method public n8(ILcom/google/protobuf/H$J$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public o5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->u:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public o8(ILcom/google/protobuf/H$J;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public p8(Lcom/google/protobuf/H$N$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/H$N$b;->t6()Lcom/google/protobuf/H$N;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$N$b;->t6()Lcom/google/protobuf/H$N;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public q6(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->r7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final q7()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    return-void
.end method

.method public q8(Lcom/google/protobuf/H$N;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r2()Lcom/google/protobuf/H$O;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->s:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$O;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->r:Lcom/google/protobuf/H$N;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/H$N;->v6()Lcom/google/protobuf/H$N;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public r6(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Lcom/google/protobuf/H$J;",
            ">;)",
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->m:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final r7()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Lcom/google/protobuf/w0;->mutableCopy(Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->f:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    return-void
.end method

.method public r8(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->t7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final s7()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    return-void
.end method

.method public s8(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$r$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$r$b;->t:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->t8(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$r$b;->t8(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;

    move-result-object p1

    return-object p1
.end method

.method public t6(Ljava/lang/String;)Lcom/google/protobuf/H$r$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->n7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final t7()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Lcom/google/protobuf/w0;->mutableCopy(Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    :cond_0
    return-void
.end method

.method public final t8(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$r$b;
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

    check-cast p1, Lcom/google/protobuf/H$r$b;

    return-object p1
.end method

.method public u0(I)Lcom/google/protobuf/H$n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$n;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$n;

    return-object p1
.end method

.method public u4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$r$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->n7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->b3(Lcom/google/protobuf/x;)V

    iget p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$r$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u7()Lcom/google/protobuf/H$r;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$r;->S6()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method

.method public u8(II)Lcom/google/protobuf/H$r$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$r$b;->t7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/D0$g;->setInt(II)I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v3(Ljava/lang/Iterable;)Lcom/google/protobuf/H$r$b;
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
            "Lcom/google/protobuf/H$n;",
            ">;)",
            "Lcom/google/protobuf/H$r$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->p7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public v6(ILcom/google/protobuf/H$d$b;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$d$b;->D6()Lcom/google/protobuf/H$d;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$d$b;->D6()Lcom/google/protobuf/H$d;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public v7()Lcom/google/protobuf/C1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/d;->r9()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->e:Lcom/google/protobuf/J0;

    return-object v0
.end method

.method public w6(ILcom/google/protobuf/H$d;)Lcom/google/protobuf/H$r$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public w7(I)Lcom/google/protobuf/H$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->y7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$d$b;

    return-object p1
.end method

.method public x1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$r$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->g:Lcom/google/protobuf/D0$g;

    :goto_0
    return-object v0
.end method

.method public x6(Lcom/google/protobuf/H$d$b;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$d$b;->D6()Lcom/google/protobuf/H$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$d$b;->D6()Lcom/google/protobuf/H$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public x7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$d$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->y7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public y6(Lcom/google/protobuf/H$d;)Lcom/google/protobuf/H$r$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->o7()V

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public z0(I)Lcom/google/protobuf/H$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->o:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$o;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$o;

    return-object p1
.end method

.method public z4()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$r$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public z6()Lcom/google/protobuf/H$d$b;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->y7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$d;->D6()Lcom/google/protobuf/H$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$d$b;

    return-object v0
.end method

.method public z7(I)Lcom/google/protobuf/H$n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$r$b;->B7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$n$b;

    return-object p1
.end method
