.class public Lcom/android/tools/r8/AssertionsConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/AssertionsConfiguration$Builder;,
        Lcom/android/tools/r8/AssertionsConfiguration$a;
    }
.end annotation


# static fields
.field static final synthetic e:Z = true


# instance fields
.field private final a:I

.field private final b:Lcom/android/tools/r8/references/MethodReference;

.field private final c:Lcom/android/tools/r8/AssertionsConfiguration$a;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/AssertionsConfiguration$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/AssertionsConfiguration;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/AssertionsConfiguration;->b:Lcom/android/tools/r8/references/MethodReference;

    iput-object p3, p0, Lcom/android/tools/r8/AssertionsConfiguration;->c:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iput-object p4, p0, Lcom/android/tools/r8/AssertionsConfiguration;->d:Ljava/lang/String;

    sget-boolean p3, Lcom/android/tools/r8/AssertionsConfiguration;->e:Z

    if-nez p3, :cond_4

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-eqz p2, :cond_1

    move p3, p4

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_4

    :cond_2
    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/D0;)V

    return-object v0
.end method


# virtual methods
.method public getAssertionHandler()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->b:Lcom/android/tools/r8/references/MethodReference;

    return-object v0
.end method

.method public getScope()Lcom/android/tools/r8/AssertionsConfiguration$a;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->c:Lcom/android/tools/r8/AssertionsConfiguration$a;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isAssertionHandler()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->b:Lcom/android/tools/r8/references/MethodReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompileTimeDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompileTimeEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPassthrough()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/AssertionsConfiguration;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
