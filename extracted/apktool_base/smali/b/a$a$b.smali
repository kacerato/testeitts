.class public final Lb/a$a$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lb/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lb/a$a$b;",
        ">;",
        "Lb/a$b;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

.field public e:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;",
            "Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lb/a$a$c;",
            "Lb/a$a$c$b;",
            "Lb/a$a$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lb/a$a$b;->f:I

    .line 6
    iput-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lb/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a$a$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lb/a$a$b;->f:I

    .line 11
    iput-object p1, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/a$a$b;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lb/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a$a$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lb/a;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a$a$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public A6()Lb/a$a$b;
    .locals 1

    invoke-static {}, Lb/a$a;->E6()Lb/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a$a;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B6()Lb/a$a$b;
    .locals 1

    invoke-static {}, Lb/a$a;->E6()Lb/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a$a;->S5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6()Lb/a$a$b;
    .locals 1

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lb/a$a$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lb/a$a$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final D6()V
    .locals 2

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    iget v0, p0, Lb/a$a$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lb/a$a$b;->b:I

    :cond_0
    return-void
.end method

.method public E6()Lb/a$a;
    .locals 1

    invoke-static {}, Lb/a$a;->E6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public F6(I)Lb/a$a$c$b;
    .locals 1

    invoke-virtual {p0}, Lb/a$a$b;->H6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lb/a$a$c$b;

    return-object p1
.end method

