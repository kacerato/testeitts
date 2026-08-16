.class public Lhm/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/e;


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lhm/h;->a:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lhm/h;->b:Z

    return-void
.end method

.method public static synthetic a(Lhm/h;)Z
    .locals 0

    iget-boolean p0, p0, Lhm/h;->b:Z

    return p0
.end method

.method public static synthetic b(Lhm/h;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lhm/h;->a:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)LZi/d;
    .locals 1

    new-instance v0, Lhm/h$a;

    invoke-direct {v0, p0, p1}, Lhm/h$a;-><init>(Lhm/h;I)V

    return-object v0
.end method
