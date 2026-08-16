.class public Lcom/google/protobuf/Descriptors$DescriptorValidationException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptorValidationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fccd5afd98283ccL


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final proto:Lcom/google/protobuf/Y0;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "problemDescriptor",
            "description"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->I()Lcom/google/protobuf/H$r;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/google/protobuf/Y0;

    .line 13
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$g;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$g;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "problemDescriptor",
            "description"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$h;->d()Lcom/google/protobuf/Y0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/google/protobuf/Y0;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "problemDescriptor",
            "description",
            "cause"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getProblemProto()Lcom/google/protobuf/Y0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/google/protobuf/Y0;

    return-object v0
.end method

.method public getProblemSymbolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    return-object v0
.end method
