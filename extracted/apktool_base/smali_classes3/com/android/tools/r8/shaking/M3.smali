.class public Lcom/android/tools/r8/shaking/M3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/M3$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(ZZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/M3;->a:Z

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/M3;->b:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/shaking/M3;->c:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/shaking/M3;->d:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/shaking/M3;->e:Z

    iput-boolean p6, p0, Lcom/android/tools/r8/shaking/M3;->f:Z

    iput-boolean p7, p0, Lcom/android/tools/r8/shaking/M3;->g:Z

    iput-boolean p8, p0, Lcom/android/tools/r8/shaking/M3;->h:Z

    iput-boolean p9, p0, Lcom/android/tools/r8/shaking/M3;->i:Z

    return-void
.end method

.method public static a()Lcom/android/tools/r8/shaking/M3$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/M3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/M3$a;-><init>(Lcom/android/tools/r8/shaking/X6;)V

    return-object v0
.end method

.method public static a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2c

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/M3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/shaking/M3;

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->a:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->a:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->b:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->b:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->c:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->c:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->d:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->d:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->e:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->f:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->f:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->g:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->g:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->h:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/M3;->h:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->i:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/M3;->i:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 10

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/M3;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->a:Z

    const-string v2, "allowaccessmodification"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->b:Z

    const-string v2, "allowannotationremoval"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->c:Z

    const-string v2, "allowcodereplacement"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->d:Z

    const-string v2, "allowrepackaging"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->g:Z

    const-string v2, "allowobfuscation"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->e:Z

    const-string v2, "allowshrinking"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->f:Z

    const-string v2, "allowoptimization"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->h:Z

    const-string v2, "includedescriptorclasses"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/M3;->i:Z

    const-string v2, "allowpermittedsubclassesremoval"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/shaking/M3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
