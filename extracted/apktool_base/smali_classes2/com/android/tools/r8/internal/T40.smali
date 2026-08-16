.class public final Lcom/android/tools/r8/internal/T40;
.super Lcom/android/tools/r8/internal/Z40;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Y40;

.field public final d:Lcom/android/tools/r8/internal/T10;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Y40;Lcom/android/tools/r8/internal/T10;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Z40;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/W40;I)I
    .locals 6

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    iget-object v4, p2, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, -0x1

    if-ne p3, v4, :cond_0

    .line 5
    iget-object p3, p2, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    .line 7
    invoke-static {v4}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v4

    invoke-virtual {p1, p3, v4}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 8
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move p3, v5

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {v3}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object v3

    .line 10
    iget-object p2, p2, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 12
    invoke-virtual {p1, p2, v1, v3}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/if0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v3, p2, v2, v0}, Lcom/android/tools/r8/internal/if0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid binary operation type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/Ws;

    iget-object v3, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v3, p2, v2, v0}, Lcom/android/tools/r8/internal/Ws;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 18
    new-instance v3, Lcom/android/tools/r8/internal/gY;

    invoke-direct {v3, v1, p2, v2, v0}, Lcom/android/tools/r8/internal/gY;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->x2()V

    move-object v1, v3

    goto :goto_1

    .line 20
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/Qq0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v3, p2, v2, v0}, Lcom/android/tools/r8/internal/Qq0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v1, p2, v2, v0}, Lcom/android/tools/r8/internal/d2;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/d2;

    move-result-object v1

    .line 22
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return p3
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, ""

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Y40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/Z40;

    instance-of v0, p1, Lcom/android/tools/r8/internal/T40;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Z40;->c()Lcom/android/tools/r8/internal/Y40;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/T40;

    iget-object v0, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    iget-object v1, p1, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    iget-object p1, p1, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/T40;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/T40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    iget-object v3, p1, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    iget-object p1, p1, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/T40;->c:Lcom/android/tools/r8/internal/Y40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T40;->d:Lcom/android/tools/r8/internal/T10;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
