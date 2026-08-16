.class public final Lcom/google/protobuf/H$v$b;
.super Lcom/google/protobuf/w0$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$d<",
        "Lcom/google/protobuf/H$v;",
        "Lcom/google/protobuf/H$v$b;",
        ">;",
        "Lcom/google/protobuf/H$w;"
    }
.end annotation


# instance fields
.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Object;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lcom/google/protobuf/G1;
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
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$d;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/google/protobuf/H$v$b;->i:I

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    .line 8
    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->p:Z

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;-><init>()V

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

    .line 17
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 18
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/google/protobuf/H$v$b;->i:I

    .line 21
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    .line 22
    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->p:Z

    .line 23
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$v$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->i()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private s7()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    :cond_0
    return-void
.end method

.method private w7()Lcom/google/protobuf/G1;
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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

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

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public A2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public A5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;
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

    check-cast p1, Lcom/google/protobuf/H$v$b;

    return-object p1
.end method

.method public B7(I)Lcom/google/protobuf/H$v$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public C2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public C5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->p:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public D0()Lcom/google/protobuf/H$v$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->i:I

    invoke-static {v0}, Lcom/google/protobuf/H$v$c;->a(I)Lcom/google/protobuf/H$v$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$v$c;->SPEED:Lcom/google/protobuf/H$v$c;

    :cond_0
    return-object v0
.end method

.method public D3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public D5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public D7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->k:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public F2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public G3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->o:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public I7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->g:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public K2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->l:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public L0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public L6(Ljava/lang/Iterable;)Lcom/google/protobuf/H$v$b;
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
            "Lcom/google/protobuf/H$v$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public L7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->f:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public M1()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public M6(ILcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$v$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

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

.method public M7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N6(ILcom/google/protobuf/H$P;)Lcom/google/protobuf/H$v$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public N7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public O2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public O5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->k:Z

    return v0
.end method

