.class public final Lcom/android/tools/r8/internal/lv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/mv0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/mv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mv0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/mv0;)Lcom/android/tools/r8/internal/lv0;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    if-nez v1, :cond_2

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 22
    iget-object v1, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    if-nez v1, :cond_4

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 31
    iget-object v1, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    if-nez v1, :cond_6

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 34
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 40
    iget-object v1, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    if-nez v1, :cond_8

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 43
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 44
    iget-object v0, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/mv0;
    .locals 3

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/mv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mv0;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 48
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 49
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 50
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 52
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 53
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 56
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 57
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 58
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    goto :goto_1

    .line 59
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 60
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 61
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 62
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 64
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    if-nez v1, :cond_2

    .line 65
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 66
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    goto :goto_2

    .line 67
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 68
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 69
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 70
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 71
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 72
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    if-nez v1, :cond_3

    .line 73
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 74
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    goto :goto_3

    .line 75
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 76
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 77
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 80
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 81
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    if-nez v1, :cond_4

    .line 82
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 83
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    return-object v0

    .line 84
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 85
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 86
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 87
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    return-object v0
.end method

.method public final clone()Lcom/android/tools/r8/internal/lv0;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/mv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mv0;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 8
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 12
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 15
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 18
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    if-nez v1, :cond_2

    .line 19
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    goto :goto_2

    .line 20
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 21
    iget-object v3, v3, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 22
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 24
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 25
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    if-nez v1, :cond_3

    .line 26
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    goto :goto_3

    .line 27
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 29
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 31
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    if-nez v1, :cond_4

    .line 33
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    goto :goto_4

    .line 34
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 35
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 36
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    iput-object v1, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 38
    :goto_4
    new-instance v1, Lcom/android/tools/r8/internal/lv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lv0;-><init>()V

    .line 39
    iput-object v0, v1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    return-object v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lv0;->clone()Lcom/android/tools/r8/internal/lv0;

    move-result-object v0

    return-object v0
.end method
