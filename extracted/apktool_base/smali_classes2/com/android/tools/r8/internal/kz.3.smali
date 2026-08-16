.class public final Lcom/android/tools/r8/internal/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Cl;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Lcom/android/tools/r8/internal/Ol;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cl;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kz;->a:Lcom/android/tools/r8/internal/Cl;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Sl;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Sl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length p2, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    aget-object p2, p1, v2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/Ol;->g:Z

    if-eqz p2, :cond_0

    iput-object v1, p0, Lcom/android/tools/r8/internal/kz;->b:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/android/tools/r8/internal/kz;->c:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ol;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    goto :goto_0

    :cond_0
    const-string p1, "get"

    const-string p2, "Case"

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v3}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/internal/kz;->b:Ljava/lang/reflect/Method;

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/kz;->c:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    :goto_0
    const-string p1, "clear"

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/kz;->d:Ljava/lang/reflect/Method;

    return-void
.end method
