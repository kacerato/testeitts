.class public final Lcom/android/tools/r8/internal/F4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/F4;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xt;

.field public final b:Lcom/android/tools/r8/internal/F1;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/F4;

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    sget v2, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/F4;-><init>(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)V

    sput-object v0, Lcom/android/tools/r8/internal/F4;->d:Lcom/android/tools/r8/internal/F4;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    iput-object p2, p0, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/F4;->c:Z

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/E4;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/E4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/E4;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-object p0

    .line 12
    :cond_2
    sget p0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)Lcom/android/tools/r8/internal/F4;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    sget-object p0, Lcom/android/tools/r8/internal/F4;->d:Lcom/android/tools/r8/internal/F4;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/F4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/F4;-><init>(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/F1;Z)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-object p0

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/F4;->d:Lcom/android/tools/r8/internal/F4;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/F4;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/F4;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/F4;

    iget-object v2, p0, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    iget-object v3, p1, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    iget-object v3, p1, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/F4;->c:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/F4;->c:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/F4;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
