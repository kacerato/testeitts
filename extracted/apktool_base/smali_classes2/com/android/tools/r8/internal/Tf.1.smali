.class public final Lcom/android/tools/r8/internal/Tf;
.super Lcom/android/tools/r8/internal/Sf;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Sf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Tf;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/tools/r8/internal/A7;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Lcom/android/tools/r8/internal/A7;

    if-eqz v1, :cond_2

    return-object p2

    :cond_2
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Tf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Tf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    const-class v2, Lcom/android/tools/r8/internal/Tf;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Vf;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Vf;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
