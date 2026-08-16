.class public final Lcom/google/protobuf/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$f;

.field public final b:Lcom/google/protobuf/Y0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "defaultInstance"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;Lcom/google/protobuf/b0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/b0$c;-><init>(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V

    return-void
.end method
