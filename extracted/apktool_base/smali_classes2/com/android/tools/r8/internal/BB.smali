.class public final Lcom/android/tools/r8/internal/BB;
.super Lcom/android/tools/r8/internal/Hz;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/BB;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/BB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/BB;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/BB;->b:Lcom/android/tools/r8/internal/BB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Hz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/BB;->c:Z

    if-nez p2, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Hz;->j()Z

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
    sget-object v5, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/NW;

    const/4 v2, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p5

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 6
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/BB;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/android/tools/r8/internal/Gz;->a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Fz;)Lcom/android/tools/r8/internal/iw;
    .locals 1

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/iw;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v0, v0}, Lcom/android/tools/r8/internal/iw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 8
    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/Fz;->a(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    return-object p2
.end method

.method public final f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 0

    sget-object p1, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    return-object p1
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
