.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDescOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

.field public static final HOLDER_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PARAMETER_TYPES_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/android/tools/r8/internal/z50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/z50;"
        }
    .end annotation
.end field

.field public static final RETURN_TYPE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private parameterTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;",
            ">;"
        }
    .end annotation
.end field

.field private returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$1;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    .line 8
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/16 v5, 0xa

    if-eq v3, v5, :cond_7

    const/16 v5, 0x12

    const/4 v6, 0x0

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_1
    if-nez v2, :cond_2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    move v2, v4

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    .line 17
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    .line 18
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v6

    .line 21
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    iput-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v6, :cond_0

    .line 22
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    .line 23
    invoke-virtual {v6}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    goto :goto_0

    .line 24
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v3, :cond_6

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v6

    .line 26
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    iput-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v6, :cond_0

    .line 27
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_1
    move v1, v4

    goto/16 :goto_0

    .line 31
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 32
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 33
    throw p2

    .line 34
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 35
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v2, :cond_9

    .line 36
    iget-object p2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    .line 37
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 39
    throw p1

    :cond_a
    if-eqz v2, :cond_b

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    .line 41
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/relocated/keepanno/proto/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V

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
    iput-byte p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/i0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;-><init>(Lcom/android/tools/r8/internal/fz;)V

    return-void
.end method

.method public static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1400(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Lcom/android/tools/r8/internal/pv0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/tools/r8/internal/m8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/tools/r8/internal/P0;->checkByteStringIsUtf8(Lcom/android/tools/r8/internal/m8;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    return-void
.end method

.method public static bridge synthetic e(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic f(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic g(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->g0()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic k()Lcom/android/tools/r8/internal/z50;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 2
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 12
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 8
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom([BLcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

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

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasHolder()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasHolder()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasHolder()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasReturnType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasReturnType()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasReturnType()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getParameterTypesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getParameterTypesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    return-object v0
.end method

.method public getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHolderOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDescOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/android/tools/r8/internal/m8;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/m8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/i8;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    return-object v0
.end method

.method public getParameterTypes(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    return-object p1
.end method

.method public getParameterTypesCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParameterTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getParameterTypesOrBuilder(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDescOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDescOrBuilder;

    return-object p1
.end method

.method public getParameterTypesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDescOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

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

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReturnTypeOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDescOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
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

.method public hasHolder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasReturnType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

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
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getDescriptor()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    const/16 v1, 0x25

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x35

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasHolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v3, v1, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->hasReturnType()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v3, v1, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getParameterTypesCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x4

    invoke-static {v3, v1, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getParameterTypesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int v3, v1, v0

    :cond_3
    mul-int/lit8 v3, v3, 0x1d

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->h0()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;-><init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/h0;)V

    return-object v0
.end method

.method public newInstance(Lcom/android/tools/r8/internal/vz;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    invoke-direct {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/h0;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/h0;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->holder_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getHolder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->returnType_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->parameterTypes_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kW;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
