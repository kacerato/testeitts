.class public Lorg/bouncycastle/cms/E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/E$a;,
        Lorg/bouncycastle/cms/E$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/bouncycastle/cms/N0;)Lorg/bouncycastle/cms/N0;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/E$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/E$a;-><init>(Lorg/bouncycastle/cms/N0;)V

    return-object v0
.end method

.method public static b(Lorg/bouncycastle/cms/N0;Lhi/b;)Lorg/bouncycastle/cms/N0;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/E$b;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/E$b;-><init>(Lorg/bouncycastle/cms/N0;Lhi/b;)V

    return-object v0
.end method
