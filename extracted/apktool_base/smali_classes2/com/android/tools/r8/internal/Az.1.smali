.class public final Lcom/android/tools/r8/internal/Az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Cs0;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/shaking/N;

.field public final c:Lcom/android/tools/r8/androidapi/a;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Az;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Az;->b:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Az;->c:Lcom/android/tools/r8/androidapi/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Az;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Az;->c:Lcom/android/tools/r8/androidapi/a;

    .line 7
    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    .line 11
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Az;->b:Lcom/android/tools/r8/shaking/N;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 14
    new-instance p2, Lcom/android/tools/r8/internal/Dz0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Dz0;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/L0;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Az;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Az;->c:Lcom/android/tools/r8/androidapi/a;

    .line 20
    sget p4, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p4, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p2, p1, p4}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 22
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    .line 24
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 25
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Az;->b:Lcom/android/tools/r8/shaking/N;

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/Dz0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Dz0;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method
