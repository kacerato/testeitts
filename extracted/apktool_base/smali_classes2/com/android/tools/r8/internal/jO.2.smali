.class public final Lcom/android/tools/r8/internal/jO;
.super Lcom/android/tools/r8/internal/pj;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/E50;

.field public b:Lcom/android/tools/r8/internal/GO;

.field public final c:Lcom/android/tools/r8/internal/Ad;

.field public final d:Lcom/android/tools/r8/internal/lO;

.field public final e:Lcom/android/tools/r8/internal/TN;

.field public final f:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jO;->b:Lcom/android/tools/r8/internal/GO;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/E50;

    const-string v1, "member"

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jO;->a:Lcom/android/tools/r8/internal/E50;

    new-instance v0, Lcom/android/tools/r8/internal/Ad;

    new-instance v1, Lcom/android/tools/r8/internal/E50;

    const-string v2, "member-annotated-by"

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jO;->c:Lcom/android/tools/r8/internal/Ad;

    sget-object v1, Lcom/android/tools/r8/internal/zd;->c:Lcom/android/tools/r8/internal/zd;

    const-string v2, "memberAnnotatedByClassName"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->d:Lcom/android/tools/r8/internal/zd;

    const-string v2, "memberAnnotatedByClassConstant"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    const-string v2, "memberAnnotatedByClassNamePattern"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/tools/r8/internal/lO;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/lO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/jO;->d:Lcom/android/tools/r8/internal/lO;

    new-instance v2, Lcom/android/tools/r8/internal/TN;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/TN;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/jO;->e:Lcom/android/tools/r8/internal/TN;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/jO;->f:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 2
    const-string v0, "memberAccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/IO;->e:Lcom/android/tools/r8/internal/IO;

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/GO;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/GO;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/jO;->b:Lcom/android/tools/r8/internal/GO;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/iO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jO;->a:Lcom/android/tools/r8/internal/E50;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/iO;-><init>(Lcom/android/tools/r8/internal/I50;Lcom/android/tools/r8/internal/HO;)V

    return-object v0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jO;->b:Lcom/android/tools/r8/internal/GO;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/tools/r8/internal/pj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jO;->f:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method
