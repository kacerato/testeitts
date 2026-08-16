.class public final Lcom/google/protobuf/Descriptors$d;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/Descriptors$h;",
        "Lcom/google/protobuf/D0$d<",
        "Lcom/google/protobuf/Descriptors$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public c:Lcom/google/protobuf/H$d;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/protobuf/Descriptors$g;

.field public final f:Lcom/google/protobuf/Descriptors$b;

.field public final g:[Lcom/google/protobuf/Descriptors$e;

.field public final h:[Lcom/google/protobuf/Descriptors$e;

.field public final i:I

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/H$d;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "proto",
            "file",
            "parent",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$d;->j:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$d;->k:Ljava/lang/ref/ReferenceQueue;

    .line 5
    iput p4, p0, Lcom/google/protobuf/Descriptors$d;->b:I

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/H$d;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Descriptors;->e(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$d;->d:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$d;->e:Lcom/google/protobuf/Descriptors$g;

    .line 9
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$d;->f:Lcom/google/protobuf/Descriptors$b;

    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/H$d;->y4()I

    move-result p3

    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/H$d;->y4()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/Descriptors$e;

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$d;->g:[Lcom/google/protobuf/Descriptors$e;

    const/4 p3, 0x0

    move p4, p3

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$d;->y4()I

    move-result v1

    if-ge p4, v1, :cond_0

    .line 13
    iget-object v7, p0, Lcom/google/protobuf/Descriptors$d;->g:[Lcom/google/protobuf/Descriptors$e;

    new-instance v8, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p1, p4}, Lcom/google/protobuf/H$d;->getValue(I)Lcom/google/protobuf/H$h;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/Descriptors$e;-><init>(Lcom/google/protobuf/H$h;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$d;ILcom/google/protobuf/Descriptors$a;)V

    aput-object v8, v7, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/Descriptors$d;->g:[Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p4}, [Lcom/google/protobuf/Descriptors$e;->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/google/protobuf/Descriptors$e;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$d;->h:[Lcom/google/protobuf/Descriptors$e;

    .line 15
    sget-object v1, Lcom/google/protobuf/Descriptors$e;->f:Ljava/util/Comparator;

    invoke-static {p4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p4, 0x1

    move v1, p4

    .line 16
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$d;->y4()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 17
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$d;->h:[Lcom/google/protobuf/Descriptors$e;

    aget-object v3, v2, p3

    .line 18
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 20
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$d;->h:[Lcom/google/protobuf/Descriptors$e;

    add-int/lit8 p3, p3, 0x1

    aput-object v2, v3, p3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr p3, p4

    .line 21
    iput p3, p0, Lcom/google/protobuf/Descriptors$d;->i:I

    .line 22
    iget-object p4, p0, Lcom/google/protobuf/Descriptors$d;->h:[Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p1}, Lcom/google/protobuf/H$d;->y4()I

    move-result p1

    invoke-static {p4, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 23
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$h;)V

    return-void

    .line 24
    :cond_3
    new-instance p1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$d;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$d;-><init>(Lcom/google/protobuf/H$d;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$d;Lcom/google/protobuf/H$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$d;->x(Lcom/google/protobuf/H$d;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/protobuf/Descriptors$d;)Lcom/google/protobuf/Descriptors$g;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$d;->e:Lcom/google/protobuf/Descriptors$g;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->e:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    invoke-virtual {v0}, Lcom/google/protobuf/H$d;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$d;->y()Lcom/google/protobuf/H$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/D0$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "number"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->e:Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$c;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$h;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Lcom/google/protobuf/Descriptors$e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->h:[Lcom/google/protobuf/Descriptors$e;

    iget v1, p0, Lcom/google/protobuf/Descriptors$d;->i:I

    sget-object v2, Lcom/google/protobuf/Descriptors$e;->g:Lcom/google/protobuf/Descriptors$j;

    invoke-static {v0, v1, v2, p1}, Lcom/google/protobuf/Descriptors;->c([Ljava/lang/Object;ILcom/google/protobuf/Descriptors$j;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    return-object p1
.end method

.method public k(I)Lcom/google/protobuf/Descriptors$e;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->k:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$d;->k:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$d;->j:Ljava/util/Map;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->k:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d$a;

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/google/protobuf/Descriptors$e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/google/protobuf/Descriptors$e;-><init>(Lcom/google/protobuf/Descriptors$d;Ljava/lang/Integer;Lcom/google/protobuf/Descriptors$a;)V

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$d;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/Descriptors$d$a;

    invoke-direct {v4, p1, v0, v1}, Lcom/google/protobuf/Descriptors$d$a;-><init>(ILcom/google/protobuf/Descriptors$e;Lcom/google/protobuf/Descriptors$a;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$d;->j:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$d$a;->a(Lcom/google/protobuf/Descriptors$d$a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->f:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$d;->b:I

    return v0
.end method

.method public r()Lcom/google/protobuf/H$f;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    invoke-virtual {v0}, Lcom/google/protobuf/H$d;->getOptions()Lcom/google/protobuf/H$f;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->g:[Lcom/google/protobuf/Descriptors$e;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$d;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$g$b;->PROTO3:Lcom/google/protobuf/Descriptors$g$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/D0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    invoke-virtual {v0}, Lcom/google/protobuf/H$d;->F6()Lcom/google/protobuf/C1;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public w(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    invoke-virtual {v0}, Lcom/google/protobuf/H$d;->w0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$d$c;

    invoke-virtual {v1}, Lcom/google/protobuf/H$d$c;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/H$d$c;->getEnd()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final x(Lcom/google/protobuf/H$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$d;->g:[Lcom/google/protobuf/Descriptors$e;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/H$d;->getValue(I)Lcom/google/protobuf/H$h;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$e;->e(Lcom/google/protobuf/Descriptors$e;Lcom/google/protobuf/H$h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y()Lcom/google/protobuf/H$d;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$d;->c:Lcom/google/protobuf/H$d;

    return-object v0
.end method
