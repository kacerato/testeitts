.class public LKj/s$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbk/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTj/a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "KeyFactory.SPHINCSPLUS"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyFactorySpi"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.SPHINCSPLUS"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.KeyFactory.SPHINCS+"

    const-string v3, "SPHINCSPLUS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.KeyPairGenerator.SPHINCS+"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_128s"

    sget-object v4, Lqh/a;->N0:Loh/x;

    const-string v5, "SPHINCS+-SHA2-128S"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_128f"

    sget-object v4, Lqh/a;->M0:Loh/x;

    const-string v5, "SPHINCS+-SHA2-128F"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_192s"

    sget-object v4, Lqh/a;->P0:Loh/x;

    const-string v5, "SPHINCS+-SHA2-192S"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_192f"

    sget-object v4, Lqh/a;->O0:Loh/x;

    const-string v5, "SPHINCS+-SHA2-192F"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_256s"

    sget-object v4, Lqh/a;->R0:Loh/x;

    const-string v5, "SPHINCS+-SHA2-256S"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Sha2_256f"

    sget-object v4, Lqh/a;->Q0:Loh/x;

    const-string v5, "SPHINCS+-SHA2-256F"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_128s"

    sget-object v4, Lqh/a;->T0:Loh/x;

    const-string v5, "SPHINCS+-SHAKE-128S"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_128f"

    sget-object v4, Lqh/a;->S0:Loh/x;

    const-string v5, "SPHINCS+-SHAKE-128F"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_192s"

    sget-object v4, Lqh/a;->V0:Loh/x;

    const-string v5, "SPHINCS+-SHAKE-192S"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_192f"

    sget-object v4, Lqh/a;->U0:Loh/x;

    const-string v5, "SPHINCS+-SHAKE-192F"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_256s"

    sget-object v4, Lqh/a;->X0:Loh/x;

    const-string v5, "SPHINCS+-SHAKE-256S"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyPairGeneratorSpi$Shake_256f"

    sget-object v4, Lqh/a;->W0:Loh/x;

    const-string v5, "SPHINCS+-SHAKE-256F"

    invoke-virtual {v0, v1, v5, v2, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SignatureSpi$Direct"

    sget-object v4, Lqh/a;->a0:Loh/x;

    invoke-virtual {v0, v1, v3, v2, v4}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const/4 v2, 0x1

    :goto_0
    const/16 v4, 0x24

    const-string v5, "Alg.Alias.Signature.OID."

    const-string v6, "Alg.Alias.Signature."

    if-gt v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lqh/a;->a0:Loh/x;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Lqh/a;->N0:Loh/x;

    sget-object v8, Lqh/a;->M0:Loh/x;

    sget-object v9, Lqh/a;->T0:Loh/x;

    sget-object v10, Lqh/a;->S0:Loh/x;

    sget-object v11, Lqh/a;->P0:Loh/x;

    sget-object v12, Lqh/a;->O0:Loh/x;

    sget-object v13, Lqh/a;->V0:Loh/x;

    sget-object v14, Lqh/a;->U0:Loh/x;

    sget-object v15, Lqh/a;->R0:Loh/x;

    sget-object v16, Lqh/a;->Q0:Loh/x;

    sget-object v17, Lqh/a;->X0:Loh/x;

    sget-object v18, Lqh/a;->W0:Loh/x;

    filled-new-array/range {v7 .. v18}, [Loh/x;

    move-result-object v2

    const/4 v4, 0x0

    :goto_1
    const/16 v7, 0xc

    if-eq v4, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "Alg.Alias.Signature.SPHINCS+"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, LLl/c;

    invoke-direct {v2}, LLl/c;-><init>()V

    sget-object v4, Lqh/a;->b0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->c0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->d0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->e0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->f0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->g0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->h0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->i0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->j0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->k0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->l0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->m0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->n0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->o0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->p0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->q0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->r0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->s0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->t0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->u0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->v0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->w0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->x0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->y0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->z0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->A0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->B0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->C0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->D0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->E0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->F0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->G0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->H0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->I0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->J0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->K0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->N0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->M0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->P0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->O0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->R0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->Q0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->T0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->S0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->V0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->U0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->X0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v4, Lqh/a;->W0:Loh/x;

    invoke-virtual {v0, v1, v4, v3, v2}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v2, Lqh/a;->a0:Loh/x;

    invoke-virtual {v0, v1, v2, v3}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    return-void
.end method
