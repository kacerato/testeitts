.class public final LLe/e1$m;
.super LLe/e1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/e1$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x51dae9f17ccbb88eL


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, LLe/e1$a;-><init>()V

    iput p1, p0, LLe/e1$m;->f:I

    return-void
.end method


# virtual methods
.method public o()V
    .locals 2

    iget v0, p0, LLe/e1$a;->c:I

    iget v1, p0, LLe/e1$m;->f:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LLe/e1$a;->k()V

    :cond_0
    return-void
.end method
