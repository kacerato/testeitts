.class public final Lcom/google/protobuf/w0$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w0$h$f;,
        Lcom/google/protobuf/w0$h$i;,
        Lcom/google/protobuf/w0$h$j;,
        Lcom/google/protobuf/w0$h$d;,
        Lcom/google/protobuf/w0$h$g;,
        Lcom/google/protobuf/w0$h$b;,
        Lcom/google/protobuf/w0$h$e;,
        Lcom/google/protobuf/w0$h$h;,
        Lcom/google/protobuf/w0$h$c;,
        Lcom/google/protobuf/w0$h$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$b;

.field public final b:[Lcom/google/protobuf/w0$h$a;

.field public c:[Ljava/lang/String;

.field public final d:[Lcom/google/protobuf/w0$h$c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "camelCaseNames"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/w0$h;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/w0$h$a;

    iput-object p2, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/protobuf/w0$h$c;

    iput-object p1, p0, Lcom/google/protobuf/w0$h;->d:[Lcom/google/protobuf/w0$h$c;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/protobuf/w0$h;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "camelCaseNames",
            "messageClass",
            "builderClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0$b<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/w0$h;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/w0$h;)Lcom/google/protobuf/Descriptors$b;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/w0$h;->a:Lcom/google/protobuf/Descriptors$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$h$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h;->f(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$h$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h;->e(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageClass",
            "builderClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0$b<",
            "*>;>;)",
            "Lcom/google/protobuf/w0$h;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/w0$h;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/protobuf/w0$h;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_a

    iget-object v4, p0, Lcom/google/protobuf/w0$h;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result v4

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    :cond_2
    move-object v10, v3

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_4

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$b;

    invoke-direct {v4, v6, p1}, Lcom/google/protobuf/w0$h$b;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$f;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/w0$h$f;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$d;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/w0$h$d;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$e;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/w0$h$e;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$i;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/w0$h$i;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$g;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/w0$h$g;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->STRING:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$j;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/w0$h$j;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    new-instance v4, Lcom/google/protobuf/w0$h$h;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/w0$h$h;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/w0$h;->d:[Lcom/google/protobuf/w0$h$c;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_b

    iget-object v10, p0, Lcom/google/protobuf/w0$h;->d:[Lcom/google/protobuf/w0$h$c;

    new-instance v11, Lcom/google/protobuf/w0$h$c;

    iget-object v5, p0, Lcom/google/protobuf/w0$h;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v4, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    add-int v6, v1, v0

    aget-object v7, v4, v6

    move-object v4, v11

    move v6, v1

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/w0$h$c;-><init>(Lcom/google/protobuf/Descriptors$b;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/w0$h;->e:Z

    iput-object v3, p0, Lcom/google/protobuf/w0$h;->c:[Ljava/lang/String;

    monitor-exit p0

    return-object p0

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$h;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/w0$h;->b:[Lcom/google/protobuf/w0$h$a;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->u()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type does not have extensions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$h$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$h;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/w0$h;->d:[Lcom/google/protobuf/w0$h$c;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->r()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
