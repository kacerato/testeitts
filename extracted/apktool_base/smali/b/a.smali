.class public final Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a;,
        Lb/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Descriptors$b;

.field public static final b:Lcom/google/protobuf/w0$h;

.field public static final c:Lcom/google/protobuf/Descriptors$b;

.field public static final d:Lcom/google/protobuf/w0$h;

.field public static e:Lcom/google/protobuf/Descriptors$g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\n\u0017ResourcesInternal.proto\u0012\u0010aapt.pb.internal\u001a\u0013Configuration.proto\u001a\u000fResources.proto\"\u0097\u0002\n\u000cCompiledFile\u0012\u0015\n\rresource_name\u0018\u0001 \u0001(\t\u0012&\n\u0006config\u0018\u0002 \u0001(\u000b2\u0016.aapt.pb.Configuration\u0012)\n\u0004type\u0018\u0003 \u0001(\u000e2\u001b.aapt.pb.FileReference.Type\u0012\u0013\n\u000bsource_path\u0018\u0004 \u0001(\t\u0012>\n\u000fexported_symbol\u0018\u0005 \u0003(\u000b2%.aapt.pb.internal.CompiledFile.Symbol\u001aH\n\u0006Symbol\u0012\u0015\n\rresource_name\u0018\u0001 \u0001(\t\u0012\'\n\u0006source\u0018\u0002 \u0001(\u000b2\u0017.aapt.pb.SourcePositionB\u001a\n\u0018android.aapt.pb.internalb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-static {}, Lcom/android/aapt/Resources;->getDescriptor()Lcom/google/protobuf/Descriptors$g;

    move-result-object v2

    filled-new-array {v1, v2}, [Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$g;->B([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    sput-object v0, Lb/a;->e:Lcom/google/protobuf/Descriptors$g;

    invoke-static {}, Lb/a;->e()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lb/a;->a:Lcom/google/protobuf/Descriptors$b;

    new-instance v2, Lcom/google/protobuf/w0$h;

    const-string v3, "SourcePath"

    const-string v4, "ExportedSymbol"

    const-string v5, "ResourceName"

    const-string v6, "Config"

    const-string v7, "Type"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lb/a;->b:Lcom/google/protobuf/w0$h;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lb/a;->c:Lcom/google/protobuf/Descriptors$b;

    new-instance v1, Lcom/google/protobuf/w0$h;

    const-string v2, "Source"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lb/a;->d:Lcom/google/protobuf/w0$h;

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$g;

    invoke-static {}, Lcom/android/aapt/Resources;->getDescriptor()Lcom/google/protobuf/Descriptors$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lb/a;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/w0$h;
    .locals 1

    sget-object v0, Lb/a;->d:Lcom/google/protobuf/w0$h;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lb/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/w0$h;
    .locals 1

    sget-object v0, Lb/a;->b:Lcom/google/protobuf/w0$h;

    return-object v0
.end method

.method public static e()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    sget-object v0, Lb/a;->e:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public static f(Lcom/google/protobuf/b0;)V
    .locals 0

    invoke-static {p0}, Lb/a;->g(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public static g(Lcom/google/protobuf/d0;)V
    .locals 0

    return-void
.end method
