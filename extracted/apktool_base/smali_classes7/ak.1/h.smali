.class public Lak/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Ljava/lang/reflect/Constructor;

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lak/h;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lak/g;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lak/h;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lak/h;->b:Ljava/lang/reflect/Constructor;

    const-string v0, "getTLen"

    invoke-static {v0}, Lak/h;->g(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lak/h;->c:Ljava/lang/reflect/Method;

    const-string v0, "getIV"

    invoke-static {v0}, Lak/h;->g(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    sput-object v0, Lak/h;->d:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lak/h;->b:Ljava/lang/reflect/Constructor;

    sput-object v0, Lak/h;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lak/h;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lak/h;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static c(LXi/o0;Ljava/security/spec/AlgorithmParameterSpec;)LXi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lak/h$c;

    invoke-direct {v0, p0, p1}, Lak/h$c;-><init>(LXi/o0;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LXi/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Cannot process GCMParameterSpec."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()Ljava/lang/reflect/Constructor;
    .locals 1

    :try_start_0
    new-instance v0, Lak/h$a;

    invoke-direct {v0}, Lak/h$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Ljava/security/spec/AlgorithmParameterSpec;)Lnj/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lak/h$d;

    invoke-direct {v0, p0}, Lak/h$d;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnj/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "Cannot process GCMParameterSpec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Loh/B;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lnj/c;->v(Ljava/lang/Object;)Lnj/c;

    move-result-object p0

    sget-object v0, Lak/h;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Lnj/c;->u()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lnj/c;->x()[B

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Construction failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    :try_start_0
    new-instance v0, Lak/h$b;

    invoke-direct {v0, p0}, Lak/h$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h()Z
    .locals 1

    sget-object v0, Lak/h;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i()Z
    .locals 1

    sget-object v0, Lak/h;->b:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lak/h;->a:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(Ljava/security/spec/AlgorithmParameterSpec;)Z
    .locals 1

    sget-object v0, Lak/h;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
