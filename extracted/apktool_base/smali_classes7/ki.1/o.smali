.class public Lki/o;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static c:Lki/q;


# instance fields
.field public b:Ljk/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lki/q;

    invoke-direct {v0}, Lki/q;-><init>()V

    sput-object v0, Lki/o;->c:Lki/q;

    return-void
.end method

.method public constructor <init>(Ljk/f;)V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lki/o;->b:Ljk/f;

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    sget-object v0, Lki/o;->c:Lki/q;

    iget-object v1, p0, Lki/o;->b:Ljk/f;

    invoke-virtual {v0, v1}, Lki/q;->b(Ljk/f;)I

    move-result v0

    sget-object v1, Lki/o;->c:Lki/q;

    iget-object v2, p0, Lki/o;->b:Ljk/f;

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lki/q;->c(Ljava/math/BigInteger;I)[B

    move-result-object v0

    new-instance v1, Loh/C0;

    invoke-direct {v1, v0}, Loh/C0;-><init>([B)V

    return-object v1
.end method

.method public u()Ljk/f;
    .locals 1

    iget-object v0, p0, Lki/o;->b:Ljk/f;

    return-object v0
.end method
