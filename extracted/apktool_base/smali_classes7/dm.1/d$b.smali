.class public Ldm/d$b;
.super Lci/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lci/i;-><init>([B)V

    iput p1, p0, Ldm/d$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(I[BLdm/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ldm/d$b;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lci/i;-><init>([[B)V

    iput p1, p0, Ldm/d$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(I[[BLdm/d$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ldm/d$b;-><init>(I[[B)V

    return-void
.end method
