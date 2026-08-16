.class public Lge/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/s0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/m0;


# direct methods
.method public constructor <init>(Lge/m0;)V
    .locals 0

    iput-object p1, p0, Lge/m0$a;->a:Lge/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(SLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(STV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/m0$a;->a:Lge/m0;

    invoke-virtual {v0, p1, p2}, Lge/m0;->Aa(SLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
