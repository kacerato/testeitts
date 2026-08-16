.class public final Lcom/android/tools/r8/internal/ub;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/sb;

.field public b:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lb;Lcom/android/tools/r8/internal/lb;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/lb;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v0, v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/rb;->a()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 4
    iget-object v3, p1, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/rb;->a()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/If;

    iget-object p0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    aget-object p0, p0, v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    aget-object p1, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incompatible types in stack position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    iget-object p1, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 8
    invoke-direct {v1, p1, p0, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    throw v1

    :cond_1
    return-object p0

    .line 10
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/If;

    iget-object p0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length p0, p0

    iget-object p1, p1, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different stack heights at jump target: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " != "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    iget-object p1, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 13
    invoke-direct {v0, p1, p0, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ob;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sb;->c()Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/mb;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/mb;-><init>(Lcom/android/tools/r8/internal/sb;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/sb;)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ob;
    .locals 2

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 25
    new-instance p2, Lcom/android/tools/r8/internal/tb;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-direct {p2, v1, p1, v0}, Lcom/android/tools/r8/internal/tb;-><init>(Lcom/android/tools/r8/internal/sb;ILcom/android/tools/r8/internal/rb;)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/sb;)V

    .line 26
    iget-object p2, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;
    .locals 2

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/nb;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/nb;-><init>(Lcom/android/tools/r8/internal/sb;Lcom/android/tools/r8/internal/rb;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/sb;)V

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sb;->c()Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/sb;)V
    .locals 3

    .line 18
    iget v0, p1, Lcom/android/tools/r8/internal/sb;->b:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/lb;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sb;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/lb;-><init>(II)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    move-object p1, v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/lb;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sb;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/tools/r8/internal/lb;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
