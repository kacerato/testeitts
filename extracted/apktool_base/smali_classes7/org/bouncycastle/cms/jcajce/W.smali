.class public Lorg/bouncycastle/cms/jcajce/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/W$b;
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/cms/jcajce/W;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/cms/jcajce/W;->a:J

    return-void
.end method

.method public static synthetic b(Lorg/bouncycastle/cms/jcajce/W;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/W;->a:J

    return-wide v0
.end method


# virtual methods
.method public a(Lhi/b;)LQk/v;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/W$a;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/jcajce/W$a;-><init>(Lorg/bouncycastle/cms/jcajce/W;Lhi/b;)V

    return-object v0
.end method
