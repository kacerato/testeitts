.class public LOk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/openssl/d;


# instance fields
.field public final a:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOk/a;->a:[C

    return-void
.end method

.method public static synthetic a(LOk/a;)[C
    .locals 0

    iget-object p0, p0, LOk/a;->a:[C

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/bouncycastle/openssl/c;
    .locals 1

    new-instance v0, LOk/a$a;

    invoke-direct {v0, p0, p1}, LOk/a$a;-><init>(LOk/a;Ljava/lang/String;)V

    return-object v0
.end method
