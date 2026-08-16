.class public final Lcom/android/tools/r8/internal/SN;
.super Lcom/android/tools/r8/internal/iO;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/tO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/tO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/iO;-><init>(Lcom/android/tools/r8/internal/I50;Lcom/android/tools/r8/internal/HO;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/SN;->d:Lcom/android/tools/r8/internal/tO;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Landroidx/annotation/keep/FieldAccessFlags;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/FieldAccessFlags;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/eW0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/eW0;-><init>(Lcom/android/tools/r8/internal/SN;)V

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/util/function/BiPredicate;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Landroidx/annotation/keep/MemberAccessFlags;"

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "VOLATILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "TRANSIENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/SN;->d:Lcom/android/tools/r8/internal/tO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_0
    iput-object p2, p1, Lcom/android/tools/r8/internal/tO;->h:Lcom/android/tools/r8/internal/LX;

    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/SN;->d:Lcom/android/tools/r8/internal/tO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_1
    iput-object p2, p1, Lcom/android/tools/r8/internal/tO;->g:Lcom/android/tools/r8/internal/LX;

    return v1
.end method
