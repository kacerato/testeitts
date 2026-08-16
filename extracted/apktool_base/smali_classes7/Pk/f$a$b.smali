.class public LPk/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPk/f$a;->a(Lhi/b;)LQk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Ljavax/crypto/Cipher;

.field public final synthetic c:LPk/f$a;


# direct methods
.method public constructor <init>(LPk/f$a;Lhi/b;Ljavax/crypto/Cipher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPk/f$a$b;->c:LPk/f$a;

    iput-object p2, p0, LPk/f$a$b;->a:Lhi/b;

    iput-object p3, p0, LPk/f$a$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LPk/f$a$b;->a:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, LJj/a;

    iget-object v1, p0, LPk/f$a$b;->b:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, LJj/a;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
