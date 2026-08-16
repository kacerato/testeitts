.class public final Lcom/google/protobuf/Descriptors$c$a;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/protobuf/Descriptors$g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "fullName",
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$c$a;->d:Lcom/google/protobuf/Descriptors$g;

    iput-object p2, p0, Lcom/google/protobuf/Descriptors$c$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$c$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->d:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/protobuf/Y0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$c$a;->d:Lcom/google/protobuf/Descriptors$g;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$g;->I()Lcom/google/protobuf/H$r;

    move-result-object v0

    return-object v0
.end method
