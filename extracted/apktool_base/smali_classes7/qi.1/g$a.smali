.class public Lqi/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqi/g;->a(Lhi/b;Lhi/b;[B)LQk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Ljavax/crypto/Cipher;

.field public final synthetic c:Lqi/g;


# direct methods
.method public constructor <init>(Lqi/g;Lhi/b;Ljavax/crypto/Cipher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lqi/g$a;->c:Lqi/g;

    iput-object p2, p0, Lqi/g$a;->a:Lhi/b;

    iput-object p3, p0, Lqi/g$a;->b:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lqi/g$a;->a:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, LJj/a;

    iget-object v1, p0, Lqi/g$a;->b:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, LJj/a;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
