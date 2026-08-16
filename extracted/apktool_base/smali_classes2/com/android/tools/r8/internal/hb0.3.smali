.class public Lcom/android/tools/r8/internal/hb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/hb0$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/android/tools/r8/internal/hb0;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/kb0;

.field public final c:Lcom/android/tools/r8/internal/kb0;

.field public d:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/internal/nJ;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/internal/nJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/hb0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/hb0;-><init>(ZLcom/android/tools/r8/internal/kb0;Lcom/android/tools/r8/internal/kb0;)V

    sput-object v0, Lcom/android/tools/r8/internal/hb0;->f:Lcom/android/tools/r8/internal/hb0;

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/internal/kb0;Lcom/android/tools/r8/internal/kb0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/hb0;->d:Ljava/util/function/Consumer;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/hb0;->e:Ljava/util/function/Consumer;

    sget-boolean v0, Lcom/android/tools/r8/internal/hb0;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p2, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/hb0;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/hb0;->b:Lcom/android/tools/r8/internal/kb0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hb0;->c:Lcom/android/tools/r8/internal/kb0;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/hb0$a;
    .locals 1

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/hb0$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hb0$a;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0;
    .locals 6

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/hb0;->b()Lcom/android/tools/r8/internal/hb0;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/hb0;->a()Lcom/android/tools/r8/internal/hb0$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ","

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4
    new-instance v4, Lcom/android/tools/r8/internal/Qb;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    .line 5
    new-instance v3, Lcom/android/tools/r8/internal/En0;

    new-instance v5, Lcom/android/tools/r8/internal/zn0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/zn0;-><init>(Lcom/android/tools/r8/internal/Qb;)V

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;)V

    .line 6
    invoke-interface {v5, v3, p0}, Lcom/android/tools/r8/internal/Dn0;->a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_1
    move-object v4, p0

    check-cast v4, Lcom/android/tools/r8/internal/Cn0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Cn0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/Rc1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Rc1;-><init>(Lcom/android/tools/r8/internal/hb0$a;)V

    invoke-interface {p0, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/Qb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    .line 14
    new-instance p0, Lcom/android/tools/r8/internal/En0;

    new-instance v2, Lcom/android/tools/r8/internal/zn0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/zn0;-><init>(Lcom/android/tools/r8/internal/Qb;)V

    invoke-direct {p0, v2}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;)V

    .line 15
    invoke-interface {v2, p0, p1}, Lcom/android/tools/r8/internal/Dn0;->a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :goto_2
    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/Cn0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Cn0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/tools/r8/internal/Sc1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Sc1;-><init>(Lcom/android/tools/r8/internal/hb0$a;)V

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 21
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hb0$a;->a()Lcom/android/tools/r8/internal/hb0;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/android/tools/r8/internal/hb0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/hb0;->f:Lcom/android/tools/r8/internal/hb0;

    return-object v0
.end method
