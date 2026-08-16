.class public final Lcom/android/tools/r8/internal/Tz;
.super Lcom/android/tools/r8/internal/G0;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/Vz;

.field public final synthetic c:Lcom/android/tools/r8/internal/Uz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Uz;Lcom/android/tools/r8/internal/Vz;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tz;->c:Lcom/android/tools/r8/internal/Uz;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/G0;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    iget v2, v2, Lcom/android/tools/r8/internal/Vz;->e:I

    if-ne v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Tz;->c:Lcom/android/tools/r8/internal/Uz;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Uz;->g:Lcom/android/tools/r8/internal/eA;

    sget v3, Lcom/android/tools/r8/internal/eA;->j:I

    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/internal/eA;->b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value already present: %s"

    invoke-static {v2, v3, p1}, Lcom/android/tools/r8/internal/U60;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tz;->c:Lcom/android/tools/r8/internal/Uz;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Uz;->g:Lcom/android/tools/r8/internal/eA;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    new-instance v2, Lcom/android/tools/r8/internal/Vz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    iget-object v4, v3, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    iget v5, v3, Lcom/android/tools/r8/internal/Vz;->d:I

    invoke-direct {v2, v4, v5, p1, v1}, Lcom/android/tools/r8/internal/Vz;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Tz;->c:Lcom/android/tools/r8/internal/Uz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Uz;->g:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;Lcom/android/tools/r8/internal/Vz;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    iput-object v1, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tz;->c:Lcom/android/tools/r8/internal/Uz;

    iget-object v3, v1, Lcom/android/tools/r8/internal/Uz;->g:Lcom/android/tools/r8/internal/eA;

    iget v3, v3, Lcom/android/tools/r8/internal/eA;->h:I

    iput v3, v1, Lcom/android/tools/r8/internal/bA;->d:I

    iget-object v3, v1, Lcom/android/tools/r8/internal/bA;->c:Lcom/android/tools/r8/internal/Vz;

    if-ne v3, p1, :cond_2

    iput-object v2, v1, Lcom/android/tools/r8/internal/bA;->c:Lcom/android/tools/r8/internal/Vz;

    :cond_2
    iput-object v2, p0, Lcom/android/tools/r8/internal/Tz;->b:Lcom/android/tools/r8/internal/Vz;

    return-object v0
.end method
