.class public final Lcom/google/protobuf/P$c;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/a$a<",
        "Lcom/google/protobuf/P$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/Descriptors$b;

.field public c:Lcom/google/protobuf/o0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0$b<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[Lcom/google/protobuf/Descriptors$f;

.field public e:Lcom/google/protobuf/r2;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    .line 4
    invoke-static {}, Lcom/google/protobuf/o0;->M()Lcom/google/protobuf/o0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    .line 5
    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->D()Lcom/google/protobuf/H$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/H$b;->O0()I

    move-result p1

    new-array p1, p1, [Lcom/google/protobuf/Descriptors$f;

    iput-object p1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/P$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    return-void
.end method

.method public static A6(Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/protobuf/Y0$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/Y0$a;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/H0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/protobuf/H0;

    invoke-virtual {p0}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/protobuf/Y0;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/protobuf/Y0;

    invoke-interface {p0}, Lcom/google/protobuf/Y0;->toBuilder()Lcom/google/protobuf/Y0$a;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Cannot convert %s to Message.Builder"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic S0(Lcom/google/protobuf/P$c;)Lcom/google/protobuf/P;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->I1()Lcom/google/protobuf/P;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B6(Lcom/google/protobuf/Descriptors$f;)V
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

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C6(Lcom/google/protobuf/Descriptors$k;)V
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

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final D6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/P$b;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/google/protobuf/Y0$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p2}, Lcom/google/protobuf/D0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p2, Lcom/google/protobuf/Descriptors$e;

    if-eqz p1, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/P$c;->D6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/P$c;->D6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final I1()Lcom/google/protobuf/P;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->v3()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/P;

    iget-object v1, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2}, Lcom/google/protobuf/o0$b;->b()Lcom/google/protobuf/o0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$f;

    iget-object v4, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/P;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/r2;)V

    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public T0(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/P$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/P$c;->D6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->a(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a5()Lcom/google/protobuf/P$c;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o0;->M()Lcom/google/protobuf/o0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/P$c;->T0(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->m1()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->m1()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->v3()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->v3()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->a5()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->a5()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->a5()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->q6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->r6(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->r6(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->s6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->s6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->s6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->s6()Lcom/google/protobuf/P$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->s6()Lcom/google/protobuf/P$c;

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

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0}, Lcom/google/protobuf/o0$b;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->t6()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->t6()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->i(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

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

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->j(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/P$c;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/P$c;->A6(Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder not supported for map fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->C6(Lcom/google/protobuf/Descriptors$k;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->k(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$f;I)Lcom/google/protobuf/Y0$a;
    .locals 2
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->l(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/P$c;->A6(Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/o0$b;->w(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Map fields cannot be repeated"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->m(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1
.end method

.method public getUnknownFields()Lcom/google/protobuf/r2;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;)Z

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->C6(Lcom/google/protobuf/Descriptors$k;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

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
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0}, Lcom/google/protobuf/o0$b;->o()Z

    move-result v0

    return v0
.end method

.method public m1()Lcom/google/protobuf/P;
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/P$c;->v3()Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/P;

    iget-object v1, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2}, Lcom/google/protobuf/o0$b;->b()Lcom/google/protobuf/o0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$f;

    iget-object v4, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/P;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/r2;)V

    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
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

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/P$c;

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->v6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->v6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->w6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public q6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/P$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    return-object p0
.end method

.method public r6(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/P$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->C6(Lcom/google/protobuf/Descriptors$k;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->q6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/P$c;

    :cond_0
    return-object p0
.end method

.method public s6()Lcom/google/protobuf/P$c;
    .locals 5

    new-instance v0, Lcom/google/protobuf/P$c;

    iget-object v1, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-direct {v0, v1}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    iget-object v1, v0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2}, Lcom/google/protobuf/o0$b;->b()Lcom/google/protobuf/o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/o0$b;->p(Lcom/google/protobuf/o0;)V

    iget-object v1, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/P$c;->v6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;

    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    iget-object v2, v0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/P$c;->x6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/P$c;->y6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/P;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-static {v0}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v0

    return-object v0
.end method

.method public u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/P$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/P;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/protobuf/P;

    invoke-static {p1}, Lcom/google/protobuf/P;->H3(Lcom/google/protobuf/P;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-static {p1}, Lcom/google/protobuf/P;->i4(Lcom/google/protobuf/P;)Lcom/google/protobuf/o0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o0$b;->p(Lcom/google/protobuf/o0;)V

    invoke-static {p1}, Lcom/google/protobuf/P;->V4(Lcom/google/protobuf/P;)Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/P$c;->v6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/P;->q6(Lcom/google/protobuf/P;)[Lcom/google/protobuf/Descriptors$f;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/P;->q6(Lcom/google/protobuf/P;)[Lcom/google/protobuf/Descriptors$f;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    aget-object v1, v1, v0

    invoke-static {p1}, Lcom/google/protobuf/P;->q6(Lcom/google/protobuf/P;)[Lcom/google/protobuf/Descriptors$f;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    iget-object v2, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    invoke-static {p1}, Lcom/google/protobuf/P;->q6(Lcom/google/protobuf/P;)[Lcom/google/protobuf/Descriptors$f;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/P$c;

    return-object p1
.end method

.method public v3()Lcom/google/protobuf/P;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->E3()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->H()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/protobuf/P;

    iget-object v1, p0, Lcom/google/protobuf/P$c;->b:Lcom/google/protobuf/Descriptors$b;

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2}, Lcom/google/protobuf/o0$b;->d()Lcom/google/protobuf/o0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$f;

    iget-object v4, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/P;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/o0;[Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/r2;)V

    return-object v0
.end method

.method public v6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    invoke-static {v0}, Lcom/google/protobuf/r2;->D2(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    return-object p0
.end method

.method public w6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/P$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/P$c;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/protobuf/P$c;-><init>(Lcom/google/protobuf/Descriptors$b;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/P$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/P$c;->E6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/P$c;->d:[Lcom/google/protobuf/Descriptors$f;

    aput-object p1, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$g$b;->PROTO3:Lcom/google/protobuf/Descriptors$g$b;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    return-object p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public y6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/P$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/P$c;->B6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/P$c;->D6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/P$c;->c:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/o0$b;->w(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    return-object p0
.end method

.method public z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/P$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/P$c;->e:Lcom/google/protobuf/r2;

    return-object p0
.end method
