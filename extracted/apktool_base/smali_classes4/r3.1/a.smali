.class public final Lr3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/a$d;,
        Lr3/a$e;,
        Lr3/a$b;,
        Lr3/a$c;,
        Lr3/a$f;,
        Lr3/a$g;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$b;

.field public static final b:Lcom/google/protobuf/w0$h;

.field public static final c:Lcom/google/protobuf/Descriptors$b;

.field public static final d:Lcom/google/protobuf/w0$h;

.field public static final e:Lcom/google/protobuf/Descriptors$b;

.field public static final f:Lcom/google/protobuf/w0$h;

.field public static final g:Lcom/google/protobuf/Descriptors$b;

.field public static final h:Lcom/google/protobuf/w0$h;

.field public static i:Lcom/google/protobuf/Descriptors$g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"c\n\u0007Version\u0012\u0014\n\u0005major\u0018\u0001 \u0001(\u0005R\u0005major\u0012\u0014\n\u0005minor\u0018\u0002 \u0001(\u0005R\u0005minor\u0012\u0014\n\u0005patch\u0018\u0003 \u0001(\u0005R\u0005patch\u0012\u0016\n\u0006suffix\u0018\u0004 \u0001(\tR\u0006suffix\"\u00f1\u0001\n\u0014CodeGeneratorRequest\u0012(\n\u0010file_to_generate\u0018\u0001 \u0003(\tR\u000efileToGenerate\u0012\u001c\n\tparameter\u0018\u0002 \u0001(\tR\tparameter\u0012C\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProtoR\tprotoFile\u0012L\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.VersionR\u000fcompilerVersion\"\u0094\u0003\n\u0015CodeGeneratorResponse\u0012\u0014\n\u0005error\u0018\u0001 \u0001(\tR\u0005error\u0012-\n\u0012supported_features\u0018\u0002 \u0001(\u0004R\u0011supportedFeatures\u0012H\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.FileR\u0004file\u001a\u00b1\u0001\n\u0004File\u0012\u0012\n\u0004name\u0018\u0001 \u0001(\tR\u0004name\u0012\'\n\u000finsertion_point\u0018\u0002 \u0001(\tR\u000einsertionPoint\u0012\u0018\n\u0007content\u0018\u000f \u0001(\tR\u0007content\u0012R\n\u0013generated_code_info\u0018\u0010 \u0001(\u000b2\".google.protobuf.GeneratedCodeInfoR\u0011generatedCodeInfo\"8\n\u0007Feature\u0012\u0010\n\u000cFEATURE_NONE\u0010\u0000\u0012\u001b\n\u0017FEATURE_PROTO3_OPTIONAL\u0010\u0001Br\n\u001ccom.google.protobuf.compilerB\u000cPluginProtosZ)google.golang.org/protobuf/types/pluginpb\u00aa\u0002\u0018Google.Protobuf.Compiler"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H;->c0()Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    filled-new-array {v1}, [Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$g;->B([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    sput-object v0, Lr3/a;->i:Lcom/google/protobuf/Descriptors$g;

    invoke-static {}, Lr3/a;->i()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lr3/a;->a:Lcom/google/protobuf/Descriptors$b;

    new-instance v2, Lcom/google/protobuf/w0$h;

    const-string v3, "Patch"

    const-string v4, "Suffix"

    const-string v5, "Major"

    const-string v6, "Minor"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lr3/a;->b:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lr3/a;->i()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lr3/a;->c:Lcom/google/protobuf/Descriptors$b;

    new-instance v2, Lcom/google/protobuf/w0$h;

    const-string v3, "ProtoFile"

    const-string v4, "CompilerVersion"

    const-string v5, "FileToGenerate"

    const-string v6, "Parameter"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lr3/a;->d:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lr3/a;->i()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lr3/a;->e:Lcom/google/protobuf/Descriptors$b;

    new-instance v2, Lcom/google/protobuf/w0$h;

    const-string v3, "SupportedFeatures"

    const-string v4, "File"

    const-string v5, "Error"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lr3/a;->f:Lcom/google/protobuf/w0$h;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lr3/a;->g:Lcom/google/protobuf/Descriptors$b;

    new-instance v1, Lcom/google/protobuf/w0$h;

    const-string v2, "Content"

    const-string v3, "GeneratedCodeInfo"

    const-string v4, "Name"

    const-string v5, "InsertionPoint"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lr3/a;->h:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lcom/google/protobuf/H;->c0()Lcom/google/protobuf/Descriptors$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lr3/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/protobuf/w0$h;
    .locals 1

    sget-object v0, Lr3/a;->b:Lcom/google/protobuf/w0$h;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lr3/a;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static synthetic d()Lcom/google/protobuf/w0$h;
    .locals 1

    sget-object v0, Lr3/a;->d:Lcom/google/protobuf/w0$h;

    return-object v0
.end method

.method public static synthetic e()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lr3/a;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static synthetic f()Lcom/google/protobuf/w0$h;
    .locals 1

    sget-object v0, Lr3/a;->f:Lcom/google/protobuf/w0$h;

    return-object v0
.end method

.method public static synthetic g()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lr3/a;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static synthetic h()Lcom/google/protobuf/w0$h;
    .locals 1

    sget-object v0, Lr3/a;->h:Lcom/google/protobuf/w0$h;

    return-object v0
.end method

.method public static i()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    sget-object v0, Lr3/a;->i:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public static j(Lcom/google/protobuf/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    invoke-static {p0}, Lr3/a;->k(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public static k(Lcom/google/protobuf/d0;)V
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
