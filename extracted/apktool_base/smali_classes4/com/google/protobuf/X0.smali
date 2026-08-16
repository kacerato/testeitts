.class public final Lcom/google/protobuf/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/U0;

.field public static final b:Lcom/google/protobuf/U0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/X0;->c()Lcom/google/protobuf/U0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/X0;->a:Lcom/google/protobuf/U0;

    new-instance v0, Lcom/google/protobuf/W0;

    invoke-direct {v0}, Lcom/google/protobuf/W0;-><init>()V

    sput-object v0, Lcom/google/protobuf/X0;->b:Lcom/google/protobuf/U0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/protobuf/U0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->a:Lcom/google/protobuf/U0;

    return-object v0
.end method

.method public static b()Lcom/google/protobuf/U0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->b:Lcom/google/protobuf/U0;

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/U0;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/protobuf/V0;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/U0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
