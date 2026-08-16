.class public final Lcom/android/tools/r8/internal/CM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/BN;

.field public final b:Lcom/android/tools/r8/internal/qd0;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lcom/android/tools/r8/internal/CH;

.field public final g:Lcom/android/tools/r8/internal/CH;

.field public final h:Ljava/util/ArrayList;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/BN;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->b:Lcom/android/tools/r8/internal/qd0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->f:Lcom/android/tools/r8/internal/CH;

    new-instance v0, Lcom/android/tools/r8/internal/CH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->g:Lcom/android/tools/r8/internal/CH;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CM;->h:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/CM;->i:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/CM;->a:Lcom/android/tools/r8/internal/BN;

    new-instance v0, Lcom/android/tools/r8/internal/yB0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yB0;-><init>(Lcom/android/tools/r8/internal/CM;)V

    new-instance v1, Lcom/android/tools/r8/internal/zB0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/zB0;-><init>(Lcom/android/tools/r8/internal/CM;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/BN;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/MM;)I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->b:Lcom/android/tools/r8/internal/qd0;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/vB0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/vB0;-><init>(Lcom/android/tools/r8/internal/CM;)V

    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/FO;
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->a:Lcom/android/tools/r8/internal/BN;

    new-instance v1, Lcom/android/tools/r8/internal/tB0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/tB0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/uB0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uB0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/BN;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/QM;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/QM;->a:Ljava/util/Map;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/NM;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/NM;->a:Lcom/android/tools/r8/internal/FO;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DN;)V
    .locals 2

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/DN;->c:Lcom/android/tools/r8/internal/jP;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/wB0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/wB0;-><init>(Lcom/android/tools/r8/internal/CM;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jP;->a(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/CM;->i:I

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/DN;->d:Lcom/android/tools/r8/internal/cN;

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/xB0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/xB0;-><init>(Lcom/android/tools/r8/internal/CM;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/TM;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/CM;->i:I

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->g:Lcom/android/tools/r8/internal/CH;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/TM;->d:Lcom/android/tools/r8/internal/MM;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CM;->a(Lcom/android/tools/r8/internal/MM;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ZM;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->f:Lcom/android/tools/r8/internal/CH;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/internal/ZM;->a:Lcom/android/tools/r8/internal/MM;

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CM;->a(Lcom/android/tools/r8/internal/MM;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xP;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/xP;->a:Lcom/android/tools/r8/internal/MM;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/CM;->g:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/CM;->a(Lcom/android/tools/r8/internal/MM;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->h:Ljava/util/ArrayList;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/xP;->b:Lcom/android/tools/r8/internal/zN;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/PM;)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CM;->a(Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/FO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/CM;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/CM;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/CH;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/android/tools/r8/internal/CM;->j:Z

    if-nez p1, :cond_4

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/CM;->a(Lcom/android/tools/r8/internal/MM;)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/CM;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/CM;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/CM;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/TH;

    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/TH;->add(I)Z

    sget-boolean p1, Lcom/android/tools/r8/internal/CM;->j:Z

    if-nez p1, :cond_3

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    neg-int v0, v1

    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
