.class public final Lcom/android/tools/r8/internal/pO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/OM;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/QM;->b:Lcom/android/tools/r8/internal/QM;

    new-instance v0, Lcom/android/tools/r8/internal/OM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/OM;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/pO;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/FO;
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MM;->a()Lcom/android/tools/r8/internal/UM;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/FO;

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/pO;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MM;->b()Lcom/android/tools/r8/internal/JO;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/FO;

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/pO;->c:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/PM;
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/pO;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Ap1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Ap1;-><init>(Lcom/android/tools/r8/internal/OM;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/PM;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/B50;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/pO;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 3
    iget-object p3, p0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 4
    iget-object p2, p2, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 5
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/FO;

    move-result-object p2

    .line 6
    iget-object p3, p0, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/PM;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid binding reference to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' in binding definition of \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p3, p3, p1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object p1

    .line 9
    throw p1
.end method
