.class public final Lcom/android/tools/r8/internal/QN;
.super Lcom/android/tools/r8/internal/pj;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/E50;

.field public final b:Ljava/util/function/Supplier;

.field public c:Lcom/android/tools/r8/internal/UM;

.field public final d:Lcom/android/tools/r8/internal/Ad;

.field public final e:Lcom/android/tools/r8/internal/Ad;

.field public final f:Lcom/android/tools/r8/internal/oE;

.field public final g:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Ljava/util/function/Supplier;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/QN;->c:Lcom/android/tools/r8/internal/UM;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/E50;

    const-string v1, "class"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QN;->a:Lcom/android/tools/r8/internal/E50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/QN;->b:Ljava/util/function/Supplier;

    new-instance p2, Lcom/android/tools/r8/internal/Ad;

    new-instance v0, Lcom/android/tools/r8/internal/E50;

    const-string v1, "class-name"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/QN;->d:Lcom/android/tools/r8/internal/Ad;

    sget-object v0, Lcom/android/tools/r8/internal/zd;->c:Lcom/android/tools/r8/internal/zd;

    const-string v1, "className"

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->d:Lcom/android/tools/r8/internal/zd;

    const-string v2, "classConstant"

    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    const-string v3, "classNamePattern"

    invoke-virtual {p2, v3, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/android/tools/r8/internal/Ad;

    new-instance v4, Lcom/android/tools/r8/internal/E50;

    const-string v5, "class-annotated-by"

    invoke-direct {v4, p1, v5}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/QN;->e:Lcom/android/tools/r8/internal/Ad;

    const-string v4, "classAnnotatedByClassName"

    invoke-virtual {v3, v4, v0}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "classAnnotatedByClassConstant"

    invoke-virtual {v3, v0, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "classAnnotatedByClassNamePattern"

    invoke-virtual {v3, v0, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/tools/r8/internal/oE;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/oE;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QN;->f:Lcom/android/tools/r8/internal/oE;

    sget-object p1, Lcom/android/tools/r8/internal/nE;->f:Lcom/android/tools/r8/internal/nE;

    const-string v1, "instanceOfPattern"

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/nE;->b:Lcom/android/tools/r8/internal/nE;

    const-string v1, "instanceOfClassName"

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/nE;->d:Lcom/android/tools/r8/internal/nE;

    const-string v1, "instanceOfClassConstant"

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/nE;->c:Lcom/android/tools/r8/internal/nE;

    const-string v1, "instanceOfClassNameExclusive"

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/nE;->e:Lcom/android/tools/r8/internal/nE;

    const-string v1, "instanceOfClassConstantExclusive"

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, v3, v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QN;->g:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->c:Lcom/android/tools/r8/internal/UM;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 3
    const-string v0, "classFromBinding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/QN;->b:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/pO;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/pO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/PM;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/UM;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/QN;->c:Lcom/android/tools/r8/internal/UM;

    if-nez p1, :cond_0

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/internal/QN;->c:Lcom/android/tools/r8/internal/UM;

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/QN;->a:Lcom/android/tools/r8/internal/E50;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance p2, Lcom/android/tools/r8/internal/FM;

    const-string v0, "Cannot reference multiple class bindings for a single class item"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->g:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/UM;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->c:Lcom/android/tools/r8/internal/UM;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->d:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->e:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->f:Lcom/android/tools/r8/internal/oE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->a:Lcom/android/tools/r8/internal/E50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/FM;

    const-string v2, "Cannot reference a class binding and class patterns for a single class item"

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->c:Lcom/android/tools/r8/internal/UM;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->d:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->e:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->f:Lcom/android/tools/r8/internal/oE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/QN;->h:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/QN;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    sget-object v3, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    new-instance v4, Lcom/android/tools/r8/internal/WM;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    :goto_2
    invoke-direct {v4, v0, v3}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    goto :goto_6

    :cond_7
    :goto_3
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    sget-object v1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QN;->d:Lcom/android/tools/r8/internal/Ad;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/mP;

    iget-object v3, p0, Lcom/android/tools/r8/internal/QN;->e:Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/y80;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mP;

    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v3

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/QN;->f:Lcom/android/tools/r8/internal/oE;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/DO;

    new-instance v4, Lcom/android/tools/r8/internal/WM;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v1

    check-cast v5, Lcom/android/tools/r8/internal/CO;

    iget-object v5, v5, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    :goto_5
    invoke-direct {v4, v0, v3}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    :goto_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/QN;->b:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/pO;

    iget-object v1, v0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/PM;

    const-string v2, "CLASS"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {v0, v1, v4}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    new-instance v0, Lcom/android/tools/r8/internal/UM;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    return-object v0
.end method
