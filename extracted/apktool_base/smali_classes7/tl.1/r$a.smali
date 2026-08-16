.class public Ltl/r$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/r;
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
    .locals 41

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

    sget-object v2, Lqh/a;->a0:Loh/x;

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.sphincsplus.SignatureSpi$Direct"

    invoke-virtual {v0, v1, v3, v4, v2}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    sget-object v4, Lqh/a;->b0:Loh/x;

    invoke-virtual {v0, v1, v3, v4}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v5, Lqh/a;->c0:Loh/x;

    invoke-virtual {v0, v1, v3, v5}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v6, Lqh/a;->d0:Loh/x;

    invoke-virtual {v0, v1, v3, v6}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v7, Lqh/a;->e0:Loh/x;

    invoke-virtual {v0, v1, v3, v7}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v8, Lqh/a;->f0:Loh/x;

    invoke-virtual {v0, v1, v3, v8}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v9, Lqh/a;->g0:Loh/x;

    invoke-virtual {v0, v1, v3, v9}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v10, Lqh/a;->h0:Loh/x;

    invoke-virtual {v0, v1, v3, v10}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v11, Lqh/a;->i0:Loh/x;

    invoke-virtual {v0, v1, v3, v11}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v12, Lqh/a;->j0:Loh/x;

    invoke-virtual {v0, v1, v3, v12}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v13, Lqh/a;->k0:Loh/x;

    invoke-virtual {v0, v1, v3, v13}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v14, Lqh/a;->l0:Loh/x;

    invoke-virtual {v0, v1, v3, v14}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    sget-object v15, Lqh/a;->m0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v16, v15

    sget-object v15, Lqh/a;->n0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v17, v15

    sget-object v15, Lqh/a;->o0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v18, v15

    sget-object v15, Lqh/a;->p0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v19, v15

    sget-object v15, Lqh/a;->q0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v20, v15

    sget-object v15, Lqh/a;->r0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v21, v15

    sget-object v15, Lqh/a;->s0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v22, v15

    sget-object v15, Lqh/a;->t0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v23, v15

    sget-object v15, Lqh/a;->u0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v24, v15

    sget-object v15, Lqh/a;->v0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v25, v15

    sget-object v15, Lqh/a;->w0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v26, v15

    sget-object v15, Lqh/a;->x0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v27, v15

    sget-object v15, Lqh/a;->y0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v28, v15

    sget-object v15, Lqh/a;->z0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v29, v15

    sget-object v15, Lqh/a;->A0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v30, v15

    sget-object v15, Lqh/a;->B0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v31, v15

    sget-object v15, Lqh/a;->C0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v32, v15

    sget-object v15, Lqh/a;->D0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v33, v15

    sget-object v15, Lqh/a;->E0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v34, v15

    sget-object v15, Lqh/a;->F0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v35, v15

    sget-object v15, Lqh/a;->G0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v36, v15

    sget-object v15, Lqh/a;->H0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v37, v15

    sget-object v15, Lqh/a;->I0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v38, v15

    sget-object v15, Lqh/a;->J0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v39, v15

    sget-object v15, Lqh/a;->K0:Loh/x;

    invoke-virtual {v0, v1, v3, v15}, Lbk/b;->j(LTj/a;Ljava/lang/String;Loh/x;)V

    move-object/from16 v40, v15

    const-string v15, "Alg.Alias.Signature.SPHINCS+"

    invoke-interface {v1, v15, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, LLl/c;

    invoke-direct {v15}, LLl/c;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v4, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v5, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v6, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v7, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v8, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v9, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v10, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v11, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v12, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v13, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v14, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3, v15}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
