.class public abstract Lcom/android/tools/r8/internal/F1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vf;


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G()Lcom/android/tools/r8/internal/Bh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public H()Lcom/android/tools/r8/internal/Jj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Lcom/android/tools/r8/internal/n10;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public J()Lcom/android/tools/r8/internal/lm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public K()Lcom/android/tools/r8/internal/Am0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public L()Lcom/android/tools/r8/internal/Bm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Lcom/android/tools/r8/internal/Dm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N()Lcom/android/tools/r8/internal/Fm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public O()Lcom/android/tools/r8/internal/Hm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public P()Lcom/android/tools/r8/internal/Om0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Q()Lcom/android/tools/r8/internal/Co0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public S()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public T()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abstract value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a known array length."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public U()Lcom/android/tools/r8/internal/Q30;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abstract value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have any object state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Jj;

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Mm0;

    return v0
.end method

.method public Y()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Im0;

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
.end method

.method public abstract b0()Z
.end method

.method public c0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getKind()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/android/tools/r8/internal/F00;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/internal/x10;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/internal/Im0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public u()Lcom/android/tools/r8/internal/y10;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lcom/android/tools/r8/internal/Pm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y()Lcom/android/tools/r8/internal/Q5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
