.class public Lorg/bouncycastle/cms/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/k;->h(Lorg/bouncycastle/cms/V;LQk/A;LQk/p;)Lorg/bouncycastle/cms/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQk/p;

.field public final synthetic b:Lorg/bouncycastle/cms/k;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/k;LQk/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/k$a;->b:Lorg/bouncycastle/cms/k;

    iput-object p2, p0, Lorg/bouncycastle/cms/k$a;->a:LQk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/p;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object p1, p0, Lorg/bouncycastle/cms/k$a;->a:LQk/p;

    return-object p1
.end method
