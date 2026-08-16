.class public abstract Lorg/bouncycastle/cms/D$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/K;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Loh/x;

.field public b:Lorg/bouncycastle/cms/J;

.field public c:Loh/G;


# direct methods
.method public constructor <init>(Loh/x;Lorg/bouncycastle/cms/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/D$b;->a:Loh/x;

    iput-object p2, p0, Lorg/bouncycastle/cms/D$b;->b:Lorg/bouncycastle/cms/J;

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/D$b;->a:Loh/x;

    return-object v0
.end method

.method public d()Loh/G;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/D$b;->c:Loh/G;

    return-object v0
.end method

.method public f(Loh/G;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/D$b;->c:Loh/G;

    return-void
.end method
