.class public final Lcom/google/protobuf/Descriptors$i;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final b:I

.field public c:Lcom/google/protobuf/H$B;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/protobuf/Descriptors$g;

.field public final f:Lcom/google/protobuf/Descriptors$l;

.field public g:Lcom/google/protobuf/Descriptors$b;

.field public h:Lcom/google/protobuf/Descriptors$b;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/H$B;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$l;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "proto",
            "file",
            "parent",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 3
    iput p4, p0, Lcom/google/protobuf/Descriptors$i;->b:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$i;->e:Lcom/google/protobuf/Descriptors$g;

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$i;->f:Lcom/google/protobuf/Descriptors$l;

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$l;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$i;->d:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$h;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$B;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$l;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$i;-><init>(Lcom/google/protobuf/H$B;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$l;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$i;->h()V

    return-void
.end method

.method public static synthetic g(Lcom/google/protobuf/Descriptors$i;Lcom/google/protobuf/H$B;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$i;->t(Lcom/google/protobuf/H$B;)V

    return-void
.end method

.method private h()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$i;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v1}, Lcom/google/protobuf/H$B;->getInputType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$c$b;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$c$b;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$h;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$h;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$b;

    const/4 v3, 0x0

    const-string v4, "\" is not a message type."

    const/16 v5, 0x22

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$i;->g:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$i;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v1}, Lcom/google/protobuf/H$B;->L1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$c;->h(Ljava/lang/String;Lcom/google/protobuf/Descriptors$h;Lcom/google/protobuf/Descriptors$c$b;)Lcom/google/protobuf/Descriptors$h;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$i;->h:Lcom/google/protobuf/Descriptors$b;

    return-void

    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v2}, Lcom/google/protobuf/H$B;->L1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v2}, Lcom/google/protobuf/H$B;->getInputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$h;Ljava/lang/String;Lcom/google/protobuf/Descriptors$a;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->e:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$i;->u()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$i;->b:I

    return v0
.end method

.method public j()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public k()Lcom/google/protobuf/H$D;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->getOptions()Lcom/google/protobuf/H$D;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->h:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public q()Lcom/google/protobuf/Descriptors$l;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->f:Lcom/google/protobuf/Descriptors$l;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->i6()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->K5()Z

    move-result v0

    return v0
.end method

.method public final t(Lcom/google/protobuf/H$B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    return-void
.end method

.method public u()Lcom/google/protobuf/H$B;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$i;->c:Lcom/google/protobuf/H$B;

    return-object v0
.end method
