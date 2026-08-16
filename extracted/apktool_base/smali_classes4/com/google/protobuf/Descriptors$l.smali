.class public final Lcom/google/protobuf/Descriptors$l;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# instance fields
.field public final b:I

.field public c:Lcom/google/protobuf/H$J;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/protobuf/Descriptors$g;

.field public f:[Lcom/google/protobuf/Descriptors$i;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/H$J;Lcom/google/protobuf/Descriptors$g;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "proto",
            "file",
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
    iput p3, p0, Lcom/google/protobuf/Descriptors$l;->b:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$l;->c:Lcom/google/protobuf/H$J;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/H$J;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/google/protobuf/Descriptors;->e(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$l;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$l;->e:Lcom/google/protobuf/Descriptors$g;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/H$J;->L5()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/Descriptors$i;

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$l;->f:[Lcom/google/protobuf/Descriptors$i;

    const/4 p3, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$J;->L5()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 9
    iget-object v6, p0, Lcom/google/protobuf/Descriptors$l;->f:[Lcom/google/protobuf/Descriptors$i;

    new-instance v7, Lcom/google/protobuf/Descriptors$i;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/H$J;->f6(I)Lcom/google/protobuf/H$B;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$i;-><init>(Lcom/google/protobuf/H$B;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$l;ILcom/google/protobuf/Descriptors$a;)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$c;->b(Lcom/google/protobuf/Descriptors$h;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$J;Lcom/google/protobuf/Descriptors$g;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Descriptors$l;-><init>(Lcom/google/protobuf/H$J;Lcom/google/protobuf/Descriptors$g;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$l;->h()V

    return-void
.end method

.method public static synthetic g(Lcom/google/protobuf/Descriptors$l;Lcom/google/protobuf/H$J;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$l;->q(Lcom/google/protobuf/H$J;)V

    return-void
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->f:[Lcom/google/protobuf/Descriptors$i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/protobuf/Descriptors$i;->e(Lcom/google/protobuf/Descriptors$i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->e:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->c:Lcom/google/protobuf/H$J;

    invoke-virtual {v0}, Lcom/google/protobuf/H$J;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$l;->r()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$i;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->e:Lcom/google/protobuf/Descriptors$g;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$g;->e(Lcom/google/protobuf/Descriptors$g;)Lcom/google/protobuf/Descriptors$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$c;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$h;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Descriptors$i;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$l;->b:I

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->f:[Lcom/google/protobuf/Descriptors$i;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/protobuf/H$L;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->c:Lcom/google/protobuf/H$J;

    invoke-virtual {v0}, Lcom/google/protobuf/H$J;->getOptions()Lcom/google/protobuf/H$L;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lcom/google/protobuf/H$J;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$l;->c:Lcom/google/protobuf/H$J;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$l;->f:[Lcom/google/protobuf/Descriptors$i;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/H$J;->f6(I)Lcom/google/protobuf/H$B;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$i;->g(Lcom/google/protobuf/Descriptors$i;Lcom/google/protobuf/H$B;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()Lcom/google/protobuf/H$J;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$l;->c:Lcom/google/protobuf/H$J;

    return-object v0
.end method
