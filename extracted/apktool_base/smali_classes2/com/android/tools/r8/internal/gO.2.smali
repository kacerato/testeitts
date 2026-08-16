.class public final Lcom/android/tools/r8/internal/gO;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/H50;

.field public final d:Lcom/android/tools/r8/internal/mO;

.field public final e:Lcom/android/tools/r8/internal/hP;

.field public final f:Lcom/android/tools/r8/internal/pO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance v0, Lcom/android/tools/r8/internal/hP;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hP;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/gO;->e:Lcom/android/tools/r8/internal/hP;

    iput-object p1, p0, Lcom/android/tools/r8/internal/gO;->c:Lcom/android/tools/r8/internal/H50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gO;->d:Lcom/android/tools/r8/internal/mO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/gO;->f:Lcom/android/tools/r8/internal/pO;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/gO;->g:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    const-string v0, "Landroidx/annotation/keep/KeepCondition;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepCondition;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/ZN;

    iget-object v0, p0, Lcom/android/tools/r8/internal/gO;->c:Lcom/android/tools/r8/internal/H50;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/gO;->e:Lcom/android/tools/r8/internal/hP;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/Qb1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Qb1;-><init>(Lcom/android/tools/r8/internal/hP;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/gO;->f:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v1, v0, p2}, Lcom/android/tools/r8/internal/ZN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/gO;->d:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gO;->e:Lcom/android/tools/r8/internal/hP;

    .line 9
    iget-object v2, v1, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    sget-object v1, Lcom/android/tools/r8/internal/gP;->a:Lcom/android/tools/r8/internal/gP;

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/iP;

    iget-object v1, v1, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/iP;-><init>(Ljava/util/ArrayList;)V

    move-object v1, v2

    .line 13
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void
.end method
