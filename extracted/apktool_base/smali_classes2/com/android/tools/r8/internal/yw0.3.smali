.class public final Lcom/android/tools/r8/internal/yw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/yw0;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/EC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/yw0;

    sget v1, Lcom/android/tools/r8/internal/EC;->e:I

    sget-object v1, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    sput-object v0, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/EC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/yw0;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/yw0;)Lcom/android/tools/r8/internal/yw0;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/yw0;->a:I

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/yw0;->d:Z

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_0
    iget v2, p1, Lcom/android/tools/r8/internal/yw0;->a:I

    add-int/2addr v2, v0

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x7

    if-eqz v0, :cond_5

    .line 10
    iget p1, p0, Lcom/android/tools/r8/internal/yw0;->a:I

    if-ne v2, p1, :cond_3

    return-object p0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 12
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1

    .line 14
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {v0, v2, p1}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object v0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v1, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_7
    :goto_1
    iget v0, p1, Lcom/android/tools/r8/internal/yw0;->a:I

    if-ne v2, v0, :cond_8

    return-object p1

    .line 19
    :cond_8
    iget-object p1, p1, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 20
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1

    .line 22
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {v0, v2, p1}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object v0

    .line 23
    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/BC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/BC;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/BC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/BC;

    move-result-object v0

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/BC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/BC;

    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/internal/BC;->a:Lcom/android/tools/r8/internal/nS;

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V0;->w()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_2

    :cond_c
    const/16 v0, 0xb

    .line 30
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/nS;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/nS;-><init>(I)V

    .line 31
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move-object p1, v1

    .line 32
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    sget-object p1, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    goto :goto_4

    .line 35
    :cond_d
    invoke-static {p1}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object p1

    .line 36
    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v3, :cond_e

    .line 37
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1

    .line 38
    :cond_e
    new-instance v0, Lcom/android/tools/r8/internal/yw0;

    invoke-direct {v0, v2, p1}, Lcom/android/tools/r8/internal/yw0;-><init>(ILcom/android/tools/r8/internal/EC;)V

    return-object v0

    .line 39
    :cond_f
    :goto_5
    sget-object p1, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/yw0;->c:Lcom/android/tools/r8/internal/yw0;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueBoxingStatus["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yw0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NOT_UNBOXABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/yw0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yw0;->b:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EC;->i()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/AC;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/AC;-><init>(Lcom/android/tools/r8/internal/Av0;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/AC;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/AC;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ts0;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
