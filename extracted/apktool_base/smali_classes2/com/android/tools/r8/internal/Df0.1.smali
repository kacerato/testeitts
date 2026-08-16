.class public final Lcom/android/tools/r8/internal/Df0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/DiagnosticsLevel;

.field public final b:Lcom/android/tools/r8/DiagnosticsLevel;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/DiagnosticsLevel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Df0;->a:Lcom/android/tools/r8/DiagnosticsLevel;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Df0;->b:Lcom/android/tools/r8/DiagnosticsLevel;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Df0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Df0;->a:Lcom/android/tools/r8/DiagnosticsLevel;

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Df0;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Df0;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Df0;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/Df0;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/Df0;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Df0;->b:Lcom/android/tools/r8/DiagnosticsLevel;

    :cond_4
    :goto_2
    return-object p1

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Df0;->b:Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p1
.end method
