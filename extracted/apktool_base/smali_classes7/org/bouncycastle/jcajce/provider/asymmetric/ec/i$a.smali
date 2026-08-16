.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$a;->b:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXi/c;)[B
    .locals 1

    check-cast p1, LXi/M;

    invoke-virtual {p1}, LXi/M;->e()Ljk/i;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$a;->a:Z

    invoke-virtual {p1, v0}, Ljk/i;->l(Z)[B

    move-result-object p1

    return-object p1
.end method
