.class public Lcom/android/tools/r8/internal/s4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Lcom/android/tools/r8/internal/nJ;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 3
    const-string v0, "com.android.tools.r8.artprofilerewritingcompletenesscheck"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/s4;->b:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/s4;->d:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/s4;->e:Z

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/s4;->f:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/s4;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/s4;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 8
    iget-object p1, p2, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 9
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/s4;->b:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/s4;->b:Z

    .line 10
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/s4;->c:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/s4;->c:Z

    .line 11
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/s4;->d:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/s4;->d:Z

    .line 12
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/s4;->e:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/s4;->e:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;)Ljava/lang/String;
    .locals 5

    .line 10
    sget v0, Lcom/android/tools/r8/internal/pA;->a:I

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/F;

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    goto :goto_0

    .line 19
    :cond_1
    check-cast v0, Lcom/android/tools/r8/internal/gW;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gW;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Z)Lcom/android/tools/r8/internal/s4;
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/s4;->e:Z

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/s4;->h:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/s4;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/s4;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/s4;->f:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_3

    .line 5
    instance-of v0, v0, Lcom/android/tools/r8/internal/ob0;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/s4;->d:Z

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/X0;

    invoke-direct {v1}, Lcom/android/tools/r8/X0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/android/tools/r8/internal/s4;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/s4;->b:Z

    return-object p0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/s4;->f:Lcom/android/tools/r8/internal/nJ;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 4
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/s4;->f:Lcom/android/tools/r8/internal/nJ;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/po0;->d:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/s4;->f:Lcom/android/tools/r8/internal/nJ;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->v()Lcom/android/tools/r8/internal/HE;

    move-result-object v0

    .line 10
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/HE;->b:Z

    if-nez v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/HE;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
