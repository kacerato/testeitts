.class public abstract Lcom/android/tools/r8/internal/O5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jy;


# static fields
.field public static final synthetic b:Z = true


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


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/CD;

    return v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/O5;->b:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/e40;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/qt0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public E()Lcom/android/tools/r8/internal/bv0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/m10;

    return v0
.end method

.method public G()Lcom/android/tools/r8/internal/m10;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public H()Lcom/android/tools/r8/internal/ka;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/O5;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unexpected use of getObjectType() for non-object FrameType"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a()Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O5;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public asPrimitive()Lcom/android/tools/r8/internal/z70;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/DD;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/qt0;

    return v0
.end method

.method public d()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/m10;

    return v0
.end method

.method public e()Lcom/android/tools/r8/internal/Gx0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/e40;

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lcom/android/tools/r8/internal/ED;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/gv0;

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/m10;

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Lcom/android/tools/r8/graph/M2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/S60;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/O5;->b:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/e40;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/qt0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/internal/Jm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/DD;

    return v0
.end method

.method public n()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/qt0;

    return v0
.end method

.method public o()Lcom/android/tools/r8/internal/BD;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/android/tools/r8/internal/CD;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Lcom/android/tools/r8/internal/gv0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Lcom/android/tools/r8/internal/Fx0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/O5;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O5;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public w()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/m10;

    return v0
.end method

.method public x()Lcom/android/tools/r8/internal/Gm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ev0;

    return v0
.end method

.method public z()Lcom/android/tools/r8/internal/ev0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
