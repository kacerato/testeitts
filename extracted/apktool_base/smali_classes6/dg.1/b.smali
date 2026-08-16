.class public final Ldg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldg/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/security/SecureRandom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg/b;

    invoke-direct {v0}, Ldg/b;-><init>()V

    sput-object v0, Ldg/b;->a:Ldg/b;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ldg/b;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/security/SecureRandom;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ldg/b;->b:Ljava/security/SecureRandom;

    return-object v0
.end method
