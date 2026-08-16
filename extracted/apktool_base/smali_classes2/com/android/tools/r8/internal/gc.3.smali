.class public final Lcom/android/tools/r8/internal/gc;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gc;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/fc;->b:Lcom/android/tools/r8/internal/fc;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/fc;->c:Lcom/android/tools/r8/internal/fc;

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckAbstractClasses"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gc;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method
