.class public final Lcom/android/tools/r8/internal/na0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/pa0;

.field public c:Ljava/util/OptionalInt;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/pa0;Ljava/util/OptionalInt;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/na0;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    iput-object p4, p0, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;
    .locals 5

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 7
    iget v3, p2, Lcom/android/tools/r8/internal/ua0;->b:I

    .line 8
    sget-boolean v4, Lcom/android/tools/r8/internal/Ra0;->a:Z

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 9
    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/pa0;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x20

    if-nez v0, :cond_5

    .line 12
    iget-object v3, p2, Lcom/android/tools/r8/internal/ua0;->d:Ljava/util/LinkedList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    :cond_3
    if-ge v2, v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_5
    :goto_2
    iget-object p2, p2, Lcom/android/tools/r8/internal/ua0;->d:Ljava/util/LinkedList;

    .line 15
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Ba0;

    if-nez v0, :cond_7

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v0, p2, Lcom/android/tools/r8/internal/HT;

    if-eqz v0, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ba0;->a()Lcom/android/tools/r8/internal/HT;

    move-result-object p2

    .line 21
    iget-object p2, p2, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    .line 3
    instance-of v1, v1, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Fa0;

    .line 7
    iget-object p2, p2, Lcom/android/tools/r8/internal/Fa0;->b:Lcom/android/tools/r8/internal/oa0;

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v0, p2, Lcom/android/tools/r8/internal/HT;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ba0;->a()Lcom/android/tools/r8/internal/HT;

    move-result-object p2

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ua0;)Lcom/android/tools/r8/graph/F5;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    instance-of v0, v0, Lcom/android/tools/r8/internal/Ea0;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/na0;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Fa0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Fa0;->a:Lcom/android/tools/r8/internal/oa0;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Ba0;

    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/na0;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/tools/r8/internal/HT;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ba0;->a()Lcom/android/tools/r8/internal/HT;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/HT;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProtoFieldInfo(number="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/r8/internal/na0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/na0;->b:Lcom/android/tools/r8/internal/pa0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aux data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/na0;->c:Ljava/util/OptionalInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", objects=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
