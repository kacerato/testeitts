.class public Lorg/bouncycastle/cms/jcajce/W$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/W;->a(Lhi/b;)LQk/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Lorg/bouncycastle/cms/jcajce/W;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/W;Lhi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/W$a;->b:Lorg/bouncycastle/cms/jcajce/W;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/W$a;->a:Lhi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/W$a;->a:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/W$a;->b:Lorg/bouncycastle/cms/jcajce/W;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/W;->b(Lorg/bouncycastle/cms/jcajce/W;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/cms/jcajce/W$b;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/W$a;->b:Lorg/bouncycastle/cms/jcajce/W;

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/W;->b(Lorg/bouncycastle/cms/jcajce/W;)J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/cms/jcajce/W$b;-><init>(Ljava/io/InputStream;J)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method
