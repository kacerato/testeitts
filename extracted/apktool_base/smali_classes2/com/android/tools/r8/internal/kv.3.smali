.class public final Lcom/android/tools/r8/internal/kv;
.super Lcom/android/tools/r8/internal/zt;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/de;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/xt;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/kv;->g:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/kv;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    return-object p2

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/kv;

    .line 9
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/de;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/kv;

    .line 4
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/de;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/kv;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/kv;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-super {p1}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/de;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExactDynamicType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
