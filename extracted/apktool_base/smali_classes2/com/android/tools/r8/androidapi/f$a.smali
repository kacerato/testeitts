.class public Lcom/android/tools/r8/androidapi/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/androidapi/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/androidapi/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/android/tools/r8/androidapi/f$a;

.field public static final d:Lcom/android/tools/r8/androidapi/f$a;

.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/C2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/androidapi/f$a;

    sget-object v1, Lcom/android/tools/r8/internal/C2;->M:Lcom/android/tools/r8/internal/C2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/androidapi/f$a;-><init>(Lcom/android/tools/r8/internal/C2;)V

    sput-object v0, Lcom/android/tools/r8/androidapi/f$a;->c:Lcom/android/tools/r8/androidapi/f$a;

    new-instance v0, Lcom/android/tools/r8/androidapi/f$a;

    sget-object v1, Lcom/android/tools/r8/internal/C2;->N:Lcom/android/tools/r8/internal/C2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/androidapi/f$a;-><init>(Lcom/android/tools/r8/internal/C2;)V

    sput-object v0, Lcom/android/tools/r8/androidapi/f$a;->d:Lcom/android/tools/r8/androidapi/f$a;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/C2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    return-void
.end method


# virtual methods
.method public final F()Lcom/android/tools/r8/androidapi/f$a;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/C2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/androidapi/f$a;->e:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot compute relationship for not set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/androidapi/f$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/androidapi/f$a;

    iget-object v1, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    iget-object p1, p1, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/androidapi/f$a;->b:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
