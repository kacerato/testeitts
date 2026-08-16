.class public final Lcom/android/tools/r8/internal/Rf;
.super Lcom/android/tools/r8/internal/Sf;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final d:Lcom/android/tools/r8/internal/Vf;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/Sf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, v0, Lcom/android/tools/r8/internal/A7;

    if-eqz v1, :cond_0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->h0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->u:Lcom/android/tools/r8/internal/H1;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v2, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/H1;->b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Sf;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Rf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Rf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    const-class v3, Lcom/android/tools/r8/internal/Rf;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rf;->d:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Vf;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Vf;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/Vf;->p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
