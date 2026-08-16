.class public Lcom/google/protobuf/l2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/l2;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/l2;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/protobuf/l2$c;->a:Lcom/google/protobuf/l2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/protobuf/l2;
    .locals 1

    sget-object v0, Lcom/google/protobuf/l2$c;->a:Lcom/google/protobuf/l2;

    return-object v0
.end method
