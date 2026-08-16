.class public final Lcom/android/tools/r8/shaking/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/shaking/f1;

.field public static final d:Lcom/android/tools/r8/shaking/f1;

.field public static final e:Lcom/android/tools/r8/shaking/f1;

.field public static final f:Lcom/android/tools/r8/shaking/f1;

.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final b:Lcom/android/tools/r8/shaking/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/shaking/f1;

    sget-object v1, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/f1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    sput-object v0, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    new-instance v0, Lcom/android/tools/r8/shaking/f1;

    sget-object v1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/f1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    sput-object v0, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    new-instance v0, Lcom/android/tools/r8/shaking/f1;

    sget-object v1, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/f1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    sput-object v0, Lcom/android/tools/r8/shaking/f1;->e:Lcom/android/tools/r8/shaking/f1;

    new-instance v0, Lcom/android/tools/r8/shaking/f1;

    sget-object v1, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/shaking/f1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    sput-object v0, Lcom/android/tools/r8/shaking/f1;->f:Lcom/android/tools/r8/shaking/f1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/f1;)Lcom/android/tools/r8/shaking/f1;
    .locals 4

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/shaking/f1;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p1

    goto :goto_1

    .line 11
    :cond_5
    sget-object v2, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    :goto_1
    if-nez v1, :cond_b

    .line 12
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    if-ne v2, p1, :cond_6

    .line 13
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    return-object p1

    .line 14
    :cond_6
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    if-ne v2, p1, :cond_7

    .line 15
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->e:Lcom/android/tools/r8/shaking/f1;

    return-object p1

    .line 16
    :cond_7
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    if-ne v2, p1, :cond_8

    .line 17
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->f:Lcom/android/tools/r8/shaking/f1;

    return-object p1

    :cond_8
    if-nez v0, :cond_a

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_a
    :goto_2
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    return-object p1

    .line 20
    :cond_b
    new-instance p1, Lcom/android/tools/r8/shaking/f1;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/shaking/f1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeepAnnotationInfo{type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", retention="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
