.class public LPk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/openssl/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPk/h;->b([C)Lorg/bouncycastle/openssl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[C

.field public final synthetic b:LPk/h;


# direct methods
.method public constructor <init>(LPk/h;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPk/h$a;->b:LPk/h;

    iput-object p2, p0, LPk/h$a;->a:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/bouncycastle/openssl/c;
    .locals 1

    new-instance v0, LPk/h$a$a;

    invoke-direct {v0, p0, p1}, LPk/h$a$a;-><init>(LPk/h$a;Ljava/lang/String;)V

    return-object v0
.end method
