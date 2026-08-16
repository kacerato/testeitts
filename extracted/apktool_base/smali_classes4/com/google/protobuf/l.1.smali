.class public final Lcom/google/protobuf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$b;

.field public static final b:Lcom/google/protobuf/w0$h;

.field public static final c:Lcom/google/protobuf/Descriptors$b;

.field public static final d:Lcom/google/protobuf/w0$h;

.field public static final e:Lcom/google/protobuf/Descriptors$b;

.field public static final f:Lcom/google/protobuf/w0$h;

.field public static g:Lcom/google/protobuf/Descriptors$g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\u0019google/protobuf/api.proto\u0012\u000fgoogle.protobuf\u001a$google/protobuf/source_context.proto\u001a\u001agoogle/protobuf/type.proto\"\u00c1\u0002\n\u0003Api\u0012\u0012\n\u0004name\u0018\u0001 \u0001(\tR\u0004name\u00121\n\u0007methods\u0018\u0002 \u0003(\u000b2\u0017.google.protobuf.MethodR\u0007methods\u00121\n\u0007options\u0018\u0003 \u0003(\u000b2\u0017.google.protobuf.OptionR\u0007options\u0012\u0018\n\u0007version\u0018\u0004 \u0001(\tR\u0007version\u0012E\n\u000esource_context\u0018\u0005 \u0001(\u000b2\u001e.google.protobuf.SourceContextR\rsourceContext\u0012.\n\u0006mixins\u0018\u0006 \u0003(\u000b2\u0016.google.protobuf.MixinR\u0006mixins\u0012/\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.SyntaxR\u0006syntax\"\u00b2\u0002\n\u0006Method\u0012\u0012\n\u0004name\u0018\u0001 \u0001(\tR\u0004name\u0012(\n\u0010request_type_url\u0018\u0002 \u0001(\tR\u000erequestTypeUrl\u0012+\n\u0011request_streaming\u0018\u0003 \u0001(\u0008R\u0010requestStreaming\u0012*\n\u0011response_type_url\u0018\u0004 \u0001(\tR\u000fresponseTypeUrl\u0012-\n\u0012response_streaming\u0018\u0005 \u0001(\u0008R\u0011responseStreaming\u00121\n\u0007options\u0018\u0006 \u0003(\u000b2\u0017.google.protobuf.OptionR\u0007options\u0012/\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.SyntaxR\u0006syntax\"/\n\u0005Mixin\u0012\u0012\n\u0004name\u0018\u0001 \u0001(\tR\u0004name\u0012\u0012\n\u0004root\u0018\u0002 \u0001(\tR\u0004rootBv\n\u0013com.google.protobufB\u0008ApiProtoP\u0001Z,google.golang.org/protobuf/types/known/apipb\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/U1;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/k2;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v2

    filled-new-array {v1, v2}, [Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$g;->B([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/l;->g:Lcom/google/protobuf/Descriptors$g;

    invoke-static {}, Lcom/google/protobuf/l;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/l;->a:Lcom/google/protobuf/Descriptors$b;

    new-instance v1, Lcom/google/protobuf/w0$h;

    const-string v7, "Mixins"

    const-string v8, "Syntax"

    const-string v2, "Name"

    const-string v3, "Methods"

    const-string v4, "Options"

    const-string v5, "Version"

    const-string v6, "SourceContext"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/l;->b:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lcom/google/protobuf/l;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/l;->c:Lcom/google/protobuf/Descriptors$b;

    new-instance v1, Lcom/google/protobuf/w0$h;

    const-string v7, "Options"

    const-string v8, "Syntax"

    const-string v2, "Name"

    const-string v3, "RequestTypeUrl"

    const-string v4, "RequestStreaming"

    const-string v5, "ResponseTypeUrl"

    const-string v6, "ResponseStreaming"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/l;->d:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lcom/google/protobuf/l;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/protobuf/l;->e:Lcom/google/protobuf/Descriptors$b;

    new-instance v1, Lcom/google/protobuf/w0$h;

    const-string v2, "Name"

    const-string v3, "Root"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/l;->f:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lcom/google/protobuf/U1;->a()Lcom/google/protobuf/Descriptors$g;

    invoke-static {}, Lcom/google/protobuf/k2;->a()Lcom/google/protobuf/Descriptors$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    sget-object v0, Lcom/google/protobuf/l;->g:Lcom/google/protobuf/Descriptors$g;

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

    invoke-static {p0}, Lcom/google/protobuf/l;->c(Lcom/google/protobuf/d0;)V

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
