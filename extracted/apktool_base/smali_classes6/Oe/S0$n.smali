.class public final LOe/S0$n;
.super LOe/S0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/S0$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:J = -0x51dae9f17ccbb88eL


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, LOe/S0$a;-><init>()V

    iput p1, p0, LOe/S0$n;->e:I

    return-void
.end method


# virtual methods
.method public o()V
    .locals 2

    iget v0, p0, LOe/S0$a;->c:I

    iget v1, p0, LOe/S0$n;->e:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LOe/S0$a;->k()V

    :cond_0
    return-void
.end method
