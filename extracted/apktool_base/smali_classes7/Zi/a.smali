.class public LZi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/e;


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZi/a;->a:Ljava/security/SecureRandom;

    iput-boolean p2, p0, LZi/a;->b:Z

    return-void
.end method

.method public static synthetic a(LZi/a;)Z
    .locals 0

    iget-boolean p0, p0, LZi/a;->b:Z

    return p0
.end method

.method public static synthetic b(LZi/a;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, LZi/a;->a:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)LZi/d;
    .locals 1

    new-instance v0, LZi/a$a;

    invoke-direct {v0, p0, p1}, LZi/a$a;-><init>(LZi/a;I)V

    return-object v0
.end method
