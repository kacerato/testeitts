.class public Lcom/android/tools/r8/internal/eV;
.super Lcom/android/tools/r8/internal/dV;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/naming/b;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dV;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/eV;->a:Lcom/android/tools/r8/naming/b;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/internal/dV;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/eV;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/eV;-><init>(Lcom/android/tools/r8/naming/b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/naming/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/eV;->a:Lcom/android/tools/r8/naming/b;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/b;->b(Ljava/lang/String;)Lcom/android/tools/r8/naming/k;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eV;->a:Lcom/android/tools/r8/naming/b;

    iget-object v0, v0, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
