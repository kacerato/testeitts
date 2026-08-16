.class public abstract Lcom/android/tools/r8/internal/Iw0;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lcom/android/tools/r8/internal/p7;->b:Lcom/android/tools/r8/internal/p7;

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object p0, Lcom/android/tools/r8/internal/r7;->b:Lcom/android/tools/r8/internal/r7;

    return-object p0

    .line 9
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Iw0;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/x7;->b:Lcom/android/tools/r8/internal/x7;

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/Iw0;
    .locals 7

    const/4 v3, 0x0

    .line 3
    sget-object v6, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/internal/ig;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Iw0;)Z
    .locals 0

    .line 2
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/android/tools/r8/internal/lg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/yg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/Q00;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/ug;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f()Lcom/android/tools/r8/internal/wg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/internal/xg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/internal/iw0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/zv0;

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract o()Lcom/android/tools/r8/internal/Iw0;
.end method
