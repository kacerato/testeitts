.class public Lorg/bouncycastle/pqc/crypto/lms/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/lms/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LBi/y;

.field public final b:I


# direct methods
.method public constructor <init>(LBi/y;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->b:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    invoke-interface {v1}, LBi/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->b:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->b:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->b:I

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->b:I

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/b$a;->a:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
