.class public abstract Lcom/google/protobuf/v0;
.super Lcom/google/protobuf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/v0$c;,
        Lcom/google/protobuf/v0$j;,
        Lcom/google/protobuf/v0$h;,
        Lcom/google/protobuf/v0$g;,
        Lcom/google/protobuf/v0$d;,
        Lcom/google/protobuf/v0$e;,
        Lcom/google/protobuf/v0$f;,
        Lcom/google/protobuf/v0$b;,
        Lcom/google/protobuf/v0$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/v0<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/v0$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/b<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field public static final d:I = 0x7fffffff

.field public static final e:I = -0x80000000

.field public static final f:I = 0x7fffffff

.field public static final g:I

.field public static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/v0<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Lcom/google/protobuf/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/protobuf/v0;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/v0;->b:I

    invoke-static {}, Lcom/google/protobuf/s2;->c()Lcom/google/protobuf/s2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    return-void
.end method

.method public static varargs B6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
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

.method public static varargs D6(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
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

.method public static final E6(Lcom/google/protobuf/v0;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "shouldMemoize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/L1;->K1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/protobuf/v0$i;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/v0$i;

    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/v0;->u6(Lcom/google/protobuf/v0$i;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static L6(Lcom/google/protobuf/D0$k;)Lcom/google/protobuf/D0$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/D0$k<",
            "TE;>;)",
            "Lcom/google/protobuf/D0$k<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/D0$k;->q(I)Lcom/google/protobuf/D0$k;

    move-result-object p0

    return-object p0
.end method

.method public static N6(Lcom/google/protobuf/b1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "info",
            "objects"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/D1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/D1;-><init>(Lcom/google/protobuf/b1;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static P6(Lcom/google/protobuf/b1;Lcom/google/protobuf/b1;Lcom/google/protobuf/D0$d;ILcom/google/protobuf/A2$b;ZLjava/lang/Class;)Lcom/google/protobuf/v0$h;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "messageDefaultInstance",
            "enumTypeMap",
            "number",
            "type",
            "isPacked",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/b1;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/protobuf/b1;",
            "Lcom/google/protobuf/D0$d<",
            "*>;I",
            "Lcom/google/protobuf/A2$b;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/v0$h<",
            "TContainingType;TType;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Lcom/google/protobuf/v0$h;

    new-instance v4, Lcom/google/protobuf/v0$g;

    const/4 v11, 0x1

    move-object v7, v4

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/v0$g;-><init>(Lcom/google/protobuf/D0$d;ILcom/google/protobuf/A2$b;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/v0$h;-><init>(Lcom/google/protobuf/b1;Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/v0$g;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static synthetic Q1(Lcom/google/protobuf/v0;[BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/protobuf/v0;->h7(Lcom/google/protobuf/v0;[BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static Q6(Lcom/google/protobuf/b1;Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/D0$d;ILcom/google/protobuf/A2$b;Ljava/lang/Class;)Lcom/google/protobuf/v0$h;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "defaultValue",
            "messageDefaultInstance",
            "enumTypeMap",
            "number",
            "type",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/b1;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/b1;",
            "Lcom/google/protobuf/D0$d<",
            "*>;I",
            "Lcom/google/protobuf/A2$b;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/v0$h<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/protobuf/v0$h;

    new-instance v7, Lcom/google/protobuf/v0$g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/v0$g;-><init>(Lcom/google/protobuf/D0$d;ILcom/google/protobuf/A2$b;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/v0$h;-><init>(Lcom/google/protobuf/b1;Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/v0$g;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static R6(Lcom/google/protobuf/v0;Ljava/io/InputStream;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/v0;->d7(Lcom/google/protobuf/v0;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static S6(Lcom/google/protobuf/v0;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->d7(Lcom/google/protobuf/v0;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static T6(Lcom/google/protobuf/v0;Lcom/google/protobuf/x;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/x;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/v0;->U6(Lcom/google/protobuf/v0;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static U6(Lcom/google/protobuf/v0;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/x;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->e7(Lcom/google/protobuf/v0;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static V6(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/C;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/v0;->W6(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static W6(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static X6(Lcom/google/protobuf/v0;Ljava/io/InputStream;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/C;->k(Ljava/io/InputStream;)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/v0;->g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static Y6(Lcom/google/protobuf/v0;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/C;->k(Ljava/io/InputStream;)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static Z2(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;
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
            "Lcom/google/protobuf/v0$e<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/v0$d<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/v0$h<",
            "TMessageType;TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/v0$h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Z6(Lcom/google/protobuf/v0;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/v0;->a7(Lcom/google/protobuf/v0;Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static a7(Lcom/google/protobuf/v0;Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/C;->o(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->W6(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/v0;->Z2(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p0

    return-object p0
.end method

.method public static b7(Lcom/google/protobuf/v0;[B)Lcom/google/protobuf/v0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/protobuf/v0;->h7(Lcom/google/protobuf/v0;[BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static c7(Lcom/google/protobuf/v0;[BLcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;[B",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/protobuf/v0;->h7(Lcom/google/protobuf/v0;[BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/v0;->d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static d3(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/b;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static d7(Lcom/google/protobuf/v0;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/C;->P(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lcom/google/protobuf/b$a$a;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/b$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v1}, Lcom/google/protobuf/C;->k(Ljava/io/InputStream;)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/C;->a(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    :cond_1
    throw p0
.end method

.method public static e7(Lcom/google/protobuf/v0;Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/x;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/x;->N()Lcom/google/protobuf/C;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v0;->g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/C;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static emptyBooleanList()Lcom/google/protobuf/D0$a;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/t;->g()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public static emptyDoubleList()Lcom/google/protobuf/D0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/J;->g()Lcom/google/protobuf/J;

    move-result-object v0

    return-object v0
.end method

.method public static emptyFloatList()Lcom/google/protobuf/D0$f;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/q0;->g()Lcom/google/protobuf/q0;

    move-result-object v0

    return-object v0
.end method

.method public static emptyIntList()Lcom/google/protobuf/D0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/C0;->g()Lcom/google/protobuf/C0;

    move-result-object v0

    return-object v0
.end method

.method public static emptyLongList()Lcom/google/protobuf/D0$i;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/O0;->g()Lcom/google/protobuf/O0;

    move-result-object v0

    return-object v0
.end method

.method public static f7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/C;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/v0;->g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;

    move-result-object p0

    return-object p0
.end method

.method public static g7(Lcom/google/protobuf/v0;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->O6()Lcom/google/protobuf/v0;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/D;->U(Lcom/google/protobuf/C;)Lcom/google/protobuf/D;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/protobuf/L1;->P1(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V

    invoke-interface {v0, p0}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_0
    throw p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static h7(Lcom/google/protobuf/v0;[BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->O6()Lcom/google/protobuf/v0;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v6

    add-int v4, p2, p3

    new-instance v5, Lcom/google/protobuf/m$b;

    invoke-direct {v5, p4}, Lcom/google/protobuf/m$b;-><init>(Lcom/google/protobuf/d0;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/L1;->L1(Ljava/lang/Object;[BIILcom/google/protobuf/m$b;)V

    invoke-interface {v6, p0}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_0
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static j7(Ljava/lang/Class;Lcom/google/protobuf/v0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/v0;->H6()V

    sget-object v0, Lcom/google/protobuf/v0;->h:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static mutableCopy(Lcom/google/protobuf/D0$a;)Lcom/google/protobuf/D0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 10
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/D0$a;->q(I)Lcom/google/protobuf/D0$a;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/D0$b;)Lcom/google/protobuf/D0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 8
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/D0$b;->q(I)Lcom/google/protobuf/D0$b;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/D0$f;)Lcom/google/protobuf/D0$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 6
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/D0$f;->q(I)Lcom/google/protobuf/D0$f;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/D0$g;->q(I)Lcom/google/protobuf/D0$g;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/D0$i;)Lcom/google/protobuf/D0$i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 4
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/D0$i;->q(I)Lcom/google/protobuf/D0$i;

    move-result-object p0

    return-object p0
.end method

.method public static w6()Lcom/google/protobuf/D0$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/D0$k<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/A1;->k()Lcom/google/protobuf/A1;

    move-result-object v0

    return-object v0
.end method

.method public static y6(Ljava/lang/Class;)Lcom/google/protobuf/v0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/v0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/protobuf/v0;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/protobuf/x2;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->z6()Lcom/google/protobuf/v0;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/protobuf/v0;->h:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public A6()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method public C6()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->A6()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public F6()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/v0;->b:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G6()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->H6()V

    return-void
.end method

.method public H3()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return-void
.end method

.method public H6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/v0;->b:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/v0;->b:I

    return-void
.end method

.method public I6(ILcom/google/protobuf/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/s2;->l(ILcom/google/protobuf/x;)Lcom/google/protobuf/s2;

    return-void
.end method

.method public final J6(Lcom/google/protobuf/s2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    invoke-static {v0, p1}, Lcom/google/protobuf/s2;->n(Lcom/google/protobuf/s2;Lcom/google/protobuf/s2;)Lcom/google/protobuf/s2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    return-void
.end method

.method public K6(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/s2;->m(II)Lcom/google/protobuf/s2;

    return-void
.end method

.method public final M6()Lcom/google/protobuf/v0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->NEW_BUILDER:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0$b;

    return-object v0
.end method

.method public O6()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public V4()I
    .locals 1

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/L1;->O1(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/v0;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/L1;->I1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->z6()Lcom/google/protobuf/v0;

    move-result-object v0

    return-object v0
.end method

.method public getMemoizedSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/v0;->b:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->GET_PARSER:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->getSerializedSize(Lcom/google/protobuf/L1;)I

    move-result v0

    return v0
.end method

.method public getSerializedSize(Lcom/google/protobuf/L1;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schema"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/v0;->F6()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0;->q6(Lcom/google/protobuf/L1;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/v0;->getMemoizedSerializedSize()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/v0;->getMemoizedSerializedSize()I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0;->q6(Lcom/google/protobuf/L1;)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0;->setMemoizedSerializedSize(I)V

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->F6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->V4()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v0;->C6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->V4()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->k7(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/v0;->A6()I

    move-result v0

    return v0
.end method

.method public i4()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->setMemoizedSerializedSize(I)V

    return-void
.end method

.method public i7(ILcom/google/protobuf/C;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v0;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/s2;->i(ILcom/google/protobuf/C;)Z

    move-result p1

    return p1
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/protobuf/v0;->E6(Lcom/google/protobuf/v0;Z)Z

    move-result v0

    return v0
.end method

.method public k7(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return-void
.end method

.method public final l7()Lcom/google/protobuf/v0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->NEW_BUILDER:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/v0$b;->t6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->M6()Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public final q6(Lcom/google/protobuf/L1;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nullableSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/L1<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/L1;->N1(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/protobuf/L1;->N1(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final r6()Lcom/google/protobuf/v0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/v0<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/v0$b<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->NEW_BUILDER:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0$b;

    return-object v0
.end method

.method public final s6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/v0<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/v0$b<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->r6()Lcom/google/protobuf/v0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0$b;->t6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public setMemoizedSerializedSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/v0;->b:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/v0;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/protobuf/v0;->v6(Lcom/google/protobuf/v0$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->l7()Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/protobuf/d1;->f(Lcom/google/protobuf/b1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u6(Lcom/google/protobuf/v0$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/v0;->v6(Lcom/google/protobuf/v0$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract v6(Lcom/google/protobuf/v0$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation
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

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/E;->T(Lcom/google/protobuf/CodedOutputStream;)Lcom/google/protobuf/E;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/L1;->J1(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    return-void
.end method

.method public final x6()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    invoke-static {}, Lcom/google/protobuf/s2;->c()Lcom/google/protobuf/s2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/s2;->o()Lcom/google/protobuf/s2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    :cond_0
    return-void
.end method

.method public final z6()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/v0$i;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/v0$i;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->t6(Lcom/google/protobuf/v0$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0;

    return-object v0
.end method
