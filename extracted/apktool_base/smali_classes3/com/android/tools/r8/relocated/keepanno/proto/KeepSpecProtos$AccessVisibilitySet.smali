.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessVisibilitySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_VISIBILITY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

.field private static final PARSER:Lcom/android/tools/r8/internal/z50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/z50;"
        }
    .end annotation
.end field

.field private static final accessVisibility_converter_:Lcom/android/tools/r8/internal/UI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/UI;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private accessVisibilityMemoizedSerializedSize:I

.field private accessVisibility_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$1;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_converter_:Lcom/android/tools/r8/internal/UI;

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$2;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$2;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v3

    .line 15
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v3

    .line 16
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v5

    if-lez v5, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v5

    if-nez v2, :cond_2

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    move v2, v4

    .line 19
    :cond_2
    iget-object v6, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v3

    if-nez v2, :cond_5

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    move v2, v4

    .line 23
    :cond_5
    iget-object v4, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_2
    move v1, v4

    goto :goto_0

    .line 24
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 25
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 26
    throw p2

    .line 27
    :goto_4
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 28
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v2, :cond_7

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    .line 30
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 32
    throw p1

    :cond_8
    if-eqz v2, :cond_9

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    .line 34
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/relocated/keepanno/proto/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V

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
    iput-byte p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;-><init>(Lcom/android/tools/r8/internal/fz;)V

    return-void
.end method

.method public static synthetic access$7900()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$8000(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;)Lcom/android/tools/r8/internal/pv0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->a()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic k()Lcom/android/tools/r8/internal/z50;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public static bridge synthetic l()Lcom/android/tools/r8/internal/UI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_converter_:Lcom/android/tools/r8/internal/UI;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 2
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 12
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 8
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom([BLcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

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

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAccessVisibility(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_converter_:Lcom/android/tools/r8/internal/UI;

    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/UI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p1
.end method

.method public getAccessVisibilityCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccessVisibilityList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/VI;

    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    sget-object v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_converter_:Lcom/android/tools/r8/internal/UI;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/VI;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/UI;)V

    return-object v0
.end method

.method public getAccessVisibilityValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAccessVisibilityValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

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

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getAccessVisibilityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibilityMemoizedSerializedSize:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getDescriptor()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getAccessVisibilityCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x35

    const/16 v3, 0x25

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->b()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;-><init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/a;)V

    return-object v0
.end method

.method public newInstance(Lcom/android/tools/r8/internal/vz;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    invoke-direct {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/a;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/a;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

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

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getSerializedSize()I

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getAccessVisibilityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibilityMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ie;->g(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->accessVisibility_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ie;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
