.class public final Lcom/google/protobuf/X1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q0<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/google/protobuf/Z1;->c:Lcom/google/protobuf/Descriptors$b;

    sget-object v1, Lcom/google/protobuf/A2$b;->STRING:Lcom/google/protobuf/A2$b;

    sget-object v2, Lcom/google/protobuf/A2$b;->MESSAGE:Lcom/google/protobuf/A2$b;

    invoke-static {}, Lcom/google/protobuf/y2;->w6()Lcom/google/protobuf/y2;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/protobuf/Q0;->x6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/A2$b;Ljava/lang/Object;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)Lcom/google/protobuf/Q0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
