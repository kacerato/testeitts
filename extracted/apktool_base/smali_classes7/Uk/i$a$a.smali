.class public LUk/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/i$a;->a(Lhi/b;)LQk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LUk/i$a;


# direct methods
.method public constructor <init>(LUk/i$a;)V
    .locals 0

    iput-object p1, p0, LUk/i$a$a;->a:LUk/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LUk/i$a$a;->a:LUk/i$a;

    invoke-static {v0}, LUk/i$a;->b(LUk/i$a;)Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, LJj/a;

    iget-object v1, p0, LUk/i$a$a;->a:LUk/i$a;

    invoke-static {v1}, LUk/i$a;->c(LUk/i$a;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LJj/a;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
