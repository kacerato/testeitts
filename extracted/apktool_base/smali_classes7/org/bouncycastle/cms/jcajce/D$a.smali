.class public Lorg/bouncycastle/cms/jcajce/D$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;I[B)[B
    .locals 3

    new-instance v0, Lvh/a;

    new-instance v1, Lhi/b;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, p1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-static {p2}, Lorg/bouncycastle/util/p;->k(I)[B

    move-result-object p1

    invoke-direct {v0, v1, p3, p1}, Lvh/a;-><init>(Lhi/b;[B[B)V

    :try_start_0
    const-string p1, "DER"

    invoke-virtual {v0, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create KDF material: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
