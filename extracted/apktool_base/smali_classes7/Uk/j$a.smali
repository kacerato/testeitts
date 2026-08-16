.class public LUk/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/j;->f([C)LQk/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Ljavax/crypto/Cipher;

.field public final synthetic c:[C

.field public final synthetic d:LUk/j;


# direct methods
.method public constructor <init>(LUk/j;Lhi/b;Ljavax/crypto/Cipher;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUk/j$a;->d:LUk/j;

    iput-object p2, p0, LUk/j$a;->a:Lhi/b;

    iput-object p3, p0, LUk/j$a;->b:Ljavax/crypto/Cipher;

    iput-object p4, p0, LUk/j$a;->c:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LUk/j$a;->a:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/b;

    iget-object v1, p0, LUk/j$a;->b:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, LJj/b;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    iget-object v0, p0, LUk/j$a;->d:LUk/j;

    iget-object v1, p0, LUk/j$a;->a:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v0, v1}, LUk/j;->c(LUk/j;Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LQk/r;

    iget-object v1, p0, LUk/j$a;->a:Lhi/b;

    iget-object v2, p0, LUk/j$a;->c:[C

    invoke-static {v2}, LUk/j;->d([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0

    :cond_0
    new-instance v0, LQk/r;

    iget-object v1, p0, LUk/j$a;->a:Lhi/b;

    iget-object v2, p0, LUk/j$a;->c:[C

    invoke-static {v2}, LUk/j;->e([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method
