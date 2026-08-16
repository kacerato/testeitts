.class public interface abstract Lcom/android/tools/r8/internal/jy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/iy;->a:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v0, 0x0

    .line 5
    aget-byte p0, p0, v0

    int-to-char p0, p0

    .line 6
    invoke-static {p0}, Lcom/android/tools/r8/internal/jy;->a(C)Lcom/android/tools/r8/internal/z70;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/tools/r8/internal/m10;->c:Lcom/android/tools/r8/internal/m10;

    return-object p0

    :cond_5
    invoke-static {p0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/AD;
    .locals 2

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected MemberType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/gt;->c:Lcom/android/tools/r8/internal/gt;

    return-object p0

    .line 22
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/iU;->c:Lcom/android/tools/r8/internal/iU;

    return-object p0

    .line 23
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Cx;->c:Lcom/android/tools/r8/internal/Cx;

    return-object p0

    .line 24
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    return-object p0

    .line 25
    :pswitch_4
    iget-object p0, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(C)Lcom/android/tools/r8/internal/z70;
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_4

    const/16 v0, 0x53

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/gt;->c:Lcom/android/tools/r8/internal/gt;

    return-object p0

    .line 11
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Nb;->c:Lcom/android/tools/r8/internal/Nb;

    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Y7;->c:Lcom/android/tools/r8/internal/Y7;

    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/iU;->c:Lcom/android/tools/r8/internal/iU;

    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    return-object p0

    .line 15
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/Z6;->c:Lcom/android/tools/r8/internal/Z6;

    return-object p0

    .line 16
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/Pl0;->c:Lcom/android/tools/r8/internal/Pl0;

    return-object p0

    .line 17
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/Cx;->c:Lcom/android/tools/r8/internal/Cx;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/DD;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/DD;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public abstract B()Z
.end method

.method public abstract C()Z
.end method

.method public abstract D()Z
.end method

.method public abstract E()Lcom/android/tools/r8/internal/bv0;
.end method

.method public abstract F()Z
.end method

.method public abstract G()Lcom/android/tools/r8/internal/m10;
.end method

.method public abstract H()Lcom/android/tools/r8/internal/ka;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/jy;
    .locals 0

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/internal/iy;->a:Z

    if-nez p1, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jy;->D()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
.end method

.method public abstract a()Z
.end method

.method public abstract asPrimitive()Lcom/android/tools/r8/internal/z70;
.end method

.method public abstract b()Lcom/android/tools/r8/internal/DD;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lcom/android/tools/r8/internal/Gx0;
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Lcom/android/tools/r8/internal/ED;
.end method

.method public abstract i()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract j()Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract k()Lcom/android/tools/r8/internal/S60;
.end method

.method public abstract l()Lcom/android/tools/r8/internal/Jm0;
.end method

.method public abstract m()Z
.end method

.method public abstract n()Z
.end method

.method public abstract o()Lcom/android/tools/r8/internal/BD;
.end method

.method public abstract p()Lcom/android/tools/r8/internal/CD;
.end method

.method public abstract q()Z
.end method

.method public abstract r()Z
.end method

.method public abstract s()Lcom/android/tools/r8/internal/gv0;
.end method

.method public abstract t()Z
.end method

.method public abstract u()Lcom/android/tools/r8/internal/Fx0;
.end method

.method public abstract v()I
.end method

.method public abstract w()Z
.end method

.method public abstract x()Lcom/android/tools/r8/internal/Gm0;
.end method

.method public abstract y()Z
.end method

.method public abstract z()Lcom/android/tools/r8/internal/ev0;
.end method
