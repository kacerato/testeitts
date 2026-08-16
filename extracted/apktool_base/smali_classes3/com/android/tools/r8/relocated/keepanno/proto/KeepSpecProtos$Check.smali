.class public final Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Check"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;
    }
.end annotation


# static fields
.field public static final BINDINGS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

.field public static final ITEM_FIELD_NUMBER:I = 0x4

.field public static final KIND_FIELD_NUMBER:I = 0x2

.field public static final META_INFO_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/android/tools/r8/internal/z50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/z50;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

.field private bitField0_:I

.field private item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

.field private kind_:I

.field private memoizedIsInitialized:B

.field private metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$1;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;

    .line 18
    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;

    move-result-object v5

    .line 21
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 25
    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    goto :goto_0

    .line 26
    :cond_6
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;

    move-result-object v5

    .line 28
    :cond_7
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->parser()Lcom/android/tools/r8/internal/z50;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    if-eqz v5, :cond_8

    .line 29
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;

    .line 30
    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo$Builder;->buildPartial()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    .line 31
    :cond_8
    iget v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    move v1, v3

    goto/16 :goto_0

    .line 32
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 33
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 34
    throw p2

    .line 35
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 36
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 39
    throw p1

    .line 40
    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/relocated/keepanno/proto/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V

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
    iput-byte p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fz;Lcom/android/tools/r8/relocated/keepanno/proto/n;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;-><init>(Lcom/android/tools/r8/internal/fz;)V

    return-void
.end method

.method public static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2300(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;)Lcom/android/tools/r8/internal/pv0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;I)V
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    return-void
.end method

.method public static bridge synthetic f(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;I)V
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->m()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic k()Lcom/android/tools/r8/internal/z50;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 2
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 12
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 8
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/wz;->parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom([BLcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

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

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasMetaInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasMetaInfo()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasMetaInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    iget v2, p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasBindings()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasBindings()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasBindings()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasItem()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasItem()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v0
.end method

.method public getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBindingsOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingsOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    return-object v0
.end method

.method public getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReferenceOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    invoke-static {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->valueOf(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    return v0
.end method

.method public getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetaInfoOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->metaInfo_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

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

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->PARSER:Lcom/android/tools/r8/internal/z50;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    sget-object v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->CHECK_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

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

.method public hasBindings()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasItem()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMetaInfo()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I

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
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getDescriptor()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasMetaInfo()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasBindings()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
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

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->n()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    const-class v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;-><init>(Lcom/android/tools/r8/internal/gz;Lcom/android/tools/r8/relocated/keepanno/proto/m;)V

    return-object v0
.end method

.method public newInstance(Lcom/android/tools/r8/internal/vz;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    invoke-direct {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->DEFAULT_INSTANCE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/m;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/m;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;->mergeFrom(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check$Builder;

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

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->CHECK_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->kind_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->bindings_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->item_:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
