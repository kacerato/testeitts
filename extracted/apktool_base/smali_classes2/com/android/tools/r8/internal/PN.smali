.class public final Lcom/android/tools/r8/internal/PN;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/mO;

.field public final d:Lcom/android/tools/r8/internal/JO;

.field public final e:Lcom/android/tools/r8/internal/GN;

.field public final f:I

.field public final g:Lcom/android/tools/r8/internal/pO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    sget-object p1, Lcom/android/tools/r8/internal/MN;->d:Lcom/android/tools/r8/internal/MN;

    new-instance p1, Lcom/android/tools/r8/internal/GN;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PN;->e:Lcom/android/tools/r8/internal/GN;

    new-instance v0, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PN;->g:Lcom/android/tools/r8/internal/pO;

    iput-object p2, p0, Lcom/android/tools/r8/internal/PN;->c:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/LO;

    iget-object p4, v0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/android/tools/r8/internal/PM;

    const-string v1, "MEMBER"

    invoke-direct {p4, v1}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v0, p4, p2}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    new-instance p2, Lcom/android/tools/r8/internal/JO;

    invoke-direct {p2, p4}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/PN;->d:Lcom/android/tools/r8/internal/JO;

    iput p5, p0, Lcom/android/tools/r8/internal/PN;->f:I

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q2;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PN;->c:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PN;->e:Lcom/android/tools/r8/internal/GN;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/PN;->f:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/PN;->d:Lcom/android/tools/r8/internal/JO;

    iget-object v4, p0, Lcom/android/tools/r8/internal/PN;->g:Lcom/android/tools/r8/internal/pO;

    .line 4
    new-instance v5, Lcom/android/tools/r8/internal/SM;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/SM;-><init>()V

    .line 5
    iput-object v1, v5, Lcom/android/tools/r8/internal/SM;->a:Lcom/android/tools/r8/internal/MN;

    .line 6
    iput v2, v5, Lcom/android/tools/r8/internal/SM;->b:I

    .line 7
    iget-object v1, v4, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v1

    .line 9
    iput-object v1, v5, Lcom/android/tools/r8/internal/SM;->c:Lcom/android/tools/r8/internal/QM;

    .line 10
    iput-object v3, v5, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    .line 11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/SM;->a()Lcom/android/tools/r8/internal/TM;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 13
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/internal/PN;->e:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
