.class public final Lcom/android/tools/r8/internal/au0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/au0;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/tools/r8/internal/au0;->c:Lcom/android/tools/r8/internal/vt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 0

    iget-object p1, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/tools/r8/internal/au0;->b:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Zt0;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/Zt0;-><init>(Lcom/android/tools/r8/internal/au0;Ljava/lang/Class;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/au0;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/au0;->c:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