.method public G()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public G6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a$a$c$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/a$a$b;->H6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final H6()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lb/a$a$c;",
            "Lb/a$a$c$b;",
            "Lb/a$a$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lb/a$a$b;->h:Ljava/util/List;

    iget v2, p0, Lb/a$a$b;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public I1(ILb/a$a$c$b;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-virtual {p2}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public I6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lb/a$a$b;
    .locals 2

    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lb/a$a$b;->getConfigBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J6(Lb/a$a;)Lb/a$a$b;
    .locals 2

    invoke-static {}, Lb/a$a;->E6()Lb/a$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb/a$a;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lb/a$a;->u6(Lb/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    iget v0, p0, Lb/a$a$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lb/a$a;->hasConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/a$a;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a$a$b;->I6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lb/a$a$b;

    :cond_2
    invoke-static {p1}, Lb/a$a;->w6(Lb/a$a;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/a$a;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a$a$b;->X6(I)Lb/a$a$b;

    :cond_3
    invoke-virtual {p1}, Lb/a$a;->S5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lb/a$a;->v6(Lb/a$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    iget v0, p0, Lb/a$a$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_4
    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_6

    invoke-static {p1}, Lb/a$a;->t6(Lb/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lb/a$a;->t6(Lb/a$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lb/a$a$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-static {p1}, Lb/a$a;->t6(Lb/a$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lb/a$a;->t6(Lb/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lb/a$a;->t6(Lb/a$a;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lb/a$a$b;->h:Ljava/util/List;

    iget v1, p0, Lb/a$a$b;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lb/a$a$b;->b:I

    invoke-static {}, Lb/a$a;->C6()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lb/a$a$b;->H6()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lb/a$a;->t6(Lb/a$a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a$a$b;->M6(Lcom/google/protobuf/r2;)Lb/a$a$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public K6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0x12

    if-eq v1, v3, :cond_6

    const/16 v3, 0x18

    if-eq v1, v3, :cond_5

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lb/a$a$c;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lb/a$a$c;

    iget-object v2, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v2, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    iget v1, p0, Lb/a$a$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lb/a$a$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lb/a$a$b;->f:I

    iget v1, p0, Lb/a$a$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lb/a$a$b;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lb/a$a$b;->getConfigFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lb/a$a$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lb/a$a$b;->b:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    iget v1, p0, Lb/a$a$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lb/a$a$b;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public L6(Lcom/google/protobuf/Y0;)Lb/a$a$b;
    .locals 1

    instance-of v0, p1, Lb/a$a;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a$a;

    invoke-virtual {p0, p1}, Lb/a$a$b;->J6(Lb/a$a;)Lb/a$a$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final M6(Lcom/google/protobuf/r2;)Lb/a$a$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lb/a$a$b;

    return-object p1
.end method

.method public N6(I)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public O6(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object p1

    iput-object p1, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P6(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Q6(ILb/a$a$c$b;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-virtual {p2}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public R6(ILb/a$a$c;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public S2()I
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public S5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public S6(Ljava/lang/String;)Lb/a$a$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public T6(Lcom/google/protobuf/x;)Lb/a$a$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lb/a$a;->access$200(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public U6(Ljava/lang/String;)Lb/a$a$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public V6(Lcom/google/protobuf/x;)Lb/a$a$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lb/a$a;->D6(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public W6(Lcom/android/aapt/Resources$FileReference$Type;)Lb/a$a$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lb/a$a$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$FileReference$Type;->getNumber()I

    move-result p1

    iput p1, p0, Lb/a$a$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public X6(I)Lb/a$a$b;
    .locals 0

    iput p1, p0, Lb/a$a$b;->f:I

    iget p1, p0, Lb/a$a$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public final Y6(Lcom/google/protobuf/r2;)Lb/a$a$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lb/a$a$b;

    return-object p1
.end method

.method public a5(Lb/a$a$c$b;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-virtual {p1}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/a$a$c$b;->m1()Lb/a$a$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$b;->t6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$b;->t6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$b;->u6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$b;->u6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/a$a$b;->x6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$b;->x6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lb/a$a$b;->x6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$b;->x6()Lb/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public g0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object v0
.end method

.method public getConfigBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lb/a$a$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-virtual {p0}, Lb/a$a$b;->getConfigFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    return-object v0
.end method

.method public final getConfigFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;",
            "Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lb/a$a$b;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    :cond_0
    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public getConfigOrBuilder()Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a$a$b;->E6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/a$a$b;->E6()Lb/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lb/a;->c()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/aapt/Resources$FileReference$Type;
    .locals 1

    iget v0, p0, Lb/a$a$b;->f:I

    invoke-static {v0}, Lcom/android/aapt/Resources$FileReference$Type;->forNumber(I)Lcom/android/aapt/Resources$FileReference$Type;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/Resources$FileReference$Type;->UNRECOGNIZED:Lcom/android/aapt/Resources$FileReference$Type;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    iget v0, p0, Lb/a$a$b;->f:I

    return v0
.end method

.method public hasConfig()Z
    .locals 1

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lb/a;->d()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lb/a$a;

    const-class v2, Lb/a$a$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1(Ljava/lang/Iterable;)Lb/a$a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lb/a$a$c;",
            ">;)",
            "Lb/a$a$b;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lb/a$a$b;->K6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lb/a$a$b;->L6(Lcom/google/protobuf/Y0;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/a$a$b;->K6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$b;->L6(Lcom/google/protobuf/Y0;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lb/a$a$b;->K6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lb/a$a$b;->K6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lb/a$a$b;->M6(Lcom/google/protobuf/r2;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a$a$b;->M6(Lcom/google/protobuf/r2;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$b;->M6(Lcom/google/protobuf/r2;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public q2(I)Lb/a$a$c;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a$a$c;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lb/a$a$c;

    return-object p1
.end method

.method public q6(Lb/a$a$c;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r6()Lb/a$a$c$b;
    .locals 2

    invoke-virtual {p0}, Lb/a$a$b;->H6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lb/a$a$c;->w6()Lb/a$a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lb/a$a$c$b;

    return-object v0
.end method

.method public s6(I)Lb/a$a$c$b;
    .locals 2

    invoke-virtual {p0}, Lb/a$a$b;->H6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lb/a$a$c;->w6()Lb/a$a$c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lb/a$a$c$b;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a$a$b;->Y6(Lcom/google/protobuf/r2;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a$a$b;->Y6(Lcom/google/protobuf/r2;)Lb/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public t3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lb/a$a$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public t6()Lb/a$a;
    .locals 2

    invoke-virtual {p0}, Lb/a$a$b;->u6()Lb/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a$a;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public u6()Lb/a$a;
    .locals 2

    new-instance v0, Lb/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a$a;-><init>(Lcom/google/protobuf/w0$b;Lb/e;)V

    invoke-virtual {p0, v0}, Lb/a$a$b;->w6(Lb/a$a;)V

    iget v1, p0, Lb/a$a$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lb/a$a$b;->v6(Lb/a$a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public v3(ILb/a$a$c;)Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lb/a$a$b;->D6()V

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final v6(Lb/a$a;)V
    .locals 2

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lb/a$a;->z6(Lb/a$a;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    :goto_0
    invoke-static {p1, v1}, Lb/a$a;->x6(Lb/a$a;Lcom/android/aapt/ConfigurationOuterClass$Configuration;)V

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    iget v1, p0, Lb/a$a$b;->f:I

    invoke-static {p1, v1}, Lb/a$a;->B6(Lb/a$a;I)V

    :cond_3
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a$a;->A6(Lb/a$a;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final w6(Lb/a$a;)V
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lb/a$a$b;->b:I

    :cond_0
    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lb/a$a;->y6(Lb/a$a;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a$a;->y6(Lb/a$a;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public x4(I)Lb/a$a$d;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a$a$d;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lb/a$a$d;

    return-object p1
.end method

.method public x6()Lb/a$a$b;
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lb/a$a$b;->b:I

    const-string v1, ""

    iput-object v1, p0, Lb/a$a$b;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    iget-object v3, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/Q1;->d()V

    iput-object v2, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    :cond_0
    iput v0, p0, Lb/a$a$b;->f:I

    iput-object v1, p0, Lb/a$a$b;->g:Ljava/lang/Object;

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lb/a$a$b;->h:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lb/a$a$b;->b:I

    return-object p0
.end method

.method public y6()Lb/a$a$b;
    .locals 2

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lb/a$a$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a$a$b;->d:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    iget-object v1, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lb/a$a$b;->e:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6()Lb/a$a$b;
    .locals 1

    iget-object v0, p0, Lb/a$a$b;->i:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a$a$b;->h:Ljava/util/List;

    iget v0, p0, Lb/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lb/a$a$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method
