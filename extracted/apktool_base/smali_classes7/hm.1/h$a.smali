.class public Lhm/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhm/h;->get(I)LZi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lhm/h;


# direct methods
.method public constructor <init>(Lhm/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lhm/h$a;->b:Lhm/h;

    iput p2, p0, Lhm/h$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 2

    iget v0, p0, Lhm/h$a;->a:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lhm/h$a;->b:Lhm/h;

    invoke-static {v1}, Lhm/h;->b(Lhm/h;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lhm/h$a;->b:Lhm/h;

    invoke-static {v0}, Lhm/h;->a(Lhm/h;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lhm/h$a;->a:I

    return v0
.end method
