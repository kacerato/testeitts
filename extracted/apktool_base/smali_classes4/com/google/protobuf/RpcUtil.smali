.class public final Lcom/google/protobuf/RpcUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RpcUtil$AlreadyCalledException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/Y0;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/RpcUtil;->b(Lcom/google/protobuf/Y0;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/protobuf/Y0;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "typeDefaultInstance",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Y0;",
            ">(TType;",
            "Lcom/google/protobuf/Y0;",
            ")TType;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/protobuf/I1;Ljava/lang/Class;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/I1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "originalCallback",
            "originalClass",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/I1<",
            "TType;>;",
            "Ljava/lang/Class<",
            "TType;>;TType;)",
            "Lcom/google/protobuf/I1<",
            "Lcom/google/protobuf/Y0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/RpcUtil$a;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/protobuf/RpcUtil$a;-><init>(Ljava/lang/Class;Lcom/google/protobuf/Y0;Lcom/google/protobuf/I1;)V

    return-object v0
.end method

.method public static d(Lcom/google/protobuf/I1;)Lcom/google/protobuf/I1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "originalCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/I1<",
            "TParameterType;>;)",
            "Lcom/google/protobuf/I1<",
            "TParameterType;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/RpcUtil$b;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RpcUtil$b;-><init>(Lcom/google/protobuf/I1;)V

    return-object v0
.end method

.method public static e(Lcom/google/protobuf/I1;)Lcom/google/protobuf/I1;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "originalCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Lcom/google/protobuf/I1<",
            "Lcom/google/protobuf/Y0;",
            ">;)",
            "Lcom/google/protobuf/I1<",
            "TType;>;"
        }
    .end annotation

    return-object p0
.end method
