.class public final Lcom/android/tools/r8/internal/RM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/QM;

.field public final b:Ljava/util/HashSet;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QM;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/RM;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/RM;->c:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/RM;->a:Lcom/android/tools/r8/internal/QM;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/QM;
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/RM;->a:Lcom/android/tools/r8/internal/QM;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/RM;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/RM;->a:Lcom/android/tools/r8/internal/QM;

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/OM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/OM;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/RM;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/PM;

    .line 27
    iget-object v3, p0, Lcom/android/tools/r8/internal/RM;->a:Lcom/android/tools/r8/internal/QM;

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 29
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/NM;

    .line 30
    iget-object v3, v3, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 31
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/tools/r8/internal/RM;->a:Lcom/android/tools/r8/internal/QM;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/MM;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/RM;->a:Lcom/android/tools/r8/internal/QM;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/NM;

    const-string v2, "\'"

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/android/tools/r8/internal/RM;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v4, p0, Lcom/android/tools/r8/internal/RM;->b:Ljava/util/HashSet;

    .line 9
    iget-object v5, v3, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 10
    iget-object v5, v5, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 13
    iget-object p1, v3, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 14
    invoke-interface {p3, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/RM;->c:Z

    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MM;->b()Lcom/android/tools/r8/internal/JO;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p2

    .line 18
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid member-reference the class-type binding \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p2

    .line 19
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unbound reference to \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1
.end method
