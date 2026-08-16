.class public final Lcom/google/protobuf/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/r2$d;,
        Lcom/google/protobuf/r2$c;,
        Lcom/google/protobuf/r2$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/protobuf/r2;

.field public static final d:Lcom/google/protobuf/r2$d;


# instance fields
.field public final b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/r2$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/r2;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/protobuf/r2;-><init>(Ljava/util/TreeMap;)V

    sput-object v0, Lcom/google/protobuf/r2;->c:Lcom/google/protobuf/r2;

    new-instance v0, Lcom/google/protobuf/r2$d;

    invoke-direct {v0}, Lcom/google/protobuf/r2$d;-><init>()V

    sput-object v0, Lcom/google/protobuf/r2;->d:Lcom/google/protobuf/r2$d;

    return-void
.end method

.method public constructor <init>(Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/r2$c;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/TreeMap;Lcom/google/protobuf/r2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/r2;-><init>(Ljava/util/TreeMap;)V

    return-void
.end method

.method public static D2(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copyFrom"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    move-result-object p0

    return-object p0
.end method

.method public static H3(Ljava/io/InputStream;)Lcom/google/protobuf/r2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$b;->C6(Ljava/io/InputStream;)Lcom/google/protobuf/r2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p0

    return-object p0
.end method

.method public static Q1()Lcom/google/protobuf/r2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2$b;->t()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public static b0()Lcom/google/protobuf/r2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/r2;->c:Lcom/google/protobuf/r2;

    return-object v0
.end method

.method public static d3(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$b;->w6(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p0

    return-object p0
.end method

.method public static i4([B)Lcom/google/protobuf/r2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$b;->E6([B)Lcom/google/protobuf/r2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/google/protobuf/r2;)Ljava/util/TreeMap;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    return-object p0
.end method

.method public static v3(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A0()Lcom/google/protobuf/r2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/r2;->c:Lcom/google/protobuf/r2;

    return-object v0
.end method

.method public I1(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public S0(I)Lcom/google/protobuf/r2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/r2$c;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/r2$c;->l()Lcom/google/protobuf/r2$c;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final T0()Lcom/google/protobuf/r2$d;
    .locals 1

    sget-object v0, Lcom/google/protobuf/r2;->d:Lcom/google/protobuf/r2$d;

    return-object v0
.end method

.method public V4()Lcom/google/protobuf/r2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/r2$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public Z2()Lcom/google/protobuf/r2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public a0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/r2$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public a5(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/r2$c;->x(ILcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/r2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    check-cast p1, Lcom/google/protobuf/r2;

    iget-object p1, p1, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->A0()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParserForType()Lcom/google/protobuf/w1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->T0()Lcom/google/protobuf/r2$d;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/r2$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/r2$c;->r(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()I
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/r2$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/r2$c;->s(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->Z2()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public q6(Lcom/google/protobuf/C2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/C2;->J()Lcom/google/protobuf/C2$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/C2$a;->DESCENDING:Lcom/google/protobuf/C2$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/r2$c;->a(Lcom/google/protobuf/r2$c;ILcom/google/protobuf/C2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/r2$c;->a(Lcom/google/protobuf/r2$c;ILcom/google/protobuf/C2;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public r6(Lcom/google/protobuf/C2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/C2;->J()Lcom/google/protobuf/C2$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/C2$a;->DESCENDING:Lcom/google/protobuf/C2$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/r2$c;->A(ILcom/google/protobuf/C2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/r2$c;->A(ILcom/google/protobuf/C2;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->V4()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->n1([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->Z()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/google/protobuf/x;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/x;->M(I)Lcom/google/protobuf/x$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x$h;->b()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {v0}, Lcom/google/protobuf/x$h;->a()Lcom/google/protobuf/x;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->p(Lcom/google/protobuf/r2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->j1(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->e1()V

    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/r2;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/google/protobuf/r2$c;->z(ILcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->j1(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->e1()V

    return-void
.end method
