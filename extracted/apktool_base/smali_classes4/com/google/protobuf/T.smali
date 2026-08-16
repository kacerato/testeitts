.class public final Lcom/google/protobuf/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$b;

.field public static final b:Lcom/google/protobuf/w0$h;

.field public static c:Lcom/google/protobuf/Descriptors$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\u001bgoogle/protobuf/empty.proto\u0012\u000fgoogle.protobuf\"\u0007\n\u0005EmptyB}\n\u0013com.google.protobufB\nEmptyProtoP\u0001Z.google.golang.org/protobuf/types/known/emptypb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$g;->B([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/T;->c:Lcom/google/protobuf/Descriptors$g;

    invoke-static {}, Lcom/google/protobuf/T;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/T;->a:Lcom/google/protobuf/Descriptors$b;

    new-instance v2, Lcom/google/protobuf/w0$h;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/T;->b:Lcom/google/protobuf/w0$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    sget-object v0, Lcom/google/protobuf/T;->c:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public static b(Lcom/google/protobuf/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/T;->c(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public static c(Lcom/google/protobuf/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    return-void
.end method
