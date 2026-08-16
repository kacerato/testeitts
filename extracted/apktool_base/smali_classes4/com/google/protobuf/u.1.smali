.class public abstract Lcom/google/protobuf/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/u$a;

    invoke-direct {v0}, Lcom/google/protobuf/u$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/u;->a:Lcom/google/protobuf/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/protobuf/u;
    .locals 1

    sget-object v0, Lcom/google/protobuf/u;->a:Lcom/google/protobuf/u;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Lcom/google/protobuf/e;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method

.method public abstract b(I)Lcom/google/protobuf/e;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method
