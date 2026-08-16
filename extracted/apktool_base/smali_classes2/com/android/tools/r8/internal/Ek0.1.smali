.class public final Lcom/android/tools/r8/internal/Ek0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ek0;->a:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/dL;)Lcom/android/tools/r8/internal/Ek0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x28

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 3
    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    .line 5
    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "throws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ek0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Ek0;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid formatted condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Ek0;
    .locals 3

    .line 11
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Ek0;

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ek0;-><init>(Lcom/android/tools/r8/references/ClassReference;)V

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected throws-descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/jL;
    .locals 4

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/jL;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ek0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v1}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throws("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
