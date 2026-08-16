.class public LMl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/Class;

.field public static b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, LMl/f;->a:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LMl/f;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Ljava/lang/Class;
    .locals 1

    sget-object v0, LMl/f;->a:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic b()[Ljava/lang/Object;
    .locals 1

    sget-object v0, LMl/f;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public static c(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    new-instance v0, LMl/f$a;

    invoke-direct {v0, p0}, LMl/f$a;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
