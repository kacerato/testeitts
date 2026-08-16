.class public LZj/a$b;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZj/a$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LZj/a$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZj/a$b$a;-><init>(LZj/a$a;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
