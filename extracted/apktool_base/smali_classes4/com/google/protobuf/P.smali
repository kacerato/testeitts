.class public final Lcom/google/protobuf/P;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/P$c;
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/Descriptors$b;

.field public final c:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[Lcom/google/protobuf/Descriptors$f;

.field public final e:Lcom/google/protobuf/r2;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/r2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "fields",
            "oneofCases",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;[",
            "Lcom/google/protobuf/Descriptors$f;",
            "Lcom/google/protobuf/r2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/P;->f:I

    iput-object p1, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    iput-object p2, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    iput-object p3, p0, Lcom/google/protobuf/P;->d:[Lcom/google/protobuf/Descriptors$f;

    iput-object p4, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    return-void
.end method

.method public static A6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/C;Lcom/google/protobuf/b0;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method public static B6(Lcom/google/protobuf/Descriptors$b;Ljava/io/InputStream;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method public static C6(Lcom/google/protobuf/Descriptors$b;Ljava/io/InputStream;Lcom/google/protobuf/b0;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method public static D6(Lcom/google/protobuf/Descriptors$b;[B)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom([B)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method public static E6(Lcom/google/protobuf/Descriptors$b;[BLcom/google/protobuf/b0;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->mergeFrom([BLcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method private G6(Lcom/google/protobuf/Descriptors$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic H3(Lcom/google/protobuf/P;)Lcom/google/protobuf/Descriptors$b;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    return-object p0
.end method

.method private H6(Lcom/google/protobuf/Descriptors$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic V4(Lcom/google/protobuf/P;)Lcom/google/protobuf/r2;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    return-object p0
.end method

.method public static synthetic i4(Lcom/google/protobuf/P;)Lcom/google/protobuf/o0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    return-object p0
.end method

.method public static synthetic q6(Lcom/google/protobuf/P;)[Lcom/google/protobuf/Descriptors$f;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/P;->d:[Lcom/google/protobuf/Descriptors$f;

    return-object p0
.end method

.method public static r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->D()Lcom/google/protobuf/H$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$b;->O0()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$f;

    new-instance v1, Lcom/google/protobuf/P;

    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/P;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/r2;)V

    return-object v1
.end method

.method public static t6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "fields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/o0;->E()Z

    move-result p0

    return p0
.end method

.method public static u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/P$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/P$a;)V

    return-object v0
.end method

.method public static v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/P$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/P$c;

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/P$a;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/P$c;->u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/P$c;

    move-result-object p0

    return-object p0
.end method

.method public static x6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/x;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/x;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method public static y6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/x;Lcom/google/protobuf/b0;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method

.method public static z6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/C;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/C;)Lcom/google/protobuf/a$a;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/P$c;

    invoke-static {p0}, Lcom/google/protobuf/P$c;->S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F6()Lcom/google/protobuf/P$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/P;->w6()Lcom/google/protobuf/P$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/P$c;->u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P;->s6()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P;->s6()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/P;->G6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/P;->H6(Lcom/google/protobuf/Descriptors$k;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->d:[Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/P;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/P$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/P$a;-><init>(Lcom/google/protobuf/P;)V

    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/P;->G6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/P;->G6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/P;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->v()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->m1()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->z()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v1

    goto :goto_0

    :goto_1
    iput v0, p0, Lcom/google/protobuf/P;->f:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/r2;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/P;->G6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/P;->H6(Lcom/google/protobuf/Descriptors$k;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->d:[Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    iget-object v1, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-static {v0, v1}, Lcom/google/protobuf/P;->t6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P;->w6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P;->w6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public s6()Lcom/google/protobuf/P;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-static {v0}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P;->F6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P;->F6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public w6()Lcom/google/protobuf/P$c;
    .locals 3

    new-instance v0, Lcom/google/protobuf/P$c;

    iget-object v1, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/P$a;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
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

    iget-object v0, p0, Lcom/google/protobuf/P;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->V(Lcom/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->a5(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P;->c:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->X(Lcom/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/P;->e:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    :goto_0
    return-void
.end method
