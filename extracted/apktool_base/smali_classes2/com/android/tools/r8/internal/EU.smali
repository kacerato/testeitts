.class public Lcom/android/tools/r8/internal/EU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/C2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EU;->a:Lcom/android/tools/r8/internal/C2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EU;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/EU;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/EU;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/EU;->e:Z

    iput-object p6, p0, Lcom/android/tools/r8/internal/EU;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/EU;
    .locals 8

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/EU;->g:Z

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/EU;->b:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EU;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/EU;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/EU;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EU;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/EU;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/tools/r8/internal/EU;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/EU;->e:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/EU;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/EU;->f:Ljava/util/List;

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EU;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/C2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EU;->a:Lcom/android/tools/r8/internal/C2;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EU;->b:Ljava/lang/String;

    return-object v0
.end method
