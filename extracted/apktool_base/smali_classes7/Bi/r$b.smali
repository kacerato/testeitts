.class public LBi/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBi/r;->r(Ljava/security/SecureRandom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LBi/r$b;->a:Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, LBi/r$b;->a:Ljava/security/SecureRandom;

    return-object v0
.end method
