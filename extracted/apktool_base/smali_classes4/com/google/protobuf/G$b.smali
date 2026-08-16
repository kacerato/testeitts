.class public Lcom/google/protobuf/G$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/G;->i(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/Descriptors$f;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$valueField"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/G$b;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/G$b;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
