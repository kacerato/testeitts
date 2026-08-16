.class public final Lcom/android/tools/r8/internal/OT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OT;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OT;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Su;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    sget-boolean p3, Lcom/android/tools/r8/internal/OT;->c:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->h:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/synthesis/W;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/synthesis/m;->l:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/OT;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/LP0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/LP0;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/OT;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/OT;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/MP0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/MP0;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/OT;->c:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/android/tools/r8/graph/Q;

    const/16 v3, 0x1011

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/Q;-><init>(I)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
