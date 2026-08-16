.class public final Lcom/android/tools/r8/internal/Fe0;
.super Lcom/android/tools/r8/internal/De0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/z30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/z30;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/De0;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fe0;->b:Lcom/android/tools/r8/internal/z30;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fe0;->b:Lcom/android/tools/r8/internal/z30;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/z30;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/lL;Lcom/android/tools/r8/internal/Ce0;)V
    .locals 1

    .line 2
    iget-object v0, p3, Lcom/android/tools/r8/internal/Ce0;->h:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/Ce0;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/Ce0;->l:Z

    if-nez v0, :cond_2

    .line 5
    iget-object p3, p3, Lcom/android/tools/r8/internal/Ce0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p3, Lcom/android/tools/r8/internal/Ce0;->b:Ljava/lang/reflect/Field;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/ye0;->a(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/eL;

    .line 8
    const-string p3, "Cannot set value of \'static final\' "

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/String;)V

    throw p2
.end method
