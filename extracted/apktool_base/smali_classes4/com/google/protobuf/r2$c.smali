.class public final Lcom/google/protobuf/r2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/r2$c$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/google/protobuf/r2$c;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/x;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/r2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/r2$c;->f:Lcom/google/protobuf/r2$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/r2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/r2$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/r2$c;ILcom/google/protobuf/C2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2$c;->y(ILcom/google/protobuf/C2;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/protobuf/r2$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic d(Lcom/google/protobuf/r2$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic f(Lcom/google/protobuf/r2$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic h(Lcom/google/protobuf/r2$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic j(Lcom/google/protobuf/r2$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/google/protobuf/r2$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    return-object p1
.end method

.method public static l()Lcom/google/protobuf/r2$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/r2$c;->f:Lcom/google/protobuf/r2$c;

    return-object v0
.end method

.method public static u()Lcom/google/protobuf/r2$c$a;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2$c$a;->a()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    return-object v0
.end method

.method public static v(Lcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$c$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyFrom"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$c$a;->k(Lcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$c$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(ILcom/google/protobuf/C2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/google/protobuf/C2;->R(ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/protobuf/C2;->j(ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/protobuf/C2;->t(ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/C2;->y(ILjava/util/List;)V

    invoke-interface {p2}, Lcom/google/protobuf/C2;->J()Lcom/google/protobuf/C2$a;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/C2$a;->ASCENDING:Lcom/google/protobuf/C2$a;

    if-ne v0, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, p1}, Lcom/google/protobuf/C2;->s(I)V

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r2;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/r2;->r6(Lcom/google/protobuf/C2;)V

    invoke-interface {p2, p1}, Lcom/google/protobuf/C2;->v(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p2, p1}, Lcom/google/protobuf/C2;->v(I)V

    iget-object v1, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r2;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/r2;->r6(Lcom/google/protobuf/C2;)V

    invoke-interface {p2, p1}, Lcom/google/protobuf/C2;->s(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/r2$c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/r2$c;->p()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/r2$c;

    invoke-virtual {p1}, Lcom/google/protobuf/r2$c;->p()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2$c;->p()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/r2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    return-object v0
.end method

.method public final p()[Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    return-object v0
.end method

.method public r(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->m0(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->o0(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x;

    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2;

    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->s0(ILcom/google/protobuf/b1;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    return v1
.end method

.method public s(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x;

    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->K0(ILcom/google/protobuf/x;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    return-object v0
.end method

.method public w(I)Lcom/google/protobuf/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$c;->r(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/x;->M(I)Lcom/google/protobuf/x$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x$h;->b()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/r2$c;->z(ILcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v0}, Lcom/google/protobuf/x$h;->a()Lcom/google/protobuf/x;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a ByteString should never fail with an IOException"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public x(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/x;

    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->Y1(ILcom/google/protobuf/x;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(ILcom/google/protobuf/C2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/protobuf/C2;->J()Lcom/google/protobuf/C2$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/C2$a;->DESCENDING:Lcom/google/protobuf/C2$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/C2;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/x;

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/C2;->b(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public z(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->f(IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->c(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->o(IJ)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/x;

    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/x;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/r2$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r2;

    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->F1(ILcom/google/protobuf/b1;)V

    goto :goto_4

    :cond_4
    return-void
.end method
