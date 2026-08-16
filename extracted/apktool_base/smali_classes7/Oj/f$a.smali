.class public LOj/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOj/f;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LOj/f;


# direct methods
.method public constructor <init>(LOj/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOj/f$a;->b:LOj/f;

    iput-boolean p2, p0, LOj/f$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXi/c;)[B
    .locals 1

    iget-boolean v0, p0, LOj/f$a;->a:Z

    if-eqz v0, :cond_0

    check-cast p1, LXi/O0;

    invoke-virtual {p1}, LXi/O0;->getEncoded()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, LXi/R0;

    invoke-virtual {p1}, LXi/R0;->getEncoded()[B

    move-result-object p1

    :goto_0
    return-object p1
.end method
