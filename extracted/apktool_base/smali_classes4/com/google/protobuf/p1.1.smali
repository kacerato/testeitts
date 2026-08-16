.class public final Lcom/google/protobuf/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/v0;

    invoke-virtual {p1}, Lcom/google/protobuf/v0;->O6()Lcom/google/protobuf/v0;

    move-result-object p1

    return-object p1
.end method
