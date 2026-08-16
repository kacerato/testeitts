.class public abstract Lcom/google/protobuf/t0;
.super Lcom/google/protobuf/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/t0$m;,
        Lcom/google/protobuf/t0$n;,
        Lcom/google/protobuf/t0$h;,
        Lcom/google/protobuf/t0$l;,
        Lcom/google/protobuf/t0$i;,
        Lcom/google/protobuf/t0$j;,
        Lcom/google/protobuf/t0$k;,
        Lcom/google/protobuf/t0$f;,
        Lcom/google/protobuf/t0$g;
    }
.end annotation


# static fields
.field public static final c:J = 0x1L

.field public static d:Z = false


# instance fields
.field public b:Lcom/google/protobuf/r2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/r2;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/t0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t0$f<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/t0$f;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/t0;->b:Lcom/google/protobuf/r2;

    return-void
.end method

.method public static synthetic H3(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->s6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V4(Lcom/google/protobuf/t0;Z)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->r6(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/t0;->q6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p0

    return-object p0
.end method

.method public static computeStringSize(ILjava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->V0(ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Lcom/google/protobuf/x;

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result p0

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->W0(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/google/protobuf/x;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->h0(Lcom/google/protobuf/x;)I

    move-result p0

    return p0
.end method

.method public static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/protobuf/t0;->d:Z

    return-void
.end method

.method public static synthetic i4(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/t0;->u6(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/w1;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "input",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/d0;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/w1;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TM;>;",
            "Lcom/google/protobuf/C;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/C;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "input",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TM;>;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "input",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/d0;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/w1;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static q6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/t0$j<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/Z<",
            "TMessageType;TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/a0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Lcom/google/protobuf/Z;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs s6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "clazz",
            "name",
            "params"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs u6(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "method",
            "object",
            "params"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static w6(Ljava/lang/Class;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/t0$n;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "singularType",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/Y0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/Y0;",
            ")",
            "Lcom/google/protobuf/t0$n<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t0$n;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protobuf/Z$a;->IMMUTABLE:Lcom/google/protobuf/Z$a;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/protobuf/t0$n;-><init>(Lcom/google/protobuf/t0$l;Ljava/lang/Class;Lcom/google/protobuf/Y0;Lcom/google/protobuf/Z$a;)V

    return-object v0
.end method

.method public static writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "output",
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->e(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/protobuf/x;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/x;)V

    :goto_0
    return-void
.end method

.method public static writeStringNoTag(Lcom/google/protobuf/CodedOutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "output",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->f2(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->z1(Lcom/google/protobuf/x;)V

    :goto_0
    return-void
.end method

.method public static x6(Ljava/lang/Class;Lcom/google/protobuf/Y0;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/t0$n;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "singularType",
            "defaultInstance",
            "descriptorOuterClass",
            "extensionName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/Y0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/Y0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/protobuf/t0$n<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t0$n;

    new-instance v1, Lcom/google/protobuf/t0$d;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/protobuf/t0$d;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/protobuf/Z$a;->MUTABLE:Lcom/google/protobuf/Z$a;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/protobuf/t0$n;-><init>(Lcom/google/protobuf/t0$l;Ljava/lang/Class;Lcom/google/protobuf/Y0;Lcom/google/protobuf/Z$a;)V

    return-object v0
.end method

.method public static y6(Lcom/google/protobuf/Y0;ILjava/lang/Class;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/t0$n;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "descriptorIndex",
            "singularType",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/Y0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Y0;",
            "I",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/Y0;",
            ")",
            "Lcom/google/protobuf/t0$n<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t0$n;

    new-instance v1, Lcom/google/protobuf/t0$b;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/t0$b;-><init>(Lcom/google/protobuf/Y0;I)V

    sget-object p0, Lcom/google/protobuf/Z$a;->IMMUTABLE:Lcom/google/protobuf/Z$a;

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/google/protobuf/t0$n;-><init>(Lcom/google/protobuf/t0$l;Ljava/lang/Class;Lcom/google/protobuf/Y0;Lcom/google/protobuf/Z$a;)V

    return-object v0
.end method

.method public static z6(Lcom/google/protobuf/Y0;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/t0$n;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "name",
            "singularType",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/Y0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Y0;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/google/protobuf/Y0;",
            ")",
            "Lcom/google/protobuf/t0$n<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t0$n;

    new-instance v1, Lcom/google/protobuf/t0$c;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/t0$c;-><init>(Lcom/google/protobuf/Y0;Ljava/lang/String;)V

    sget-object p0, Lcom/google/protobuf/Z$a;->MUTABLE:Lcom/google/protobuf/Z$a;

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/google/protobuf/t0$n;-><init>(Lcom/google/protobuf/t0$l;Ljava/lang/Class;Lcom/google/protobuf/Y0;Lcom/google/protobuf/Z$a;)V

    return-object v0
.end method


# virtual methods
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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/t0;->r6(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/t0;->r6(Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/t0$m;->a(Lcom/google/protobuf/t0$m;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->d(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$m$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/t0$m$a;->n(Lcom/google/protobuf/t0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldRaw(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->d(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$m$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/t0$m$a;->o(Lcom/google/protobuf/t0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->b(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/t0$m$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/t0$m$c;->c(Lcom/google/protobuf/t0;)Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    return-object p1
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "+",
            "Lcom/google/protobuf/t0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->d(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$m$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/t0$m$a;->y(Lcom/google/protobuf/t0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->d(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$m$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/t0$m$a;->r(Lcom/google/protobuf/t0;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/t0;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/f1;->e(Lcom/google/protobuf/Y0;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/r2;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->d(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$m$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/t0$m$a;->C(Lcom/google/protobuf/t0;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/t0$m;->b(Lcom/google/protobuf/t0$m;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/t0$m$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/t0$m$c;->e(Lcom/google/protobuf/t0;)Z

    move-result p1

    return p1
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/S0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No map fields found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Y0;

    invoke-interface {v2}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Y0;

    invoke-interface {v1}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method public newBuilderForType(Lcom/google/protobuf/a$b;)Lcom/google/protobuf/Y0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parent"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/t0$a;-><init>(Lcom/google/protobuf/t0;Lcom/google/protobuf/a$b;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/t0;->v6(Lcom/google/protobuf/t0$g;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "unknownFields",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/r2$b;->v6(ILcom/google/protobuf/C;)Z

    move-result p1

    return p1
.end method

.method public final r6(Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "getBytesForString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->t6()Lcom/google/protobuf/t0$m;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/t0$m;->a(Lcom/google/protobuf/t0$m;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$k;->o()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/google/protobuf/t0;->hasOneof(Lcom/google/protobuf/Descriptors$k;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/t0;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$f$b;->STRING:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->getFieldRaw(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public abstract t6()Lcom/google/protobuf/t0$m;
.end method

.method public abstract v6(Lcom/google/protobuf/t0$g;)Lcom/google/protobuf/Y0$a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/v0$j;

    invoke-direct {v0, p0}, Lcom/google/protobuf/v0$j;-><init>(Lcom/google/protobuf/b1;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    invoke-virtual {p0}, Lcom/google/protobuf/t0;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/google/protobuf/f1;->l(Lcom/google/protobuf/Y0;Ljava/util/Map;Lcom/google/protobuf/CodedOutputStream;Z)V

    return-void
.end method