.method public O6(Lcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$v$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

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

.method public O7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P6(Lcom/google/protobuf/H$P;)Lcom/google/protobuf/H$v$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public P7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Q4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public Q6()Lcom/google/protobuf/H$P$b;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->w7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$P;->E6()Lcom/google/protobuf/H$P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$P$b;

    return-object v0
.end method

.method public Q7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->h:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public R3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->w7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$P;->E6()Lcom/google/protobuf/H$P;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$b;

    return-object p1
.end method

.method public R7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public S6()Lcom/google/protobuf/H$v;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->T6()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public S7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public T3()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public T5()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->g:Z

    return v0
.end method

.method public T6()Lcom/google/protobuf/H$v;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$v;-><init>(Lcom/google/protobuf/w0$d;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->V6(Lcom/google/protobuf/H$v;)V

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->U6(Lcom/google/protobuf/H$v;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public T7(Lcom/google/protobuf/H$v$c;)Lcom/google/protobuf/H$v$b;
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

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$v$c;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$v$b;->i:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final U6(Lcom/google/protobuf/H$v;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$v;->F6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->H6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->f:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->I6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->g:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->J6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->h:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->K6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/protobuf/H$v$b;->i:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->L6(Lcom/google/protobuf/H$v;I)I

    or-int/lit8 v1, v1, 0x20

    :cond_5
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->N6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x40

    :cond_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->k:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->O6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit16 v1, v1, 0x80

    :cond_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->l:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->P6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit16 v1, v1, 0x100

    :cond_8
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->m:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->Q6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit16 v1, v1, 0x200

    :cond_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->n:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->R6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit16 v1, v1, 0x400

    :cond_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->o:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->S6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit16 v1, v1, 0x800

    :cond_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/google/protobuf/H$v$b;->p:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->T6(Lcom/google/protobuf/H$v;Z)Z

    or-int/lit16 v1, v1, 0x1000

    :cond_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->V6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit16 v1, v1, 0x2000

    :cond_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$v;->X6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit16 v1, v1, 0x4000

    :cond_e
    const v2, 0x8000

    and-int v3, v0, v2

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/google/protobuf/H$v;->Z6(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v1, v2

    :cond_f
    const/high16 v2, 0x10000

    and-int v3, v0, v2

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/google/protobuf/H$v;->b7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v1, v2

    :cond_10
    const/high16 v2, 0x20000

    and-int v3, v0, v2

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/google/protobuf/H$v;->d7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v1, v2

    :cond_11
    const/high16 v2, 0x40000

    and-int v3, v0, v2

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/google/protobuf/H$v;->f7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v1, v2

    :cond_12
    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$v;->h7(Lcom/google/protobuf/H$v;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v1, v2

    :cond_13
    invoke-static {p1, v1}, Lcom/google/protobuf/H$v;->i7(Lcom/google/protobuf/H$v;I)I

    return-void
.end method

.method public U7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public V3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final V6(Lcom/google/protobuf/H$v;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$v;->D6(Lcom/google/protobuf/H$v;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$v;->D6(Lcom/google/protobuf/H$v;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public V7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public W6()Lcom/google/protobuf/H$v$b;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->f:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->g:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->h:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/protobuf/H$v$b;->i:I

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->k:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->l:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->m:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->n:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->o:Z

    iput-boolean v2, p0, Lcom/google/protobuf/H$v$b;->p:Z

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    return-object p0
.end method

.method public W7(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->n:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public X4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->n:Z

    return v0
.end method

.method public X6()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->p:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public X7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public Y6()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->k:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z6()Lcom/google/protobuf/H$v$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->R3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z7(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->o:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a8(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

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

.method public b1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->m:Z

    return v0
.end method

.method public b7()Lcom/google/protobuf/H$v$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->e5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public b8(Z)Lcom/google/protobuf/H$v$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$v$b;->m:Z

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->S6()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->S6()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->T6()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->T6()Lcom/google/protobuf/H$v;

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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c7()Lcom/google/protobuf/H$v$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->g:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public c8(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->W6()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->W6()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->W6()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->W6()Lcom/google/protobuf/H$v$b;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public d7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->l:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public d8(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public e1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->f:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public e8(Ljava/lang/String;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public f1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->p:Z

    return v0
.end method

.method public f7()Lcom/google/protobuf/H$v$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->i5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public f8(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$v$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/H$v$b;->c:I

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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

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

.method public g7()Lcom/google/protobuf/H$v$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->Y3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public g8(ILcom/google/protobuf/H$P$b;)Lcom/google/protobuf/H$v$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->t7()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->t7()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->i()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->h:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public h8(ILcom/google/protobuf/H$P;)Lcom/google/protobuf/H$v$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->o:Z

    return v0
.end method

.method public i5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public i7()Lcom/google/protobuf/H$v$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->O2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final i8(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;
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

    check-cast p1, Lcom/google/protobuf/H$v$b;

    return-object p1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->j()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$v;

    const-class v2, Lcom/google/protobuf/H$v$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$v$b;->b(I)Lcom/google/protobuf/H$P;

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

.method public j1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public j7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->i:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public k7()Lcom/google/protobuf/H$v$b;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->A5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public l7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->n:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public m7()Lcom/google/protobuf/H$v$b;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->e1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$v$b;->x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->z7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$v$b;->x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->z7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$v$b;->x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$v$b;->x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->A7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->A7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->A7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;

    move-result-object p1

    return-object p1
.end method

.method public n2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->l:Z

    return v0
.end method

.method public n6()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n7()Lcom/google/protobuf/H$v$b;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->r4()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public o3()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o7()Lcom/google/protobuf/H$v$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$v$b;->m:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public p6()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p7()Lcom/google/protobuf/H$v$b;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->o3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public q7()Lcom/google/protobuf/H$v$b;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$v;->D3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r4()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public r5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r7()Lcom/google/protobuf/H$v$b;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public s1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic s6()Lcom/google/protobuf/w0$d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$v$b;->W6()Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->i8(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->i8(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;

    move-result-object p1

    return-object p1
.end method

.method public t7()Lcom/google/protobuf/H$v;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    return-object v0
.end method

.method public u7(I)Lcom/google/protobuf/H$P$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->w7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$P$b;

    return-object p1
.end method

.method public v1()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public v5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$P$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->w7()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->h:Z

    return v0
.end method

.method public x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$v$b;
    .locals 3
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
    if-nez v0, :cond_3

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

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v2, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->n:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->p:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->h:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->o:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->g:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->m:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->l:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->k:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$v$b;->f:Z

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$v$c;->a(I)Lcom/google/protobuf/H$v$c;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_2
    iput v1, p0, Lcom/google/protobuf/H$v$b;->i:I

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I
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

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_15
        0x42 -> :sswitch_14
        0x48 -> :sswitch_13
        0x50 -> :sswitch_12
        0x5a -> :sswitch_11
        0x80 -> :sswitch_10
        0x88 -> :sswitch_f
        0x90 -> :sswitch_e
        0xa0 -> :sswitch_d
        0xb8 -> :sswitch_c
        0xd8 -> :sswitch_b
        0xf8 -> :sswitch_a
        0x122 -> :sswitch_9
        0x12a -> :sswitch_8
        0x13a -> :sswitch_7
        0x142 -> :sswitch_6
        0x14a -> :sswitch_5
        0x150 -> :sswitch_4
        0x162 -> :sswitch_3
        0x16a -> :sswitch_2
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public y5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public y7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v$b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$v;->j7()Lcom/google/protobuf/H$v;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->y5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$v;->E6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->j1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/H$v;->G6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->A2()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->z2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->L7(Z)Lcom/google/protobuf/H$v$b;

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->n6()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->T5()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->J7(Z)Lcom/google/protobuf/H$v$b;

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->G3()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->w1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->Q7(Z)Lcom/google/protobuf/H$v$b;

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->J2()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->D0()Lcom/google/protobuf/H$v$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->T7(Lcom/google/protobuf/H$v$c;)Lcom/google/protobuf/H$v$b;

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->s1()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/H$v;->M6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->j:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->p6()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->O5()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->D7(Z)Lcom/google/protobuf/H$v$b;

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->b1()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->n2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->K7(Z)Lcom/google/protobuf/H$v$b;

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->Y2()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->b3()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->b8(Z)Lcom/google/protobuf/H$v$b;

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->F2()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->X4()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->W7(Z)Lcom/google/protobuf/H$v$b;

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->G7(Z)Lcom/google/protobuf/H$v$b;

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->Q4()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->f1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$v$b;->C7(Z)Lcom/google/protobuf/H$v$b;

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->C5()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/H$v;->U6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->q:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->V3()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/protobuf/H$v;->W6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->r:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->r5()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/protobuf/H$v;->Y6(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->s:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->N5()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/protobuf/H$v;->a7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->t:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->K2()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/google/protobuf/H$v;->c7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->u:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->v5()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/google/protobuf/H$v;->e7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->v:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/H$v;->H5()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/google/protobuf/H$v;->g7(Lcom/google/protobuf/H$v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->w:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    const v1, -0x100001

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/google/protobuf/H$v;->C6(Lcom/google/protobuf/H$v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/google/protobuf/H$v;->C6(Lcom/google/protobuf/H$v;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H$v$b;->c:I

    goto :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->s7()V

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$v;->C6(Lcom/google/protobuf/H$v;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_16
    invoke-static {p1}, Lcom/google/protobuf/H$v;->C6(Lcom/google/protobuf/H$v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$v;->C6(Lcom/google/protobuf/H$v;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/H$v$b;->x:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$v$b;->c:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$v$b;->c:I

    sget-boolean v1, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/google/protobuf/H$v$b;->w7()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_17
    iput-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/H$v$b;->y:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$v;->C6(Lcom/google/protobuf/H$v;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_19
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->A6(Lcom/google/protobuf/w0$e;)V

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->A7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$v$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$v$b;->f:Z

    return v0
.end method

.method public z7(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$v$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$v;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$v;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$v$b;->y7(Lcom/google/protobuf/H$v;)Lcom/google/protobuf/H$v$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method
