.class public LZi/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZi/a;->get(I)LZi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LZi/a;


# direct methods
.method public constructor <init>(LZi/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZi/a$a;->b:LZi/a;

    iput p2, p0, LZi/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 2

    iget-object v0, p0, LZi/a$a;->b:LZi/a;

    invoke-static {v0}, LZi/a;->b(LZi/a;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, LZi/j;

    if-nez v0, :cond_1

    iget-object v0, p0, LZi/a$a;->b:LZi/a;

    invoke-static {v0}, LZi/a;->b(LZi/a;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, LZi/o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LZi/a$a;->b:LZi/a;

    invoke-static {v0}, LZi/a;->b(LZi/a;)Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, LZi/a$a;->a:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget v0, p0, LZi/a$a;->a:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, LZi/a$a;->b:LZi/a;

    invoke-static {v1}, LZi/a;->b(LZi/a;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LZi/a$a;->b:LZi/a;

    invoke-static {v0}, LZi/a;->a(LZi/a;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LZi/a$a;->a:I

    return v0
.end method
