.class public Lcom/android/tools/r8/AssertionsConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/AssertionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final a:Lcom/android/tools/r8/internal/Ef0;

.field private b:I

.field private c:Lcom/android/tools/r8/references/MethodReference;

.field private d:Lcom/android/tools/r8/AssertionsConfiguration$a;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/D0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    return-void
.end method

.method public static compileTimeDisableAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeDisable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopeAll()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static compileTimeEnableAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeEnable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopeAll()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static enableAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->compileTimeEnableAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static passthroughAllAssertions(Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setPassthrough()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopeAll()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->c:Lcom/android/tools/r8/references/MethodReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "No transformation or assertion handler specified for building AssertionConfiguration"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "No scope specified for building AssertionConfiguration"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    sget-object v1, Lcom/android/tools/r8/AssertionsConfiguration$a;->c:Lcom/android/tools/r8/AssertionsConfiguration$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "No package name specified for building AssertionConfiguration"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    sget-object v1, Lcom/android/tools/r8/AssertionsConfiguration$a;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->a:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "No class name specified for building AssertionConfiguration"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/android/tools/r8/AssertionsConfiguration;

    iget v1, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->b:I

    iget-object v2, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->c:Lcom/android/tools/r8/references/MethodReference;

    iget-object v3, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iget-object v4, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/AssertionsConfiguration;-><init>(ILcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/AssertionsConfiguration$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAssertionHandler(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->c:Lcom/android/tools/r8/references/MethodReference;

    return-object p0
.end method

.method public setCompileTimeDisable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->c:Lcom/android/tools/r8/references/MethodReference;

    return-object p0
.end method

.method public setCompileTimeEnable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->c:Lcom/android/tools/r8/references/MethodReference;

    return-object p0
.end method

.method public setPassthrough()Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->c:Lcom/android/tools/r8/references/MethodReference;

    return-object p0
.end method

.method public setScopeAll()Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/AssertionsConfiguration$a;->b:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setScopeClass(Ljava/lang/String;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/AssertionsConfiguration$a;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iput-object p1, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setScopePackage(Ljava/lang/String;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/AssertionsConfiguration$a;->c:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iput-object v0, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->d:Lcom/android/tools/r8/AssertionsConfiguration$a;

    iput-object p1, p0, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method
