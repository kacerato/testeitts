.class public final Lcom/android/tools/r8/internal/e;
.super Lcom/android/tools/r8/internal/mr0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Z

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:[Lcom/android/tools/r8/graph/A2;

.field public final g:I

.field public final h:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    .line 3
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/e;->d:Z

    .line 4
    iput-object p5, p0, Lcom/android/tools/r8/internal/e;->e:Lcom/android/tools/r8/graph/A2;

    .line 5
    iput-object p6, p0, Lcom/android/tools/r8/internal/e;->f:[Lcom/android/tools/r8/graph/A2;

    if-eqz p4, :cond_0

    const/16 p1, 0xb9

    goto :goto_0

    :cond_0
    const/16 p1, 0xb6

    .line 6
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/e;->g:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    .line 9
    iput-object p3, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    .line 10
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/e;->d:Z

    .line 11
    iput-object p5, p0, Lcom/android/tools/r8/internal/e;->e:Lcom/android/tools/r8/graph/A2;

    .line 12
    iput-object p6, p0, Lcom/android/tools/r8/internal/e;->f:[Lcom/android/tools/r8/graph/A2;

    .line 13
    iput p7, p0, Lcom/android/tools/r8/internal/e;->g:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    .line 16
    iput-object p3, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    .line 17
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/e;->d:Z

    .line 18
    iput-object p5, p0, Lcom/android/tools/r8/internal/e;->e:Lcom/android/tools/r8/graph/A2;

    .line 19
    iput-object p6, p0, Lcom/android/tools/r8/internal/e;->f:[Lcom/android/tools/r8/graph/A2;

    if-eqz p4, :cond_0

    const/16 p1, 0xb9

    goto :goto_0

    :cond_0
    const/16 p1, 0xb6

    .line 20
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/e;->g:I

    .line 21
    iput-object p7, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_0

    if-nez p3, :cond_2

    new-instance p3, Lcom/android/tools/r8/internal/pa;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p3, v0, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/android/tools/r8/internal/T9;

    iget-object v0, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Unsupported conversion with two parameters on static method"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    :cond_2
    :goto_0
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    const/16 v0, 0xb8

    invoke-direct {p3, v0, p1, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported conversion with invalid number of parameters ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/tools/r8/internal/e;->g:I

    const/16 v2, 0xb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v5, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/T9;

    iget-object v5, p0, Lcom/android/tools/r8/internal/e;->h:Lcom/android/tools/r8/graph/l1;

    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    :goto_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v6, v5, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/tools/r8/internal/e;->f:[Lcom/android/tools/r8/graph/A2;

    aget-object v6, v6, v3

    if-eqz v6, :cond_2

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/tools/r8/internal/e;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V

    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget v3, p0, Lcom/android/tools/r8/internal/e;->g:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/e;->d:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/e;->e:Lcom/android/tools/r8/graph/A2;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/e;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/e;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
