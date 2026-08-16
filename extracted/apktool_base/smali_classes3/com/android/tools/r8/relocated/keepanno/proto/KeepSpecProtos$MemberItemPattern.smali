.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPatternOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemberItemPattern"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    }
.end annotation


# static fields
.field public static final CLASS_REFERENCE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

.field public static final MEMBER_PATTERN_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/android/tools/r8/internal/z50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/z50;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

.field private memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$1;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 13
    :cond_1
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    move-result-object v5

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;

    .line 17
    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    .line 18
    :cond_3
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    goto :goto_0

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v5

    .line 21
    :cond_5
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    move v1, v3

    goto :goto_0

    .line 24
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 25
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 26
    throw p2

    .line 27
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 28
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 31
    throw p1

    .line 32
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/relocated/keepanno/proto/W;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/fz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fz;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/W;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;-><init>(Lcom/android/tools/r8/internal/fz;)V

    return-void
.end method

.method public static synthetic access$7500()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$7600(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/internal/pv0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;I)V
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->U()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic k()Lcom/android/tools/r8/internal/z50;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 2
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 12
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 8
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom([BLcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object p0
.end method

.method public static parser()Lcom/android/tools/r8/internal/z50;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/z50;"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasClassReference()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasClassReference()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasClassReference()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasMemberPattern()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasMemberPattern()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasMemberPattern()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClassReferenceOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReferenceOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    return-object v0
.end method

.method public getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMemberPatternOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memberPattern_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/android/tools/r8/internal/z50;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/z50;"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public hasClassReference()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMemberPattern()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getDescriptor()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasClassReference()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->hasMemberPattern()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->V()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;-><init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/V;)V

    return-object v0
.end method

.method public newInstance(Lcom/android/tools/r8/internal/vz;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    invoke-direct {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/V;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/V;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->classReference_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getClassReference()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;->getMemberPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
