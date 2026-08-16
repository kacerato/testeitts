.class public abstract Lcom/android/tools/r8/internal/EW;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/EW$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


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

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/internal/EW$a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/FW;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/FW;->d:Lcom/android/tools/r8/internal/FW;

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 13
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_1

    .line 14
    sget-object p0, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    return-object p0

    .line 15
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/EW;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_4

    .line 17
    instance-of v1, v0, Lcom/android/tools/r8/internal/ob0;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qb0;->a()Lcom/android/tools/r8/internal/ob0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/ob0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/internal/FW;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/EW;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/EW$a;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/FW;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/EW$a;-><init>(Lcom/android/tools/r8/internal/FW;)V

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/EW$a;
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/EW;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/EW$a;

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/FW;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/EW$a;-><init>(Lcom/android/tools/r8/internal/FW;)V

    return-object v0
.end method

.method public static c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/internal/EW$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/EW;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    .line 4
    iget v0, v0, Lcom/android/tools/r8/internal/nJ$p;->j1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 8
    instance-of p0, p0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p0, :cond_3

    .line 9
    sget-object p0, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    .line 10
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/EW$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/EW$a;-><init>(Lcom/android/tools/r8/internal/FW;)V

    return-object v0
.end method

.method public static d()Lcom/android/tools/r8/internal/EW$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/GW;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GW;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)Lcom/android/tools/r8/internal/lB;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EW;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p2, Lcom/android/tools/r8/internal/uB;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EW;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/sB;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/sB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)V

    return-object v0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/EW;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EW;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/tB;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/tB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)V

    return-object v0
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract e()Z
.end method
