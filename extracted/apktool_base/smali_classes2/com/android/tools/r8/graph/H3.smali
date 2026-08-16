.class public Lcom/android/tools/r8/graph/H3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/H3$g;,
        Lcom/android/tools/r8/graph/H3$h;,
        Lcom/android/tools/r8/graph/H3$j;,
        Lcom/android/tools/r8/graph/H3$a;,
        Lcom/android/tools/r8/graph/H3$c;,
        Lcom/android/tools/r8/graph/H3$e;,
        Lcom/android/tools/r8/graph/H3$k;,
        Lcom/android/tools/r8/graph/H3$i;,
        Lcom/android/tools/r8/graph/H3$b;,
        Lcom/android/tools/r8/graph/H3$f;,
        Lcom/android/tools/r8/graph/H3$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Xe0;

.field public static final b:Lcom/android/tools/r8/internal/Xe0;

.field public static final c:Lcom/android/tools/r8/internal/Xe0;

.field public static final d:Lcom/android/tools/r8/internal/Xe0;

.field public static final e:Lcom/android/tools/r8/graph/H3$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/graph/H3;->a:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/graph/H3;->c:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/graph/H3;->d:Lcom/android/tools/r8/internal/Xe0;

    new-instance v1, Lcom/android/tools/r8/graph/H3$c;

    sget-object v2, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    sget-object v3, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    sput-object v1, Lcom/android/tools/r8/graph/H3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$b;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/K3;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/K3;-><init>(Lcom/android/tools/r8/graph/u1;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/K3;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    const-string v0, "class"

    invoke-static {p1, v0, p0, p2, p3}, Lcom/android/tools/r8/graph/T3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/lang/reflect/GenericSignatureFormatError;)Lcom/android/tools/r8/graph/T3;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/K3;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/K3;-><init>(Lcom/android/tools/r8/graph/u1;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/K3;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    const-string v0, "field"

    invoke-static {p1, v0, p0, p2, p3}, Lcom/android/tools/r8/graph/T3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/lang/reflect/GenericSignatureFormatError;)Lcom/android/tools/r8/graph/T3;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    sget-object p0, Lcom/android/tools/r8/graph/H3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/tools/r8/graph/H3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$g;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/K3;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/K3;-><init>(Lcom/android/tools/r8/graph/u1;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/K3;->c(Ljava/lang/String;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    const-string v0, "method"

    invoke-static {p1, v0, p0, p2, p3}, Lcom/android/tools/r8/graph/T3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/lang/reflect/GenericSignatureFormatError;)Lcom/android/tools/r8/graph/T3;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    sget-object p0, Lcom/android/tools/r8/graph/H3$g;->e:Lcom/android/tools/r8/graph/H3$g;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/tools/r8/graph/H3$g;->e:Lcom/android/tools/r8/graph/H3$g;

    return-object p0
.end method
