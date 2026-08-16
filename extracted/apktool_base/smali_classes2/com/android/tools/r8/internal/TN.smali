.class public final Lcom/android/tools/r8/internal/TN;
.super Lcom/android/tools/r8/internal/pj;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/B50;

.field public final b:Lcom/android/tools/r8/internal/Ad;

.field public final c:Lcom/android/tools/r8/internal/kq0;

.field public final d:Lcom/android/tools/r8/internal/Ow;

.field public e:Lcom/android/tools/r8/internal/tO;

.field public f:Lcom/android/tools/r8/internal/wO;

.field public final g:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/TN;->e:Lcom/android/tools/r8/internal/tO;

    iput-object v0, p0, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

    iput-object p1, p0, Lcom/android/tools/r8/internal/TN;->a:Lcom/android/tools/r8/internal/B50;

    new-instance v0, Lcom/android/tools/r8/internal/Ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/E50;

    const-string v2, "field-annotated-by"

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ad;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TN;->b:Lcom/android/tools/r8/internal/Ad;

    sget-object v1, Lcom/android/tools/r8/internal/zd;->c:Lcom/android/tools/r8/internal/zd;

    const-string v2, "fieldAnnotatedByClassName"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->d:Lcom/android/tools/r8/internal/zd;

    const-string v2, "fieldAnnotatedByClassConstant"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/tools/r8/internal/zd;->b:Lcom/android/tools/r8/internal/zd;

    const-string v2, "fieldAnnotatedByClassNamePattern"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/tools/r8/internal/kq0;

    new-instance v2, Lcom/android/tools/r8/internal/E50;

    const-string v3, "field-name"

    invoke-direct {v2, p1, v3}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kq0;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/TN;->c:Lcom/android/tools/r8/internal/kq0;

    sget-object v2, Lcom/android/tools/r8/internal/jq0;->b:Lcom/android/tools/r8/internal/jq0;

    const-string v3, "fieldName"

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/tools/r8/internal/jq0;->c:Lcom/android/tools/r8/internal/jq0;

    const-string v3, "fieldNamePattern"

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ow;

    new-instance v3, Lcom/android/tools/r8/internal/E50;

    const-string v4, "field-type"

    invoke-direct {v3, p1, v4}, Lcom/android/tools/r8/internal/E50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Ow;-><init>(Lcom/android/tools/r8/internal/E50;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/TN;->d:Lcom/android/tools/r8/internal/Ow;

    sget-object p1, Lcom/android/tools/r8/internal/ru0;->b:Lcom/android/tools/r8/internal/ru0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    const-string v4, "fieldTypePattern"

    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/ru0;->c:Lcom/android/tools/r8/internal/ru0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    const-string v4, "fieldType"

    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/tools/r8/internal/ru0;->d:Lcom/android/tools/r8/internal/ru0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/ii;->a:Lcom/android/tools/r8/internal/y80;

    const-string v4, "fieldTypeConstant"

    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/TN;->g:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 2
    const-string v0, "fieldAccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/uO;->h:Lcom/android/tools/r8/internal/uO;

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/tO;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/tO;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/TN;->e:Lcom/android/tools/r8/internal/tO;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/SN;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TN;->a:Lcom/android/tools/r8/internal/B50;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/SN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/tO;)V

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/TN;->e:Lcom/android/tools/r8/internal/tO;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TN;->f:Lcom/android/tools/r8/internal/wO;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/TN;->g:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method
