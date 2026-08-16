.class public final Lcom/android/tools/r8/internal/lO;
.super Lcom/android/tools/r8/internal/pj;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/B50;

.field public b:Lcom/android/tools/r8/internal/PO;

.field public c:Lcom/android/tools/r8/internal/VO;

.field public final d:Lcom/android/tools/r8/internal/Ad;

.field public final e:Lcom/android/tools/r8/internal/kq0;

.field public final f:Lcom/android/tools/r8/internal/uX;

.field public final g:Lcom/android/tools/r8/internal/cX;

.field public final h:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lO;->b:Lcom/android/tools/r8/internal/PO;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lO;->a:Lcom/android/tools/r8/internal/B50;

    new-instance v0, Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/E50;

    const-string v2, "method-annotated-by"

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lO;->d:Lcom/android/tools/r8/internal/Ad;

    sget-object v1, Lcom/android/tools/r8/internal/zd;->c:Lcom/android/tools/r8/internal/zd;

    const-string v2, "methodAnnotatedByClassName"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->d:Lcom/android/tools/r8/internal/zd;

    const-string v2, "methodAnnotatedByClassConstant"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    const-string v2, "methodAnnotatedByClassNamePattern"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/tools/r8/internal/kq0;

    new-instance v2, Lcom/android/tools/r8/internal/E50;

    const-string v3, "method-name"

    invoke-direct {v2, p1, v3}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kq0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/lO;->e:Lcom/android/tools/r8/internal/kq0;

    sget-object v2, Lcom/android/tools/r8/internal/jq0;->b:Lcom/android/tools/r8/internal/jq0;

    const-string v3, "methodName"

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/tools/r8/internal/jq0;->c:Lcom/android/tools/r8/internal/jq0;

    const-string v3, "methodNamePattern"

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/tools/r8/internal/uX;

    new-instance v3, Lcom/android/tools/r8/internal/E50;

    const-string v4, "return-type"

    invoke-direct {v3, p1, v4}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/uX;-><init>(Lcom/android/tools/r8/internal/E50;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/lO;->f:Lcom/android/tools/r8/internal/uX;

    sget-object v3, Lcom/android/tools/r8/internal/ru0;->c:Lcom/android/tools/r8/internal/ru0;

    const-string v4, "methodReturnType"

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/android/tools/r8/internal/ru0;->d:Lcom/android/tools/r8/internal/ru0;

    const-string v5, "methodReturnTypeConstant"

    invoke-virtual {v2, v5, v4}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/android/tools/r8/internal/ru0;->b:Lcom/android/tools/r8/internal/ru0;

    const-string v5, "methodReturnTypePattern"

    invoke-virtual {v2, v5, v4}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Lcom/android/tools/r8/internal/cX;

    new-instance v6, Lcom/android/tools/r8/internal/E50;

    const-string v7, "parameters"

    invoke-direct {v6, p1, v7}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/cX;-><init>(Lcom/android/tools/r8/internal/E50;)V

    iput-object v5, p0, Lcom/android/tools/r8/internal/lO;->g:Lcom/android/tools/r8/internal/cX;

    const-string p1, "methodParameters"

    iget-object v6, v5, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {v6, p1, v3}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "methodParameterTypePatterns"

    iget-object v3, v5, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    invoke-virtual {v3, p1, v4}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2, v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lO;->h:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 2
    const-string v0, "methodAccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/PO;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/PO;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/lO;->b:Lcom/android/tools/r8/internal/PO;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/kO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lO;->a:Lcom/android/tools/r8/internal/B50;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/kO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/PO;)V

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/lO;->b:Lcom/android/tools/r8/internal/PO;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lO;->c:Lcom/android/tools/r8/internal/VO;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/lO;->h:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method
