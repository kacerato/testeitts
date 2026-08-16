.class public final Lcom/google/protobuf/Descriptors$k;
.super Lcom/google/protobuf/Descriptors$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public final b:I

.field public c:Lcom/google/protobuf/H$F;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/protobuf/Descriptors$g;

.field public f:Lcom/google/protobuf/Descriptors$b;

.field public g:I

.field public h:[Lcom/google/protobuf/Descriptors$f;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/H$F;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;I)V
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$h;-><init>(Lcom/google/protobuf/Descriptors$a;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$k;->c:Lcom/google/protobuf/H$F;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/H$F;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/Descriptors;->e(Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$k;->d:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$k;->e:Lcom/google/protobuf/Descriptors$g;

    .line 6
    iput p4, p0, Lcom/google/protobuf/Descriptors$k;->b:I

    .line 7
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$k;->f:Lcom/google/protobuf/Descriptors$b;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/protobuf/Descriptors$k;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$F;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;ILcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$k;-><init>(Lcom/google/protobuf/H$F;Lcom/google/protobuf/Descriptors$g;Lcom/google/protobuf/Descriptors$b;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/protobuf/Descriptors$k;)[Lcom/google/protobuf/Descriptors$f;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$k;->h:[Lcom/google/protobuf/Descriptors$f;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/protobuf/Descriptors$k;[Lcom/google/protobuf/Descriptors$f;)[Lcom/google/protobuf/Descriptors$f;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$k;->h:[Lcom/google/protobuf/Descriptors$f;

    return-object p1
.end method

.method public static synthetic h(Lcom/google/protobuf/Descriptors$k;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/Descriptors$k;->g:I

    return p1
.end method

.method public static synthetic i(Lcom/google/protobuf/Descriptors$k;)I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/Descriptors$k;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/Descriptors$k;->g:I

    return v0
.end method

.method public static synthetic j(Lcom/google/protobuf/Descriptors$k;Lcom/google/protobuf/H$F;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$k;->u(Lcom/google/protobuf/H$F;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/Descriptors$g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->e:Lcom/google/protobuf/Descriptors$g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->c:Lcom/google/protobuf/H$F;

    invoke-virtual {v0}, Lcom/google/protobuf/H$F;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/protobuf/Y0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$k;->v()Lcom/google/protobuf/H$F;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->f:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public m(I)Lcom/google/protobuf/Descriptors$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->h:[Lcom/google/protobuf/Descriptors$f;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$k;->g:I

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->h:[Lcom/google/protobuf/Descriptors$f;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Descriptors$k;->b:I

    return v0
.end method

.method public s()Lcom/google/protobuf/H$H;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->c:Lcom/google/protobuf/H$F;

    invoke-virtual {v0}, Lcom/google/protobuf/H$F;->getOptions()Lcom/google/protobuf/H$H;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->h:[Lcom/google/protobuf/Descriptors$f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$f;->i(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public final u(Lcom/google/protobuf/H$F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proto"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$k;->c:Lcom/google/protobuf/H$F;

    return-void
.end method

.method public v()Lcom/google/protobuf/H$F;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$k;->c:Lcom/google/protobuf/H$F;

    return-object v0
.end method
