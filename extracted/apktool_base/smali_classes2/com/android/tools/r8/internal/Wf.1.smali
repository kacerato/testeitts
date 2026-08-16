.class public Lcom/android/tools/r8/internal/Wf;
.super Lcom/android/tools/r8/internal/Xf;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final c:Lcom/android/tools/r8/internal/NB;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/NB;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Xf;-><init>(Lcom/android/tools/r8/internal/Vf;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/tools/r8/internal/A7;

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    return-object p1

    :cond_1
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    iget-wide v2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v2

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/NB;->a(I)Z

    move-result p2

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Wf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Wf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    instance-of v1, v0, Lcom/android/tools/r8/internal/Qf;

    if-nez v1, :cond_2

    :cond_1
    return v2

    :cond_2
    check-cast v0, Lcom/android/tools/r8/internal/Qf;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    instance-of v1, v1, Lcom/android/tools/r8/internal/aX;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    instance-of v0, v0, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Vf;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/NB;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
