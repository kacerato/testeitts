.class public Lcom/android/tools/r8/internal/Va;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Lcom/android/tools/r8/internal/qd0;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/StringBuilder;

.field public final f:Lcom/android/tools/r8/internal/vk0;

.field public g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/Va;->g:I

    .line 4
    const-string v1, ""

    iput-object v1, p0, Lcom/android/tools/r8/internal/Va;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    .line 7
    iput v0, p0, Lcom/android/tools/r8/internal/Va;->h:I

    .line 8
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Va;->b:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/Va;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/Va;->g:I

    .line 13
    iput-object p3, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    .line 14
    const-string p3, "  "

    iput-object p3, p0, Lcom/android/tools/r8/internal/Va;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    iput p3, p0, Lcom/android/tools/r8/internal/Va;->h:I

    .line 16
    new-instance p3, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Va;->b:Ljava/util/List;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 19
    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-eqz v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    check-cast v1, Lcom/android/tools/r8/internal/ka;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Va;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 21
    iget-object v2, p0, Lcom/android/tools/r8/internal/Va;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 22
    iget-object p3, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, ".method "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    .line 26
    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, ".limit stack "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p1, Lcom/android/tools/r8/graph/G;->g:I

    .line 28
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    .line 30
    iget-object p3, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, ".limit locals "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/G;)Ljava/util/ArrayList;

    move-result-object p3

    .line 32
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Va;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Va;->d:Ljava/util/List;

    .line 33
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_3
    :goto_1
    const-string v3, " to "

    const-string v4, " from "

    if-ge v2, v1, :cond_4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/G$a;

    .line 34
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->c()Lcom/android/tools/r8/graph/j0;

    move-result-object v6

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    .line 36
    iget-object v7, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 37
    const-string v8, ".var "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    .line 42
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->d()Lcom/android/tools/r8/internal/ka;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G$a;->a()Lcom/android/tools/r8/internal/ka;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v3, v6, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Db;

    move v2, v0

    .line 51
    :goto_2
    iget-object v5, v1, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    .line 53
    iget-object v5, v1, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 54
    sget-boolean v6, Lcom/android/tools/r8/internal/Va;->i:Z

    if-nez v6, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 55
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 56
    const-string v7, ".catch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    .line 59
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    .line 61
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v5, " using "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    .line 63
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W9;

    .line 65
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/Va;)V

    goto :goto_4

    .line 66
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    if-eqz p2, :cond_a

    .line 67
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string p2, ".end method"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    :cond_a
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Kw0;)C
    .locals 3

    .line 287
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/16 p0, 0x61

    return p0

    .line 288
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x64

    return p0

    :cond_2
    const/16 p0, 0x6c

    return p0

    :cond_3
    const/16 p0, 0x66

    return p0

    :cond_4
    const/16 p0, 0x69

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;)C
    .locals 3

    .line 289
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected member type for prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x64

    return p0

    :pswitch_1
    const/16 p0, 0x6c

    return p0

    :pswitch_2
    const/16 p0, 0x66

    return p0

    :pswitch_3
    const/16 p0, 0x69

    return p0

    :pswitch_4
    const/16 p0, 0x73

    return p0

    :pswitch_5
    const/16 p0, 0x63

    return p0

    :pswitch_6
    const/16 p0, 0x62

    return p0

    :pswitch_7
    const/16 p0, 0x61

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/G$a;Lcom/android/tools/r8/graph/G$a;)I
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "L?"

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/G;)Ljava/util/ArrayList;
    .locals 1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->F0()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    new-instance p1, Lcom/android/tools/r8/internal/qZ0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/qZ0;-><init>(Lcom/android/tools/r8/internal/Va;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/Va;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ka;

    .line 25
    iget-object v4, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v3

    .line 26
    new-instance v4, Lcom/android/tools/r8/internal/sZ0;

    invoke-direct {v4, p0, v3}, Lcom/android/tools/r8/internal/sZ0;-><init>(Lcom/android/tools/r8/internal/Va;I)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 27
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/G$a;

    .line 29
    iget-object v5, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G$a;->d()Lcom/android/tools/r8/internal/ka;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v5

    .line 30
    iget-object v6, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G$a;->a()Lcom/android/tools/r8/internal/ka;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v6

    if-gt v5, v3, :cond_1

    if-ge v3, v6, :cond_0

    .line 31
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 33
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    new-instance v4, Lcom/android/tools/r8/internal/tZ0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/tZ0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    .line 303
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->b()V

    .line 304
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final synthetic a(IILcom/android/tools/r8/internal/jy;)V
    .locals 1

    if-ne p2, p1, :cond_0

    .line 169
    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, ", "

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/jy;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 305
    sget-boolean v0, Lcom/android/tools/r8/internal/Va;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 306
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_2

    .line 307
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/A9;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 114
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "ldc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/A9;->V()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Ba;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ba;->B()I

    move-result p1

    .line 110
    sget-object v0, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Bb;)V
    .locals 8

    .line 261
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 262
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Bb;->Y()Lcom/android/tools/r8/internal/Bb$a;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    if-ne v0, v2, :cond_0

    const-string v2, "lookup"

    goto :goto_0

    :cond_0
    const-string v2, "table"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Bb;->X()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/TH;

    .line 265
    iget-object v2, p1, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move v4, v3

    .line 266
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 268
    sget-object v5, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    if-ne v0, v5, :cond_1

    invoke-interface {v1, v4}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result v5

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 269
    :goto_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 270
    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 275
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "  default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object p1, p1, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/E9;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 116
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "ldc* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object p1, p1, Lcom/android/tools/r8/internal/E9;->c:Lcom/android/tools/r8/graph/J2;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/F9;)V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 193
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected field-instruction opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "putfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "getfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "putstatic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "getstatic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/vk0;->c(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 203
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/android/tools/r8/internal/G9;)V
    .locals 4

    .line 153
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 154
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "; frame: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 156
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    .line 158
    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->a()I

    move-result v0

    .line 159
    new-instance v1, Lcom/android/tools/r8/internal/pZ0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/pZ0;-><init>(Lcom/android/tools/r8/internal/Va;I)V

    .line 160
    iget-object v0, p1, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/M30;->iterator()Lcom/android/tools/r8/internal/v30;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 161
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jy;

    invoke-interface {v1, v3, v2}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object p1, p1, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 164
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/S60;

    .line 165
    iget-object v2, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/jy;)V

    .line 167
    const-string v0, ", "

    goto :goto_1

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/M9;)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 235
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "goto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object p1, p1, Lcom/android/tools/r8/internal/M9;->c:Lcom/android/tools/r8/internal/ka;

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Ma;)V
    .locals 2

    .line 228
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ma;->V()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 229
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 230
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, ".line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/O9;)V
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 239
    iget-object v0, p1, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 240
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    const-string v1, "if"

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    .line 243
    sget-object v2, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-ne v1, v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "nonnull"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    iget-object p1, p1, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Q9;)V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 252
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 253
    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 254
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "if_acmp"

    goto :goto_0

    :cond_0
    const-string v1, "if_icmp"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    iget-object p1, p1, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/R9;)V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 280
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "iinc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p1, Lcom/android/tools/r8/internal/R9;->c:I

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    iget p1, p1, Lcom/android/tools/r8/internal/R9;->d:I

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/V8;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V8;->B()I

    move-result p1

    .line 98
    sget-object v0, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/V9;)V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 187
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "instanceof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Wa;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Wa;->c:[Lcom/android/tools/r8/graph/l1;

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    const-string p1, "empty"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_field_values("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/X8;)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 121
    iget-object p1, p1, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 122
    invoke-static {p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/YV;)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "aload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/Z8;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 124
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 125
    iget-object p1, p1, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 126
    invoke-static {p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/YV;)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "astore"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/ab;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ab;->W()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Kw0;)C

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/ga;)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v1

    .line 129
    sget-object v2, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/ha;)V
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object p1

    .line 135
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 136
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/16 v2, 0xba

    .line 137
    sget-object v3, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 144
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/C2;

    .line 147
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v2, ", handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v2, ", itf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, ", bsm:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vk0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/i9;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 190
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "checkcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/i9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/jy;)V
    .locals 2

    .line 172
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 175
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->p()Lcom/android/tools/r8/internal/CD;

    move-result-object p1

    .line 177
    iget-object p1, p1, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    .line 178
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 179
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Va;->i:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 180
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object p1

    .line 181
    iget-object p1, p1, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->b(Lcom/android/tools/r8/graph/M2;)V

    return-void

    .line 183
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "uninitialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jy;->H()Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/kb;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kb;->V()Lcom/android/tools/r8/internal/kb$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Invalid instruction for CfStackInstruction"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 43
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "swap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 45
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "dup2_x2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 46
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "dup2_x1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 48
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 49
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "dup2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 50
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 51
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "dup_x2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 52
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "dup_x1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 54
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 55
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "dup"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 56
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 57
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "pop2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 58
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 59
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "pop"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/android/tools/r8/internal/pa;)V
    .locals 2

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/pa;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 18
    iget p1, p1, Lcom/android/tools/r8/internal/pa;->c:I

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Kw0;)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "load"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/q9;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q9;->B()I

    move-result p1

    .line 102
    sget-object v0, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/ra;)V
    .locals 1

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/ra;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I

    move-result p1

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/sa;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sa;->V()Lcom/android/tools/r8/internal/XX;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    if-ne p1, v0, :cond_0

    const-string p1, "monitorenter"

    goto :goto_0

    :cond_0
    const-string p1, "monitorexit"

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/t9;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "ldc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->b(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/ta;)V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 222
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "multianewarray "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, p1, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 225
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    iget p1, p1, Lcom/android/tools/r8/internal/ta;->d:I

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/u9;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "ldc <dynamic> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p1, p1, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 89
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->b(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/v9;)V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 292
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "ldc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 294
    iget-object p1, p1, Lcom/android/tools/r8/internal/v9;->c:Lcom/android/tools/r8/graph/C2;

    .line 295
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/va;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/va;->B()I

    move-result p1

    .line 106
    sget-object v0, Lcom/android/tools/r8/internal/E70;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/w9;)V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 297
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "ldc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 299
    iget-object p1, p1, Lcom/android/tools/r8/internal/w9;->c:Lcom/android/tools/r8/graph/I2;

    .line 300
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/wa;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 205
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/xa;)V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 208
    iget-object v0, p1, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 209
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object p1, p1, Lcom/android/tools/r8/internal/xa;->c:Lcom/android/tools/r8/graph/M2;

    .line 211
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "newarray "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "anewarray "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 216
    iget-object p1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    .line 219
    iget-object v0, p1, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v2, p1, Lcom/android/tools/r8/internal/tt0;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/yb;)V
    .locals 2

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/internal/yb;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 14
    iget p1, p1, Lcom/android/tools/r8/internal/yb;->c:I

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Kw0;)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "store"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/z9;)V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 61
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->b:[I

    .line 62
    iget-object v1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "ldc "

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const-string v2, "ldc_w "

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-boolean v1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 66
    :cond_1
    :goto_0
    iget-wide v1, p1, Lcom/android/tools/r8/internal/z9;->c:J

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void

    .line 68
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    .line 69
    iget-object p1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected const-number type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-boolean v1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 73
    :cond_5
    :goto_1
    iget-wide v1, p1, Lcom/android/tools/r8/internal/z9;->c:J

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-boolean v1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_8
    :goto_2
    iget-wide v1, p1, Lcom/android/tools/r8/internal/z9;->c:J

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-void

    .line 79
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-boolean v1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_b
    :goto_3
    iget-wide v1, p1, Lcom/android/tools/r8/internal/z9;->c:J

    long-to-int p1, v1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final synthetic a(ILcom/android/tools/r8/graph/G$a;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G$a;->a()Lcom/android/tools/r8/internal/ka;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p2

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/G$a;Lcom/android/tools/r8/graph/G$a;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G$a;->d()Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G$a;->d()Lcom/android/tools/r8/internal/ka;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G$a;->a()Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G$a;->a()Lcom/android/tools/r8/internal/ka;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G$a;->b()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 4

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/Va;->h:I

    if-lez v0, :cond_0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "d: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/r8/internal/Va;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/Va;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Va;->f:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/ka;)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->c()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->b()V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ka;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->c:Lcom/android/tools/r8/internal/qd0;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/rZ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rZ0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 13
    const-string v0, ", "

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locals: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "nop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "athrow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "aconst_null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Va;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v1, "arraylength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
